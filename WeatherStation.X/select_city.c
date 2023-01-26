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
#include "wf_common.h"
#include "mcc_generated_files/pin_manager.h"
#include "string_copy.h"
#include "gps.h"

Cities City;
static uint8_t uCounter = 0;
static bool uBlock;
static char* buffor = "latitude=50.04&longitude=19.94"; //cracow default

char* PressButtonChooseCity(void){

    if( (BUTTON == 0) && (uBlock == false) )
    {
        uBlock = true;
        uCounter++;
        uCounter = uCounter % 4;
        switch(uCounter)
        {
            case 0:
                City = Krakow;
                buffor = "latitude=50.04&longitude=19.94";
                break;
            case 1:
                City = Warszawa;
                buffor = "latitude=52.23&longitude=21.01";
                break;
            case 2:
                City = Gdynia;
                buffor = "latitude=54.32&longitude=18.34";   
                break;
            case 3:
                City = Katowice;
                buffor = "latitude=50.15&longitude=19.01"; 
                break;
            default:
                City = Krakow;
                buffor = "latitude=50.04&longitude=19.94"; 
                break;
        }
        NewConnection();
    }
    else if(BUTTON == 1)
    {
        uBlock = false;
    }
    return buffor;
}
