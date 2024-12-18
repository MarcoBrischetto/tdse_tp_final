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
 * @file   : task_set_up.c
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
#include "task_set_up_attribute.h"
#include "task_set_up.h"
#include "task_set_up_interface.h"
#include "task_normal_attribute.h"
#include "task_normal_interface.h"
#include "task_temperature.h"

#include "display.h"
#include "configuracion.h"

/*External Libraries*/
#include <stdlib.h>

/********************** macros and definitions *******************************/
#define G_TASK_MEN_CNT_INI			0ul
#define G_TASK_MEN_TICK_CNT_INI		0ul

#define DEL_MEN_XX_MIN				0ul
#define DEL_MEN_XX_MED				50ul
#define DEL_MEN_XX_MAX				500ul

/********************** internal data declaration ****************************/
task_set_up_dta_t task_set_up_dta =
	{DEL_MEN_XX_MIN, ST_SYS_02_MAIN, EV_SYS_02_BTN_CONF_IDLE, false, 1, 1, 1};

#define SET_UP_DTA_QTY	(sizeof(task_set_up_dta)/sizeof(task_set_up_dta_t))

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
const char *p_task_set_up 		= "Task Menu (Interactive Menu)";
const char *p_task_set_up_ 		= "Non-Blocking & Update By Time Code";

/********************** external data declaration ****************************/
uint32_t g_task_set_up_cnt;
volatile uint32_t g_task_set_up_tick_cnt;

#define CNT_OPT	2
#define CNT_OPT_PUERTA	7
#define CNT_OPT_PERMANENCIA 9

char set_up_fijo[16] = "Enter/Next/Esc";
char set_up1[CNT_OPT][16] = {">Puerta",">Permanencia"};
char set_up2[CNT_OPT_PUERTA][16] = {">5",">6",">7",">8",">9",">10",">20"};
char set_up3[CNT_OPT_PERMANENCIA][16]={">10",">20",">30",">40",">50",">60",">70",">80",">90"};

char string_tiempos_puerta[CNT_OPT_PUERTA][16]={"5","6","7","8","9","10","20"};
char string_tiempos_permanencia[CNT_OPT_PERMANENCIA][16]={"10","20","30","40","50","60","70","80","90"};

char *linea1;
char *linea2;
char aux1[16];
char aux2[16];

/********************** external functions definition ************************/
void task_set_up_init(void *parameters)
{
	task_set_up_dta_t *p_task_set_up_dta;
	task_set_up_st_t	state;
	task_set_up_ev_t	event;
	bool b_event;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_set_up_init), p_task_set_up);
	LOGGER_LOG("  %s is a %s\r\n", GET_NAME(task_set_up), p_task_set_up_);

	g_task_set_up_cnt = G_TASK_MEN_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_set_up_cnt), g_task_set_up_cnt);

	init_queue_event_task_set_up();

	/* Update Task Actuator Configuration & Data Pointer */
	p_task_set_up_dta = &task_set_up_dta;

	/* Print out: Task execution FSM */
	state = p_task_set_up_dta->state;
	LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);

	event = p_task_set_up_dta->event;
	LOGGER_LOG("   %s = %lu", GET_NAME(event), (uint32_t)event);

	b_event = p_task_set_up_dta->flag;
	LOGGER_LOG("   %s = %s\r\n", GET_NAME(b_event), (b_event ? "true" : "false"));

    displayInit( DISPLAY_CONNECTION_GPIO_4BITS );

    sprintf(aux1,"Config: %ds %ds", configuracion.tiempo_puerta, configuracion.tiempo_permanencia);
    sprintf(aux2,"T1:%dC  T2:%dC", (int)temperatura.ambiente, (int)temperatura.micro);

    linea1=aux1;
    linea2=aux2;

    displayCharPositionWrite(0, 0);
	displayStringWrite("                ");
	displayCharPositionWrite(0, 1);
	displayStringWrite("                ");

	displayCharPositionWrite(0, 0);
	displayStringWrite(linea1);
	displayCharPositionWrite(0, 1);
	displayStringWrite(linea2);

	HAL_GPIO_WritePin(LED_A_PORT, LED_A_PIN, LED_A_ON);

	g_task_set_up_tick_cnt = G_TASK_MEN_TICK_CNT_INI;
}

