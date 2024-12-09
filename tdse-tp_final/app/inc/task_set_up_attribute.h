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
 * @file   : task_set_up_attribute.h
 * @date   : Set 26, 2023
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 * @version	v1.0.0
 */

#ifndef TASK_INC_TASK_SET_UP_ATTRIBUTE_H_
#define TASK_INC_TASK_SET_UP_ATTRIBUTE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/********************** typedef **********************************************/
/* Menu Statechart - State Transition Table */
/* 	------------------------+-----------------------+-----------------------+-----------------------+------------------------
 * 	| Current               | Event                 |                       | Next                  |                       |
 * 	| State                 | (Parameters)          | [Guard]               | State                 | Actions               |
 * 	|=======================+=======================+=======================+=======================+=======================|
 * 	| ST_MEN_XX_IDLE        | EV_MEN_MEN_ACTIVE     |                       | ST_MEN_XX_ACTIVE      |                       |
 * 	|                       |                       |                       |                       |                       |
 * 	|-----------------------+-----------------------+-----------------------+-----------------------+-----------------------|
 * 	| ST_MEN_XX_ACTIVE      | EV_MEN_MEN_IDLE       |                       | ST_MEN_XX_IDLE        |                       |
 * 	|                       |                       |                       |                       |                       |
 * 	------------------------+-----------------------+-----------------------+-----------------------+------------------------
 */

/* Events to excite Task Menu */
typedef enum task_set_up_ev {EV_SYS_02_BTN_CONF_IDLE,
							EV_SYS_02_BTN_CONF_ACTIVE,
							EV_SYS_02_BTN_ENT_IDLE,
						   EV_SYS_02_BTN_ENT_ACTIVE,
						   EV_SYS_02_BTN_NXT_IDLE,
						   EV_SYS_02_BTN_NXT_ACTIVE,
						   EV_SYS_02_BTN_ESC_IDLE,
						   EV_SYS_02_BTN_ESC_ACTIVE,
						   EV_SET_UP_02_NUEVA_TEMPERATURA
} task_set_up_ev_t;

/* State of Task Menu */
typedef enum task_set_up_st {ST_MEN_XX_IDLE,
						   ST_MEN_XX_ACTIVE,
						   ST_SET_UP_02_UPDATE_TEMPERATURE,
						   ST_SET_UP_02_MAIN,
						   ST_SET_UP_02_MENU,
						   ST_SET_UP_02_PUERTA,
						   ST_SET_UP_02_PERMANENCIA,
							} task_set_up_st_t;

typedef struct
{
	uint32_t tick;
	task_set_up_st_t state;
	task_set_up_ev_t event;
	bool flag;
	uint8_t	option;
	uint8_t opt_tiempo_puerta;
	uint8_t opt_tiempo_permanencia;
} task_set_up_dta_t;

/********************** external data declaration ****************************/
extern task_set_up_dta_t task_set_up_dta;

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* TASK_INC_TASK_SET_UP_ATTRIBUTE_H_ */

/********************** end of file ******************************************/
