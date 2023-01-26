#ifndef GPS_H_
#define GPS_H_

#include <stdint.h>
#include <string.h>

#define BUFFER_LENGTH 58


/**
 * \brief Struktura dla GPS
 */
typedef struct Gps
{
	uint8_t lat[6]; /**< Szerokosc geograficzna w formacie APRS */
	uint8_t lon[7]; /**< Dlugosc geograficzna w formacie APRS */
	uint8_t fixed; /**< Czy GPS odebral fixa */
} t_Gps;

//t_Gps gps;

void gps_parse(char *data, int datalen, t_Gps *gps);


void gps_init(void);

#endif /* GPS_H_ */
