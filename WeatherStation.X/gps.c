#include "gps.h"



const char *invalid= "00.00";


void gps_parse(char *data, int datalen, t_Gps *gps)
{
	uint16_t d = 0; //pomocniczna zmienna do poruszania sie po buforze
    uint16_t i = 0; //licnzik p?tli
	

	if((*(data + d) == '$') && (*(data + d + 1) == 'G') && (*(data + d + 2) == 'P') && (*(data + d + 3) == 'G') && (*(data + d + 4) == 'L') && (*(data + d + 5) == 'L')) //sekwencja musi sie zaczynac od $GP lub $GN
	{
	
			d += 7; //przechodzimy od razu do bajtu po naglowku i przecinku

			if(*(data + d + 5) == '.' && (*(data + d + 21) == '.')){
                gps->fixed = 1;
                
                while (i<5) {
                gps->lat[i] = *(data + d +i);
                i+=1;
                //gps.lat[2] = *(data + d + 4);
                //gps.lon[2] = *(data + d + 4);
                
                }
                i = 0;
                while (i<6) {
                gps->lon[i] = *(data + d + 15 + i );
                i+=1;
                }
            }else{
                //strcpy(*gps.lat,invalid);
                //strcpy(*gps.lon,invalid);
                
                gps->fixed = 0;
            }		
    }else{
//        strcpy(gps.lat,invalid);
  //      strcpy(gps.lon,invalid);

        gps->fixed = 0;
    }
    
}
void gps_init(void)
{
//	
//	memset(&gps.lat, 0, 6);
//	memset(&gps.lon, 0, 7);
//    gps.fixed = 0;
//            
}