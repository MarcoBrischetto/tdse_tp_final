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
 * @file   : task_temperature.c
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
#include "task_adc_attribute.h"
#include "task_temperature.h"
#include "task_set_up_attribute.h"
#include "task_set_up_interface.h"

/********************** macros and definitions *******************************/
#define G_TASK_SYS_CNT_INI			0ul
#define G_TASK_SYS_TICK_CNT_INI		0ul

#define DEL_SYS_XX_MIN				0ul
#define DEL_SYS_XX_MED				50ul
#define DEL_SYS_XX_MAX				500ul

#define DEL_SYS_03_ESPERA_CONVERSION 20000ul

/********************** internal data declaration ****************************/
task_temperature_dta_t task_temperature_dta =
	{DEL_SYS_XX_MIN, ST_SYS_03_INICIAR_MEDICION, EV_SYS_XX_IDLE, false};

#define temperature_DTA_QTY	(sizeof(task_temperature_dta)/sizeof(task_temperature_dta_t))

temperatura_t temperatura = {0, 0};
bool flag_conversion1 = false;
bool flag_conversion2 = false;

volatile uint16_t sample1 = 0;
volatile uint16_t sample2 = 0;

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
const char *p_task_temperature 		= "Task temperature (temperature Statechart)";
const char *p_task_temperature_ 		= "Non-Blocking & Update By Time Code";

/********************** external data declaration ****************************/
uint32_t g_task_temperature_cnt;
volatile uint32_t g_task_temperature_tick_cnt;
extern ADC_HandleTypeDef hadc1;
extern ADC_HandleTypeDef hadc2;


/********************** external functions definition ************************/
void task_temperature_init(void *parameters)
{
	task_temperature_dta_t 	*p_task_temperature_dta;
	task_temperature_st_t	state;
	task_temperature_ev_t	event;
	bool b_event;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_temperature_init), p_task_temperature);
	LOGGER_LOG("  %s is a %s\r\n", GET_NAME(task_temperature), p_task_temperature_);

	g_task_temperature_cnt = G_TASK_SYS_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_temperature_cnt), g_task_temperature_cnt);

	/* Update Task Actuator Configuration & Data Pointer */
	p_task_temperature_dta = &task_temperature_dta;

	/* Print out: Task execution FSM */
	state = p_task_temperature_dta->state;
	LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);

	event = p_task_temperature_dta->event;
	LOGGER_LOG("   %s = %lu", GET_NAME(event), (uint32_t)event);

	b_event = p_task_temperature_dta->flag;
	LOGGER_LOG("   %s = %s\r\n", GET_NAME(b_event), (b_event ? "true" : "false"));

	g_task_temperature_tick_cnt = G_TASK_SYS_TICK_CNT_INI;

   //Calibro los adc

	HAL_ADCEx_Calibration_Start(&hadc1);
	HAL_ADCEx_Calibration_Start(&hadc2);

}

void task_temperature_update(void *parameters)
{
	task_temperature_dta_t *p_task_temperature_dta;
	bool b_time_update_required = false;
	int temp_aux = 0;

	/* Update Task temperature Counter */
	g_task_temperature_cnt++;

	/* Protect shared resource (g_task_temperature_tick) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_SYS_TICK_CNT_INI < g_task_temperature_tick_cnt)
    {
    	g_task_temperature_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/

    while (b_time_update_required)
    {
		/* Protect shared resource (g_task_temperature_tick) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_SYS_TICK_CNT_INI < g_task_temperature_tick_cnt)
		{
			g_task_temperature_tick_cnt--;
			b_time_update_required = true;
		}
		else
		{
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	/* Update Task temperature Data Pointer */
		p_task_temperature_dta = &task_temperature_dta;

		switch (p_task_temperature_dta->state)
		{
			case ST_SYS_03_INICIAR_MEDICION:

				HAL_ADC_Start_IT(&hadc1);
				HAL_ADC_Start_IT(&hadc2);
				p_task_temperature_dta->state = ST_SYS_03_ESPERAR_MEDICION;
				break;

			case ST_SYS_03_ESPERAR_MEDICION:

				if(flag_conversion1 && flag_conversion2){

					flag_conversion1 = false;
					temperatura.micro = 25 + (V25 - (ADC_REF/ADC_RESOLUTION)*(float)sample1)/(PENDIENTE);
					temp_aux = (int)temperatura.micro;
					//LOGGER_LOG("Grados micro = %d °C\n", temp_aux);

					flag_conversion2 = false;
					temperatura.ambiente = (100.0*ADC_REF/ADC_RESOLUTION)*(float)sample2;
					temp_aux = (int)temperatura.ambiente;
					//LOGGER_LOG("Grados ambiente = %d °C\n", temp_aux);

					put_event_task_set_up(EV_SET_UP_02_NUEVA_TEMPERATURA);

					p_task_temperature_dta->tick = DEL_SYS_03_ESPERA_CONVERSION;
					p_task_temperature_dta->state = ST_SYS_03_STANDBY;
				}

				break;

			case ST_SYS_03_STANDBY:

				if(p_task_temperature_dta->tick == DEL_SYS_XX_MIN){
					p_task_temperature_dta->state = ST_SYS_03_INICIAR_MEDICION;
				}

				p_task_temperature_dta->tick--;

				break;

			default:

				break;
		}

	}
}

/*Callback ADC*/
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc) {

	if(hadc->Instance == hadc2.Instance){
		sample2 = HAL_ADC_GetValue(hadc);
		flag_conversion2 = true;
	}
	if(hadc->Instance == hadc1.Instance){
		sample1 = HAL_ADC_GetValue(hadc);
		flag_conversion1 = true;
	}
}
/********************** end of file ******************************************/
