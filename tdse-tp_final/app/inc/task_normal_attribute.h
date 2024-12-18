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
 * @file   : task_normal_attribute.h
 * @date   : Set 26, 2023
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 * @version	v1.0.0
 */

#ifndef TASK_INC_TASK_normal_ATTRIBUTE_H_
#define TASK_INC_TASK_normal_ATTRIBUTE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/********************** typedef **********************************************/
/* normal Statechart - State Transition Table */
/* 	------------------------+-----------------------+-----------------------+-----------------------+------------------------
 * 	| Current               | Event                 |                       | Next                  |                       |
 * 	| State                 | (Parameters)          | [Guard]               | State                 | Actions               |
 * 	|=======================+=======================+=======================+=======================+=======================|
 * 	| ST_SYS_XX_IDLE        | EV_SYS_XX_ACTIVE      |                       | ST_SYS_XX_ACTIVE      | put_event_t.._actuator|
 * 	|                       |                       |                       |                       | (event, identifier)   |
 * 	|-----------------------+-----------------------+-----------------------+-----------------------+-----------------------|
 * 	| ST_SYS_XX_ACTIVE      | EV_SYS_XX_IDLE        |                       | ST_SYS_XX_IDLE        | put_event_t.._actuator|
 * 	|                       |                       |                       |                       | (event, identifier)   |
 * 	------------------------+-----------------------+-----------------------+-----------------------+------------------------
 */

/* Events to excite Task normal */
typedef enum task_normal_ev {
							EV_SYS_XX_IDLE,
							EV_SYS_01_CONFIG_FINALIZADA,
							EV_SYS_01_BTN_CONFIG_DOWN,
							EV_SYS_01_BTN_INGRESO_DOWN,
							EV_SYS_01_BTN_EGRESO_DOWN,
							EV_SYS_01_PUERTA_EGRESO_ABIERTA,
							EV_SYS_01_PUERTA_EGRESO_CERRADA,
							EV_SYS_01_PUERTA_INGRESO_ABIERTA,
							EV_SYS_01_PUERTA_INGRESO_CERRADA,
							EV_SYS_01_BARRERA_ACTIVA,
							EV_SYS_01_BARRERA_INACTIVA
} task_normal_ev_t;



/* State of Task normal */
typedef enum task_normal_st {
							ST_SYS_01_DESACTIVADO,
							ST_SYS_01_ESPERAR_INGRESO,
							ST_SYS_01_ABRIENDO_INGRESO,
							ST_SYS_01_ESPERANDO_INGRESO,
							ST_SYS_01_CERRANDO_INGRESO_TIEMPO,
							ST_SYS_01_CERRANDO_INGRESO_PERSONA,
							ST_SYS_01_PERSONA_ADENTRO,
							ST_SYS_01_TIEMPO_EXCEDIDO,
							ST_SYS_01_ABRIENDO_EGRESO,
							ST_SYS_01_ESPERANDO_EGRESO,
							ST_SYS_01_CERRANDO_EGRESO_TIEMPO,
							ST_SYS_01_CERRANDO_EGRESO_PERSONA
} task_normal_st_t;

typedef struct
{
	uint32_t			tick;
	task_normal_st_t	state;
	task_normal_ev_t	event;
	bool				flag;
} task_normal_dta_t;

/********************** external data declaration ****************************/
extern task_normal_dta_t task_normal_dta;

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* TASK_INC_TASK_normal_ATTRIBUTE_H_ */

/********************** end of file ******************************************/