void task_set_up_update(void *parameters)
{
	task_set_up_dta_t *p_task_set_up_dta;
	bool b_time_update_required = false;

	/* Update Task Menu Counter */
	g_task_set_up_cnt++;

	/* Protect shared resource (g_task_set_up_tick) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_MEN_TICK_CNT_INI < g_task_set_up_tick_cnt)
    {
    	g_task_set_up_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/

    while (b_time_update_required)
    {
		/* Protect shared resource (g_task_set_up_tick) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_MEN_TICK_CNT_INI < g_task_set_up_tick_cnt)
		{
			g_task_set_up_tick_cnt--;
			b_time_update_required = true;
		}
		else
		{
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	/* Update Task Menu Data Pointer */
		p_task_set_up_dta = &task_set_up_dta;

    	if (DEL_MEN_XX_MIN < p_task_set_up_dta->tick)
		{
			p_task_set_up_dta->tick--;
		}
		else
		{
			HAL_GPIO_TogglePin(LED_A_PORT, LED_A_PIN);

			p_task_set_up_dta->tick = DEL_MEN_XX_MAX;

			if(true == any_event_task_set_up()){
				p_task_set_up_dta->flag = true;
				p_task_set_up_dta->event = get_event_task_set_up();

				switch (p_task_set_up_dta->state)
				{
					case ST_SYS_02_UPDATE_TEMPERATURE:

						if ((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_CONF_ACTIVE == p_task_set_up_dta->event))
						{
							linea1 = set_up_fijo;
							linea2 = set_up1[p_task_set_up_dta->option - 1];
							p_task_set_up_dta->flag = false;
							p_task_set_up_dta->state = ST_SYS_02_MENU;
						}
						else{
							sprintf(aux2,"T1:%dC  T2:%dC", (int)temperatura.ambiente, (int)temperatura.micro);
							p_task_set_up_dta->flag = false;
							p_task_set_up_dta->state = ST_SYS_02_MAIN;
						}
						break;

					case ST_SYS_02_MAIN:
						if ((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_CONF_ACTIVE == p_task_set_up_dta->event))
						{
							linea1 = set_up_fijo;
							linea2 = set_up1[p_task_set_up_dta->option - 1];
							p_task_set_up_dta->flag = false;
							p_task_set_up_dta->state = ST_SYS_02_MENU;
						}
						else if((true == p_task_set_up_dta->flag) && (EV_SET_UP_02_NUEVA_TEMPERATURA == p_task_set_up_dta->event)){
							p_task_set_up_dta->flag = false;
							p_task_set_up_dta->state = ST_SYS_02_UPDATE_TEMPERATURE;
						}


						break;

					case ST_SYS_02_MENU:
						if ((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_ENT_ACTIVE == p_task_set_up_dta->event))
						{
							p_task_set_up_dta->flag = false;
							if(p_task_set_up_dta->option == 1){
								p_task_set_up_dta->state = ST_SYS_02_PUERTA;
								linea2 = set_up2[p_task_set_up_dta->opt_tiempo_puerta - 1];
							}
							else if(p_task_set_up_dta->option == 2){
								p_task_set_up_dta->state = ST_SYS_02_PERMANENCIA;
								linea2 = set_up3[p_task_set_up_dta->opt_tiempo_permanencia - 1];
							}

						}
						else if ((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_ESC_ACTIVE == p_task_set_up_dta->event))
						{
							p_task_set_up_dta->flag = false;

							linea1 = aux1;
							linea2 = aux2;

							put_event_task_normal(EV_SYS_01_CONFIG_FINALIZADA);
							p_task_set_up_dta->state = ST_SYS_02_MAIN;

						}
						else if((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_NXT_ACTIVE == p_task_set_up_dta->event)){
							p_task_set_up_dta->option = (p_task_set_up_dta->option%CNT_OPT) + 1;
							p_task_set_up_dta->flag = false;
							linea2 = set_up1[p_task_set_up_dta->option - 1];
						}

						break;

					case ST_SYS_02_PUERTA:

						if((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_ENT_ACTIVE == p_task_set_up_dta->event)){
							//Agregar guardado
							configuracion.tiempo_puerta = atoi(string_tiempos_puerta[p_task_set_up_dta->opt_tiempo_puerta-1]);
							sprintf(aux1,"Config: %ds %ds",configuracion.tiempo_puerta, configuracion.tiempo_permanencia);
						}
						else if((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_NXT_ACTIVE == p_task_set_up_dta->event)){
							p_task_set_up_dta->opt_tiempo_puerta = (p_task_set_up_dta->opt_tiempo_puerta%CNT_OPT_PUERTA) + 1;
							p_task_set_up_dta->flag = false;
							linea2 = set_up2[p_task_set_up_dta->opt_tiempo_puerta - 1];
						}
						else if ((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_ESC_ACTIVE == p_task_set_up_dta->event))
						{
							p_task_set_up_dta->flag = false;
							p_task_set_up_dta->state = ST_SYS_02_MENU;
							linea1 = set_up_fijo;
							linea2 = set_up1[p_task_set_up_dta->option - 1];
						}

						break;

					case ST_SYS_02_PERMANENCIA:

						if((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_ENT_ACTIVE == p_task_set_up_dta->event)){
							configuracion.tiempo_permanencia = atoi(string_tiempos_permanencia[p_task_set_up_dta->opt_tiempo_permanencia-1]);
							sprintf(aux1,"Config: %ds %ds",configuracion.tiempo_puerta, configuracion.tiempo_permanencia);
						}
						else if((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_NXT_ACTIVE == p_task_set_up_dta->event)){
							p_task_set_up_dta->opt_tiempo_permanencia = (p_task_set_up_dta->opt_tiempo_permanencia%CNT_OPT_PERMANENCIA) + 1;
							p_task_set_up_dta->flag = false;
							linea2 = set_up3[p_task_set_up_dta->opt_tiempo_permanencia - 1];
						}
						else if ((true == p_task_set_up_dta->flag) && (EV_SYS_02_BTN_ESC_ACTIVE == p_task_set_up_dta->event))
						{
							p_task_set_up_dta->flag = false;
							p_task_set_up_dta->state = ST_SYS_02_MENU;
							linea1 = set_up_fijo;
							linea2 = set_up1[p_task_set_up_dta->option - 1];

						}

						break;

					default:

						p_task_set_up_dta->tick  = DEL_MEN_XX_MIN;
						p_task_set_up_dta->state = ST_SYS_02_MAIN;
						p_task_set_up_dta->event = EV_SYS_02_BTN_CONF_IDLE;
						p_task_set_up_dta->flag  = false;

						break;
				}

				displayCharPositionWrite(0, 0);
				displayStringWrite("                ");
				displayCharPositionWrite(0, 1);
				displayStringWrite("                ");

				displayCharPositionWrite(0, 0);
				displayStringWrite(linea1);
				displayCharPositionWrite(0, 1);
				displayStringWrite(linea2);
			}
		}
	}
}




/********************** end of file ******************************************/
