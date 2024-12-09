#ifndef CONFIGURACION_H

#include <stdint.h>

#define MILISEGUNDOS 1e3

//tiempo en segundos
typedef struct{
	uint8_t tiempo_puerta;
	uint8_t tiempo_permanencia;
}config_t;

extern config_t configuracion;

#endif //CONFIGURACION_H
