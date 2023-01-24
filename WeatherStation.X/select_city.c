/*
 * File:   select_city.c
 * Author: Hubert Kwasniewski
 *
 * Created on 11 grudnia 2022, 18:48
 */


#include "xc.h"
#include "select_city.h"
#include "winc1500_api.h"
#include "demo_config.h"
#include "string.h"
#include "wf_common.h"
#include "mcc_generated_files/pin_manager.h"

Cities City;

void PressButtonChooseCity(uint8_t uBlock, uint8_t uCounter, char pcSelectedCoords[]){
    if((BUTTON_0_GetValue() == 1) && uBlock == 0)
    {
        uBlock = 1;
        uCounter++;
        uCounter = uCounter % 4;
        switch(uCounter)
        {
            case 0:
                City = Krakow;
                strcpy(pcSelectedCoords, "latitude=50.04&longitude=19.94");
                NewConnection();
                break;
            case 1:
                City = Warszawa;
                strcpy(pcSelectedCoords, "latitude=52.23&longitude=21.01");
                NewConnection();
                break;
            case 2:
                City = Gdynia;
                strcpy(pcSelectedCoords, "latitude=54.32&longitude=18.34");
                NewConnection();
                break;
            case 3:
                City = Katowice;
                strcpy(pcSelectedCoords, "latitude=50.15&longitude=19.01");
                NewConnection();
                break;
            default:
                City = Krakow;
                strcpy(pcSelectedCoords, "latitude=50.04&longitude=19.94");
                NewConnection();
                break;
        }
    }
}
