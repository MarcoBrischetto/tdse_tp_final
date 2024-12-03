/*
 * Copyright (c) 2023 Juan Manuel Cruz <jcruz@fi.uba.ar>.
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
 * @file   : board.h
 * @date   : Set 26, 2023
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 * @version	v1.0.0
 */

#ifndef BOARD_INC_BOARD_H_
#define BOARD_INC_BOARD_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/
#define NUCLEO_F103RC		(0)
#define NUCLEO_F401RE		(1)
#define NUCLEO_F446RE		(2)
#define NUCLEO_F429ZI		(3)
#define NUCLEO_F439ZI		(4)
#define NUCLEO_F413ZH		(5)
#define STM32F429I_DISCO1	(6)

#define BOARD (NUCLEO_F103RC)

/* STM32 Nucleo Boards - 64 Pins */
#if ((BOARD == NUCLEO_F103RC) || (BOARD == NUCLEO_F401RE) || (BOARD == NUCLEO_F446RE))

// Entradas
#define BTN_MEN_PIN		D2_Pin
#define BTN_MEN_PORT	D2_GPIO_Port
#define BTN_MEN_PRESSED	GPIO_PIN_RESET
#define BTN_MEN_HOVER	GPIO_PIN_SET

#define BTN_ENT_PIN		D4_Pin
#define BTN_ENT_PORT	D4_GPIO_Port
#define BTN_ENT_PRESSED	GPIO_PIN_RESET
#define BTN_ENT_HOVER	GPIO_PIN_SET

#define BTN_NEX_PIN		D5_Pin
#define BTN_NEX_PORT	D5_GPIO_Port
#define BTN_NEX_PRESSED	GPIO_PIN_RESET
#define BTN_NEX_HOVER	GPIO_PIN_SET

#define BTN_ESC_PIN		D6_Pin
#define BTN_ESC_PORT	D6_GPIO_Port
#define BTN_ESC_PRESSED	GPIO_PIN_RESET
#define BTN_ESC_HOVER	GPIO_PIN_SET

#define BTN_INGRESO_PIN		I1_Pin
#define BTN_INGRESO_PORT	I1_GPIO_Port
#define BTN_INGRESO_PRESSED	GPIO_PIN_RESET
#define BTN_INGRESO_HOVER	GPIO_PIN_SET

#define BTN_EGRESO_PIN		I2_Pin
#define BTN_EGRESO_PORT		I2_GPIO_Port
#define BTN_EGRESO_PRESSED	GPIO_PIN_RESET
#define BTN_EGRESO_HOVER	GPIO_PIN_SET

#define SENSOR_PUERTA_INGRESO_PIN		I3_Pin
#define SENSOR_PUERTA_INGRESO_PORT		I3_GPIO_Port
#define SENSOR_PUERTA_INGRESO_PRESSED	GPIO_PIN_RESET
#define SENSOR_PUERTA_INGRESO_HOVER		GPIO_PIN_SET

#define SENSOR_PUERTA_EGRESO_PIN		I3_Pin
#define SENSOR_PUERTA_EGRESO_PORT		I3_GPIO_Port
#define SENSOR_PUERTA_EGRESO_PRESSED	GPIO_PIN_RESET
#define SENSOR_PUERTA_EGRESO_HOVER		GPIO_PIN_SET

#define BARRERA_PIN			I3_Pin
#define BARRERA_PORT		I3_GPIO_Port
#define BARRERA_PRESSED		GPIO_PIN_RESET
#define BARRERA_HOVER		GPIO_PIN_SET

//Salidas
#define LED_A_PIN		LD2_Pin
#define LED_A_PORT		LD2_GPIO_Port
#define LED_A_ON		GPIO_PIN_SET
#define LED_A_OFF		GPIO_PIN_RESET

#define MOTOR_ABRIR_PIN		O1_Pin
#define MOTOR_ABRIR_PORT	O1_GPIO_Port
#define MOTOR_ABRIR_ON		GPIO_PIN_SET
#define MOTOR_ABRIR_OFF		GPIO_PIN_RESET

#define MOTOR_CERRAR_PIN	O2_Pin
#define MOTOR_CERRAR_PORT	O2_GPIO_Port
#define MOTOR_CERRAR_ON		GPIO_PIN_SET
#define MOTOR_CERRAR_OFF	GPIO_PIN_RESET

#define SEMAFORO_INGRESO_PIN	 	O3_Pin
#define SEMAFORO_INGRESO_PORT	O3_GPIO_Port
#define SEMAFORO_INGRESO_ON		GPIO_PIN_SET
#define SEMAFORO_INGRESO_OFF		GPIO_PIN_RESET

#define SEMAFORO_EGRESO_PIN	 	O4_Pin
#define SEMAFORO_EGRESO_PORT		O4_GPIO_Port
#define SEMAFORO_EGRESO_ON		GPIO_PIN_SET
#define SEMAFORO_EGRESO_OFF		GPIO_PIN_RESET

#define BUZZER_PIN	 	O5_Pin
#define BUZZER_PORT		O5_GPIO_Port
#define BUZZER_ON		GPIO_PIN_RESET
#define BUZZER_OFF		GPIO_PIN_SET


#endif/* STM32 Nucleo Boards - 144 Pins */

#if ((BOARD == NUCLEO_F429ZI) || (BOARD == NUCLEO_F439ZI) || (BOARD == NUCLEO_F413ZH))

#define BTN_A_PIN		USER_Btn_Pin
#define BTN_A_PORT		USER_Btn_GPIO_Port
#define BTN_A_PRESSED	GPIO_PIN_SET
#define BTN_A_HOVER		GPIO_PIN_RESET

#define LED_A_PIN		LD1_Pin
#define LED_A_PORT		LD1_GPIO_Port
#define LED_A_ON		GPIO_PIN_SET
#define LED_A_OFF		GPIO_PIN_RESET

#endif

/* STM32 Discovery Kits */
#if (BOARD == STM32F429I_DISCO1)

#define BTN_A_PIN		B1_Pin
#define BTN_A_PORT		B1_GPIO_Port
#define BTN_A_PRESSED	GPIO_PIN_SET
#define BTN_A_HOVER		GPIO_PIN_RESET

#define LED_A_PIN		LD3_Pin
#define LED_A_PORT		LD3_GPIO_Port
#define LED_A_ON		GPIO_PIN_SET
#define LED_A_OFF		GPIO_PIN_RESET

#endif

/********************** typedef **********************************************/

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* BOARD_INC_BOARD_H_ */

/********************** end of file ******************************************/