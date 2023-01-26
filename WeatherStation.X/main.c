/*******************************************************************************
   File Name:
    main.c

  Summary:
    Main entry point for WINC1500 demos.

  Description:
    This file is the main entry point for the WINC1500 demos.  The project is meant 
    as an example of how to create applications for the WINC1500.
*******************************************************************************/

/*==============================================================================
Copyright 2016 Microchip Technology Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/


//==============================================================================
// INCLUDES
//==============================================================================    
#include "winc1500_api.h"   // primary WINC1500 include file
#include "demo_config.h"    // selects which demo to run
#include "mcc.h"            // defines for LED's and push buttons on board
#include "select_city.h"
#include "weather.h"
#include <xc.h>   
#include "gps.h"


t_Gps gps_test;
t_Gps *gps_tt = &gps_test;

char c='0'; //declare a character
char Rdata[BUFFER_LENGTH];
char *Rcopy = &Rdata[0];//declare a character array to store an entire message
int count = BUFFER_LENGTH;
int uartgo = 0;
int message_ready = 0;

void gps_received_handler(void){
    
    
    c = UART2_Read();
    if(c == '$') //c == $, hex=0x0024
    {           
        count = 0;
        uartgo = 1;
        message_ready = 0;
        //for indexing the character array
    }
    if((uartgo == 1)&&(BUFFER_LENGTH))
    {
        Rdata[count] = c;//store the character into the data array
        count++; 
        message_ready = 0;//increment the index
    }
    else if(count >= BUFFER_LENGTH)
    {
        count = 0;
        uartgo = 0;
        message_ready = 1;   
    }   
}

//==============================================================================
// FUNCTION PROTOTYPES
//==============================================================================    

//==============================================================================
// Main application entry point.
//==============================================================================

//-----------------------------------------------------------------------------
Location_data currentCoords;

int main(void)
{
    SYSTEM_Initialize();
    m2m_wifi_init();
    gps_init();
    UART2_SetRxInterruptHandler(&gps_received_handler);

    while (1) 
    {
        ApplicationTask();
        m2m_wifi_task();
        currentCoords.coords_string = PressButtonChooseCity();
        if(message_ready == 1){
            
            printf("%s\r\n",Rcopy);
            gps_parse(Rcopy,58, gps_tt);   
        }
        
       
        
//        if (PORTCbits.RC6 == 0)
//        {
//            _RB4 = 0;
//        }
//        else
//        {
//            _RB4 = 1;
//        }
    }
}

