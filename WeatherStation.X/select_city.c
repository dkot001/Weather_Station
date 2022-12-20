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

uint8_t uBlock, uCounter, uButtonValue;
char cCoords[31];
char cSelectCoords[31];
typedef enum List {Krakow, Warszawa, Gdynia, Katowice} Cities;
Cities City = Krakow;

void SelectCoords(char pcSelectedCoords[]){
    
    switch(City)
    {
        case Krakow:
            strcpy(pcSelectedCoords, "latitude=50.09&longitude=19.92");
            break;
        case Warszawa:
            strcpy(pcSelectedCoords, "latitude=52.00&longitude=14.55");
            break;
        case Gdynia:
            strcpy(pcSelectedCoords, "latitude=50.09&longitude=19.92");
            break;
        case Katowice:
            strcpy(pcSelectedCoords, "latitude=50.09&longitude=19.92");
            break;
        default:
            strcpy(pcSelectedCoords, "latitude=50.09&longitude=19.92");
            break;
    }
}

void PressButtonChooseCity(){
    if((uButtonValue == 1) && uBlock == 0)
    {
        uBlock = 1;
        uCounter++;
        switch(uCounter)
        {
            case 0:
                City = Krakow;
                break;
            case 1:
                City = Warszawa;
                break;
            case 2:
                City = Gdynia;
                break;
            case 3:
                City = Katowice;
                break;
            default:
                City = Krakow;
                break;
        }
    }
}
