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

    while (1) 
    {
        ApplicationTask();
        m2m_wifi_task();
        currentCoords.coords_string = PressButtonChooseCity();
        
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

