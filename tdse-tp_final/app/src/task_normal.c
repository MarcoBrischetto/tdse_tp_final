/*
 * Copyright (c) 2023 Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 *
 * @file   : task_normal.c
 * @date   : Set 26, 2023
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 * @version	v1.0.0
 */

/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "app.h"
#include "task_normal_attribute.h"
#include "task_normal_interface.h"
#include "task_actuator_attribute.h"
#include "task_actuator_interface.h"
#include "task_set_up_attribute.h"
#include "task_set_up_interface.h"
#include "configuracion.h"

/********************** macros and definitions *******************************/
#define G_TASK_SYS_CNT_INI			0ul
#define G_TASK_SYS_TICK_CNT_INI		0ul

#define DEL_SYS_XX_MIN				0ul
#define DEL_SYS_XX_MED				50ul
#define DEL_SYS_XX_MAX				500ul

//#define DEL_SYS_01_ESPERA			5000ul
//#define DEL_SYS_01_PERMANENCIA		10000ul

/********************** internal data declaration ****************************/
task_normal_dta_t task_normal_dta =
	{DEL_SYS_XX_MIN, ST_SYS_01_ESPERAR_INGRESO, EV_SYS_XX_IDLE, false};

#define normal_DTA_QTY	(sizeof(task_normal_dta)/sizeof(task_normal_dta_t))

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
const char *p_task_normal 		= "Task normal (normal Statechart)";
const char *p_task_normal_ 		= "Non-Blocking & Update By Time Code";

/********************** external data declaration ****************************/
uint32_t g_task_normal_cnt;
volatile uint32_t g_task_normal_tick_cnt;

/********************** external functions definition ************************/
void task_normal_init(void *parameters)
{
	task_normal_dta_t 	*p_task_normal_dta;
	task_normal_st_t	state;
	task_normal_ev_t	event;
	bool b_event;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_normal_init), p_task_normal);
	LOGGER_LOG("  %s is a %s\r\n", GET_NAME(task_normal), p_task_normal_);

	g_task_normal_cnt = G_TASK_SYS_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_normal_cnt), g_task_normal_cnt);

	init_queue_event_task_normal();

	/* Update Task Actuator Configuration & Data Pointer */
	p_task_normal_dta = &task_normal_dta;

	/* Print out: Task execution FSM */
	state = p_task_normal_dta->state;
	LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);

	event = p_task_normal_dta->event;
	LOGGER_LOG("   %s = %lu", GET_NAME(event), (uint32_t)event);

	b_event = p_task_normal_dta->flag;
	LOGGER_LOG("   %s = %s\r\n", GET_NAME(b_event), (b_event ? "true" : "false"));

	g_task_normal_tick_cnt = G_TASK_SYS_TICK_CNT_INI;
}

