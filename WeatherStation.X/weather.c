/*
 * File:   weather.c
 * Author: Ja
 *
 * Created on 7 grudnia 2022, 21:59
 */


#include "weather.h"
#include "winc1500_api.h"
#include "demo_config.h"
#include "wf_common.h"
#include "select_city.h"

#define numOfCodes 28

extern Cities City;
extern Location_data currentCoords;

char *codeTab[numOfCodes] = {"0", "1", "2", "3", "45", "48", "51", "53", "55", "56", "57", "61", "63", "65", "66", "67", "71", "73", "75", "77", "80", "81", "82", "85", "86", "95", "96", "99"};
char *stringTab[numOfCodes + 1] = {"Clear Sky","Mainly Clear","Partly Cloudy","Overcast","Fog","Depositing Rime Fog","Light Drizzle","Moderate Drizzle","Heavy Drizzle","Light Freezing Drizzle","Heavy Freezing Drizzle","Slight Rain","Moderate Rain","Heavy Rain","Light Freezing Rain", "Heavy Freezing Rain","Slight Snow Fall","Moderate Snow Fall","Heavy Snow Fall","Snow Grains","Slight Rain Showers","Moderate Rain Showers","Violent Rain Showers","Slight Snow Showers","Heavy Snow Showers","Thunderstorm","Thunderstorm with Slight Hail","Thunderstorm with Heavy Hail","Unknown"};

char *weatherCodeDecode(char *wCode)
{
    for(uint8_t i=0;i<=numOfCodes;i++)
    {
        if(strcmp(wCode, codeTab[i]) == 0)
        {
            return stringTab[i];
        }
    }
    return stringTab[28];
}

void decodeMessage(char *message, WeatherData wData)
{
    char *pcIndxPtr;
    char *pcEndPtr;
    
    switch (City){
        case Krakow:
            printf("Pogoda dla Krakowa\r\n");
            break;
                case Warszawa:
            printf("Pogoda dla Warszawy\r\n");
            break;
                case Gdynia:
            printf("Pogoda dla Gdyni\r\n");
            break;
                case Katowice:
            printf("Pogoda dla Katowic\r\n");
            break;
                default:
            printf("Pogoda dla Krakowa\r\n");
            break;
        
    }
    
    pcIndxPtr = strstr(message, "\"latitude\":");
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"latitude\":");
        pcEndPtr = strstr(pcIndxPtr, ",");
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }
        
        wData.location.latitude = pcIndxPtr;
        printf("Latitude: %s\r\n",wData.location.latitude);
    } 
    else 
    {
        printf("N/A\r\n");
    }

    pcIndxPtr = strstr(pcEndPtr + 1, "\"longitude\":");
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"longitude\":");
        pcEndPtr = strstr(pcIndxPtr, ",");
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }

        wData.location.longitude = pcIndxPtr;
        printf("Longitude: %s\r\n", wData.location.longitude);
    } 
    else 
    {
        printf("N/A\r\n");
    } 

    pcIndxPtr = (strstr(pcEndPtr + 1, "\"timezone\":") + 1);
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"timezone\":");
        pcEndPtr = (strstr(pcIndxPtr, ",") - 1);
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }

        wData.location.timezone = pcIndxPtr;
        printf("Timezone: %s\r\n", wData.location.timezone);
    } 
    else 
    {
        printf("N/A\r\n");
    }

    pcIndxPtr = (strstr(pcEndPtr + 1, "\"timezone_abbreviation\":") + 1);
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"timezone_abbreviation\":");
        pcEndPtr = (strstr(pcIndxPtr, ",") - 1);
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }

        wData.location.timezone_abbreviation = pcIndxPtr;
        printf("Timezone_abbreviation: %s\r\n", wData.location.timezone_abbreviation);
    } 
    else 
    {
        printf("N/A\r\n");
    }

    pcIndxPtr = strstr(pcEndPtr + 1, "\"elevation\":");
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"elevation\":");
        pcEndPtr = strstr(pcIndxPtr, ",");
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }

        wData.location.elevation = pcIndxPtr;
        printf("Elevation: %s\r\n\n", wData.location.elevation);
    } 
    else 
    {
        printf("N/A\r\n");
    } 

    pcIndxPtr = strstr(pcEndPtr + 1, "\"temperature\":");
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"temperature\":");
        pcEndPtr = strstr(pcIndxPtr, ",");
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }

        wData.weather.temperature = pcIndxPtr;
        printf("Temperature: %s *C\r\n", wData.weather.temperature);
    } 
    else 
    {
        printf("N/A\r\n");
    }

    pcIndxPtr = strstr(pcEndPtr + 1, "\"windspeed\":");
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"windspeed\":");
        pcEndPtr = strstr(pcIndxPtr, ",");
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }

        wData.weather.wind_speed = pcIndxPtr;
        printf("WindSpeed: %s km/h\r\n", wData.weather.wind_speed);
    } 
    else 
    {
        printf("N/A\r\n");
    } 

    pcIndxPtr = strstr(pcEndPtr + 1, "\"winddirection\":");
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"winddirection\":");
        pcEndPtr = strstr(pcIndxPtr, ",");
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }

        wData.weather.wind_direction = pcIndxPtr;
        printf("WindDirection: %s\r\n", wData.weather.wind_direction);
    } 
    else 
    {
        printf("N/A\r\n");
    }

    pcIndxPtr = strstr(pcEndPtr + 1, "\"weathercode\":");
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"weathercode\":");
        pcEndPtr = strstr(pcIndxPtr, ",");
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }
        
        wData.weather.weather_code = weatherCodeDecode(pcIndxPtr);
        printf("WeatherCode: %s\r\n", wData.weather.weather_code);
    } 
    else 
    {
        printf("N/A\r\n");
    }  
    
    pcIndxPtr = (strstr(pcEndPtr + 1, "\"time\":") + 1);
    if (NULL != pcIndxPtr) 
    {
        pcIndxPtr = pcIndxPtr + strlen("\"time\":");
        pcEndPtr = strstr(pcIndxPtr, "T");
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }
        wData.weather.current_time.date = pcIndxPtr;
        printf("CurrentDate: %s\r\n", wData.weather.current_time.date);
    } 
    else 
    {
        printf("N/A\r\n");
    }

    pcIndxPtr = pcEndPtr + 1;
    if (NULL != pcIndxPtr) 
    {
        pcEndPtr = (strstr(pcIndxPtr, "}") - 1);
        if (NULL != pcEndPtr) 
        {
            *pcEndPtr = 0;
        }
        wData.weather.current_time.hour = pcIndxPtr;
        printf("CurrentHour: %s\r\n\n", wData.weather.current_time.hour); 
        printf("---------------------------------------------------------\r\n");
        
    } 
    else 
    {
        printf("N/A\r\n");
    }    
}