void task_normal_update(void *parameters)
{
	task_normal_dta_t *p_task_normal_dta;
	bool b_time_update_required = false;

	//tiempos de espera conversion de unidades
	uint32_t del_tiempo_permanencia = configuracion.tiempo_permanencia*MILISEGUNDOS;
	uint32_t del_tiempo_puerta = configuracion.tiempo_puerta*MILISEGUNDOS;

	/* Update Task normal Counter */
	g_task_normal_cnt++;

	/* Protect shared resource (g_task_normal_tick) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_SYS_TICK_CNT_INI < g_task_normal_tick_cnt)
    {
    	g_task_normal_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/

    while (b_time_update_required)
    {
		/* Protect shared resource (g_task_normal_tick) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_SYS_TICK_CNT_INI < g_task_normal_tick_cnt)
		{
			g_task_normal_tick_cnt--;
			b_time_update_required = true;
		}
		else
		{
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	/* Update Task normal Data Pointer */
		p_task_normal_dta = &task_normal_dta;

		if (true == any_event_task_normal())
		{
			p_task_normal_dta->flag = true;
			p_task_normal_dta->event = get_event_task_normal();
		}

		switch (p_task_normal_dta->state)
		{

		case ST_SYS_01_DESACTIVADO:
			if((true == p_task_normal_dta->flag) && (EV_SYS_01_CONFIG_FINALIZADA ==  p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				p_task_normal_dta->state = ST_SYS_01_ESPERAR_INGRESO;
			}
			break;

		case ST_SYS_01_ESPERAR_INGRESO:

			if((true == p_task_normal_dta->flag) && (EV_SYS_01_BTN_INGRESO_DOWN ==  p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_BLINK, ID_MOTOR_INGRESO_ABRIR);
				p_task_normal_dta->state = ST_SYS_01_ABRIENDO_INGRESO;
			}
			else if((true == p_task_normal_dta->flag) && (EV_SYS_01_BTN_CONFIG_DOWN ==  p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				put_event_task_set_up(EV_SYS_02_BTN_CONF_ACTIVE); //Aviso a set up que entre en modo configuracion
				p_task_normal_dta->state = ST_SYS_01_DESACTIVADO;
			}

			break;


		case ST_SYS_01_ABRIENDO_INGRESO:
			if((true == p_task_normal_dta->flag) && (EV_SYS_01_PUERTA_INGRESO_ABIERTA ==  p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;

				p_task_normal_dta->tick = del_tiempo_puerta;
				put_event_task_actuator(EV_LED_XX_OFF, ID_MOTOR_INGRESO_ABRIR);
				put_event_task_actuator(EV_LED_XX_ON, ID_SEMAFORO_INGRESO);

				p_task_normal_dta->state = ST_SYS_01_ESPERANDO_INGRESO;

			}
			break;

		case ST_SYS_01_ESPERANDO_INGRESO:

			if(p_task_normal_dta->tick == DEL_SYS_XX_MIN)
			{
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_BLINK, ID_MOTOR_INGRESO_CERRAR);
				put_event_task_actuator(EV_LED_XX_OFF, ID_SEMAFORO_INGRESO);

				p_task_normal_dta->state = ST_SYS_01_CERRANDO_INGRESO_TIEMPO;

			}
			else if((true == p_task_normal_dta->flag) && (EV_SYS_01_BARRERA_ACTIVA == p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_BLINK, ID_MOTOR_INGRESO_CERRAR);
				put_event_task_actuator(EV_LED_XX_OFF, ID_SEMAFORO_INGRESO);

				p_task_normal_dta->state = ST_SYS_01_CERRANDO_INGRESO_PERSONA;
			}

			if(p_task_normal_dta->tick > DEL_SYS_XX_MIN) p_task_normal_dta->tick--;

			break;

		case ST_SYS_01_CERRANDO_INGRESO_TIEMPO:

			if((true == p_task_normal_dta->flag) && (EV_SYS_01_PUERTA_INGRESO_CERRADA == p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_OFF, ID_MOTOR_INGRESO_CERRAR);
				p_task_normal_dta->state = ST_SYS_01_ESPERAR_INGRESO;
			}


			break;

		case ST_SYS_01_CERRANDO_INGRESO_PERSONA:

			if((true == p_task_normal_dta->flag) && (EV_SYS_01_PUERTA_INGRESO_CERRADA == p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				p_task_normal_dta->tick = del_tiempo_permanencia;
				put_event_task_actuator(EV_LED_XX_OFF, ID_MOTOR_INGRESO_CERRAR);
				p_task_normal_dta->state = ST_SYS_01_PERSONA_ADENTRO;
			}

			break;

		case ST_SYS_01_PERSONA_ADENTRO:

			if((true == p_task_normal_dta->flag) && (EV_SYS_01_BTN_EGRESO_DOWN == p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_BLINK, ID_MOTOR_EGRESO_ABRIR);
				p_task_normal_dta->state = ST_SYS_01_ABRIENDO_EGRESO;

			}
			else if(p_task_normal_dta->tick == DEL_SYS_XX_MIN){
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_BLINK, ID_BUZZER);
				p_task_normal_dta->state = ST_SYS_01_TIEMPO_EXCEDIDO;
			}

			if( p_task_normal_dta->tick > DEL_SYS_XX_MIN) p_task_normal_dta->tick--;

			break;

		case ST_SYS_01_TIEMPO_EXCEDIDO:
			if((true == p_task_normal_dta->flag) && (EV_SYS_01_BTN_EGRESO_DOWN == p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_BLINK, ID_MOTOR_EGRESO_ABRIR);
				p_task_normal_dta->state = ST_SYS_01_ABRIENDO_EGRESO;

			}
			break;

		case ST_SYS_01_ABRIENDO_EGRESO:
			if((true == p_task_normal_dta->flag) && (EV_SYS_01_PUERTA_EGRESO_ABIERTA == p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				p_task_normal_dta->tick = del_tiempo_puerta;
				put_event_task_actuator(EV_LED_XX_ON, ID_SEMAFORO_EGRESO);
				put_event_task_actuator(EV_LED_XX_OFF, ID_MOTOR_EGRESO_ABRIR);
				p_task_normal_dta->state = ST_SYS_01_ESPERANDO_EGRESO;

			}

			break;

		case ST_SYS_01_ESPERANDO_EGRESO:

			if(p_task_normal_dta->tick == DEL_SYS_XX_MIN)
			{
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_OFF, ID_SEMAFORO_EGRESO);
				put_event_task_actuator(EV_LED_XX_BLINK, ID_MOTOR_EGRESO_CERRAR);
				p_task_normal_dta->state = ST_SYS_01_CERRANDO_EGRESO_TIEMPO;
			}
			else if((true == p_task_normal_dta->flag) &&(EV_SYS_01_BARRERA_INACTIVA == p_task_normal_dta->event)){
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_OFF, ID_SEMAFORO_EGRESO);
				put_event_task_actuator(EV_LED_XX_BLINK, ID_MOTOR_EGRESO_CERRAR);
				p_task_normal_dta->state = ST_SYS_01_CERRANDO_EGRESO_PERSONA;
			}

			if( p_task_normal_dta->tick > DEL_SYS_XX_MIN) p_task_normal_dta->tick--;

			break;

		case ST_SYS_01_CERRANDO_EGRESO_TIEMPO:
			if((true == p_task_normal_dta->flag) &&(EV_SYS_01_PUERTA_EGRESO_CERRADA == p_task_normal_dta->event)){
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_OFF, ID_SEMAFORO_EGRESO);
				put_event_task_actuator(EV_LED_XX_OFF, ID_MOTOR_EGRESO_CERRAR);
				p_task_normal_dta->state = ST_SYS_01_PERSONA_ADENTRO;
			}
			break;

		case ST_SYS_01_CERRANDO_EGRESO_PERSONA:
			if((true == p_task_normal_dta->flag) && (EV_SYS_01_PUERTA_EGRESO_CERRADA == p_task_normal_dta->event))
			{
				p_task_normal_dta->flag = false;
				put_event_task_actuator(EV_LED_XX_OFF, ID_MOTOR_EGRESO_CERRAR);
				put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER);
				p_task_normal_dta->state = ST_SYS_01_ESPERAR_INGRESO;

			}

			break;

			default:

				break;
		}
	}
}

/********************** end of file ******************************************/
