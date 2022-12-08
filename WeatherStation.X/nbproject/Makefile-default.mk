#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/WeatherStation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/WeatherStation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/ext_int.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c mcc_generated_files/traps.c mcc_generated_files/uart2.c WINC1500/Board_driver/wf_mcu_driver_stub.c WINC1500/Driver/wf_asic.c WINC1500/Driver/wf_hif.c WINC1500/Driver/wf_ota.c WINC1500/Driver/wf_socket.c WINC1500/Driver/wf_spi.c WINC1500/Driver/wf_spi_flash.c WINC1500/Driver/wf_utils.c WINC1500/Driver/wf_wifi.c WINC1500/Example/winc1500_fw_update_over_serial.c WINC1500/Example/winc1500_http_download.c WINC1500/Example/winc1500_locate_ip_address.c WINC1500/Example/winc1500_mac_address.c WINC1500/Example/winc1500_mode_ap.c WINC1500/Example/winc1500_mode_change.c WINC1500/Example/winc1500_mode_p2p.c WINC1500/Example/winc1500_mode_sta.c WINC1500/Example/winc1500_ota_firmware_update.c WINC1500/Example/winc1500_power_save_mode.c WINC1500/Example/winc1500_provision_http.c WINC1500/Example/winc1500_security_wep_wpa.c WINC1500/Example/winc1500_security_wps.c WINC1500/Example/winc1500_send_email.c WINC1500/Example/winc1500_signal_strength.c WINC1500/Example/winc1500_ssl_connect.c WINC1500/Example/winc1500_tcp_client.c WINC1500/Example/winc1500_tcp_server.c WINC1500/Example/winc1500_time_client.c WINC1500/Example/winc1500_weather_client.c WINC1500/Support/winc1500_support_stub.c main.c C:/Users/Ja/Desktop/PIC-IoT/WeatherStation.X/weather.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/1306266182/weather.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/ext_int.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d ${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d ${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d ${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d ${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d ${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d ${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/1306266182/weather.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/1306266182/weather.o

# Source Files
SOURCEFILES=mcc_generated_files/ext_int.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c mcc_generated_files/traps.c mcc_generated_files/uart2.c WINC1500/Board_driver/wf_mcu_driver_stub.c WINC1500/Driver/wf_asic.c WINC1500/Driver/wf_hif.c WINC1500/Driver/wf_ota.c WINC1500/Driver/wf_socket.c WINC1500/Driver/wf_spi.c WINC1500/Driver/wf_spi_flash.c WINC1500/Driver/wf_utils.c WINC1500/Driver/wf_wifi.c WINC1500/Example/winc1500_fw_update_over_serial.c WINC1500/Example/winc1500_http_download.c WINC1500/Example/winc1500_locate_ip_address.c WINC1500/Example/winc1500_mac_address.c WINC1500/Example/winc1500_mode_ap.c WINC1500/Example/winc1500_mode_change.c WINC1500/Example/winc1500_mode_p2p.c WINC1500/Example/winc1500_mode_sta.c WINC1500/Example/winc1500_ota_firmware_update.c WINC1500/Example/winc1500_power_save_mode.c WINC1500/Example/winc1500_provision_http.c WINC1500/Example/winc1500_security_wep_wpa.c WINC1500/Example/winc1500_security_wps.c WINC1500/Example/winc1500_send_email.c WINC1500/Example/winc1500_signal_strength.c WINC1500/Example/winc1500_ssl_connect.c WINC1500/Example/winc1500_tcp_client.c WINC1500/Example/winc1500_tcp_server.c WINC1500/Example/winc1500_time_client.c WINC1500/Example/winc1500_weather_client.c WINC1500/Support/winc1500_support_stub.c main.c C:/Users/Ja/Desktop/PIC-IoT/WeatherStation.X/weather.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/WeatherStation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/ext_int.o: mcc_generated_files/ext_int.c  .generated_files/flags/default/a984ae386036a8ab6d4da7b2ab22f53b444b9fb1 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/ext_int.c  -o ${OBJECTDIR}/mcc_generated_files/ext_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/ext_int.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/4dc2a3a42e403bf4b43cefcd4e63ddbb09f94b7e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/79c701759111ed43a6c8016cd5db4789ce6cd1c8 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/eceb84173a1deff24a7b19498777b0d5c4fe63b8 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/3df5fff81846641ad9da2600f5a630d2fff30a5e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/559d773477966b8512b1292ade00d756592b663b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/539e2d7a1b7acd180ac8665209ec74a5ee4d23bd .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/4bc727898cfd8ff5fd47665212c170794699ec3d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o: WINC1500/Board_driver/wf_mcu_driver_stub.c  .generated_files/flags/default/7508c6d3ac0f5588aa1840f9543b9d4b1765ac4f .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Board_driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Board_driver/wf_mcu_driver_stub.c  -o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_asic.o: WINC1500/Driver/wf_asic.c  .generated_files/flags/default/845c6c6e57eadc5ecb1a01925a287c968cb0f947 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_asic.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_hif.o: WINC1500/Driver/wf_hif.c  .generated_files/flags/default/6b24b1e4486fb50700422e84315d42f03d4fcb1a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_hif.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_ota.o: WINC1500/Driver/wf_ota.c  .generated_files/flags/default/2e504ca32aee914de6d983ea8b459b3e5316fce6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_ota.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_socket.o: WINC1500/Driver/wf_socket.c  .generated_files/flags/default/a3d17c1c0f872739a54b82037da8adc0b6b09583 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_socket.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi.o: WINC1500/Driver/wf_spi.c  .generated_files/flags/default/a1aee15457e98b820449764cc2a8859f50675874 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o: WINC1500/Driver/wf_spi_flash.c  .generated_files/flags/default/a930e648c6b0f9a92559ddb6ded7e7c2553d06c3 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi_flash.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_utils.o: WINC1500/Driver/wf_utils.c  .generated_files/flags/default/33373a4e24f0c3c795b20ffa23104d290e7f7b98 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_utils.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_wifi.o: WINC1500/Driver/wf_wifi.c  .generated_files/flags/default/20d4cb0bb23e0e3fe270793209f7db89b0f17456 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_wifi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o: WINC1500/Example/winc1500_fw_update_over_serial.c  .generated_files/flags/default/5a2d56bd6431d5b20fde444ff8134774e8cd908d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_fw_update_over_serial.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o: WINC1500/Example/winc1500_http_download.c  .generated_files/flags/default/2cab0d739a5c99cd02d97c03862f80cf4c60fc19 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_http_download.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o: WINC1500/Example/winc1500_locate_ip_address.c  .generated_files/flags/default/425d2a739c774ffba6d007a382da1c9fa09d9e88 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_locate_ip_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o: WINC1500/Example/winc1500_mac_address.c  .generated_files/flags/default/f60a6af01f71a9f43a3147adbb424656b52de886 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mac_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o: WINC1500/Example/winc1500_mode_ap.c  .generated_files/flags/default/89f000aaa8830ea7a3aabd1474990690c6ba6e2b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_ap.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o: WINC1500/Example/winc1500_mode_change.c  .generated_files/flags/default/72f0c19ef84733776c6196e61660621de4b648a7 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_change.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o: WINC1500/Example/winc1500_mode_p2p.c  .generated_files/flags/default/9971c2a56aaeeb68d44e30893905c2bc1acf5114 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_p2p.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o: WINC1500/Example/winc1500_mode_sta.c  .generated_files/flags/default/cf8757740f9b1c5fc33223458bcebe4afb445d07 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_sta.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o: WINC1500/Example/winc1500_ota_firmware_update.c  .generated_files/flags/default/c32540dda9133c3ed7761efd4d6f74abdfb912df .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ota_firmware_update.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o: WINC1500/Example/winc1500_power_save_mode.c  .generated_files/flags/default/b9074ea2a0c4b8af77e34c487ed3050fe5414b73 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_power_save_mode.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o: WINC1500/Example/winc1500_provision_http.c  .generated_files/flags/default/299b8a91927156639ebe9f2a2994a89f76a464ba .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_provision_http.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o: WINC1500/Example/winc1500_security_wep_wpa.c  .generated_files/flags/default/71abb8e81b7f522d0b261803a8c1bdbf1b9c4bc5 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wep_wpa.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o: WINC1500/Example/winc1500_security_wps.c  .generated_files/flags/default/83779fc4a4043c0b565065a8ed7e58fc4c1c4161 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wps.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o: WINC1500/Example/winc1500_send_email.c  .generated_files/flags/default/cff119d153efd78331e51ee9493f6f225656176d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_send_email.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o: WINC1500/Example/winc1500_signal_strength.c  .generated_files/flags/default/3830cdd3bc6fe14090f4d6defaeab6d48bdd391 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_signal_strength.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o: WINC1500/Example/winc1500_ssl_connect.c  .generated_files/flags/default/aa57336f57276a7f4be19213a4ec38e1b30650ba .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ssl_connect.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o: WINC1500/Example/winc1500_tcp_client.c  .generated_files/flags/default/188f46da592bd3370d08ea166c59caaf8f0682e3 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o: WINC1500/Example/winc1500_tcp_server.c  .generated_files/flags/default/71ba245f40125c1009e87e71f55808ec4f4ba009 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_server.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o: WINC1500/Example/winc1500_time_client.c  .generated_files/flags/default/8b6a1c0e40e8d1ea5db5945789c11756fbee410d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_time_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o: WINC1500/Example/winc1500_weather_client.c  .generated_files/flags/default/58550bf9bbfc01224d6a0cabcc95a55366a84c7c .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_weather_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o: WINC1500/Support/winc1500_support_stub.c  .generated_files/flags/default/bd7ba582fa3ee3c5a842bc543639716bd59c7202 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Support" 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Support/winc1500_support_stub.c  -o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/4ec503cbc39d387d95108eed3148fb75faac4406 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1306266182/weather.o: C:/Users/Ja/Desktop/PIC-IoT/WeatherStation.X/weather.c  .generated_files/flags/default/cbd85e716e9bfbcaa5ec2e199df05b0c2799e731 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1306266182" 
	@${RM} ${OBJECTDIR}/_ext/1306266182/weather.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306266182/weather.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/Ja/Desktop/PIC-IoT/WeatherStation.X/weather.c  -o ${OBJECTDIR}/_ext/1306266182/weather.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1306266182/weather.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/ext_int.o: mcc_generated_files/ext_int.c  .generated_files/flags/default/2d90aa024dbedf5d8578c2bbf6c85656b15b706 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/ext_int.c  -o ${OBJECTDIR}/mcc_generated_files/ext_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/ext_int.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/76b3e633bd3d1177b19aea1045acefd0dcc07fab .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/4be1b10399da59130df5916a554785419f452e1c .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/2774c519cbeee32043dced64ba477af2c1fe2012 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/24450097d07057fe344d0573a028470a66353dd3 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/f87492a9eecd0cc2e7203314f0d3c81628ef7c3c .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/70c3d26fa0745d646d32627fa6baa82857b7733d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/1a64dd4f2d7f9c066dfa7d0829043ae9e8aef891 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o: WINC1500/Board_driver/wf_mcu_driver_stub.c  .generated_files/flags/default/b746b91e3a309373e20688526f1601c86dab7124 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Board_driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Board_driver/wf_mcu_driver_stub.c  -o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_asic.o: WINC1500/Driver/wf_asic.c  .generated_files/flags/default/cb268f47c913275e0e717aea73bcbd90204bb217 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_asic.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_hif.o: WINC1500/Driver/wf_hif.c  .generated_files/flags/default/a983207c7d7ec98a963a1fd117cbbd3945e29a84 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_hif.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_ota.o: WINC1500/Driver/wf_ota.c  .generated_files/flags/default/7d5a7585c5a8ae936643a7e7df4a5b25cd6a1a88 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_ota.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_socket.o: WINC1500/Driver/wf_socket.c  .generated_files/flags/default/d91e69ce9b8c72606ef969716d7a5f7f05c6b0c4 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_socket.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi.o: WINC1500/Driver/wf_spi.c  .generated_files/flags/default/9ac1276a8b2763c21b543e47552e9f70a40d3964 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o: WINC1500/Driver/wf_spi_flash.c  .generated_files/flags/default/88b429e9e53d1591322e3d766879c0f712839c5 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi_flash.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_utils.o: WINC1500/Driver/wf_utils.c  .generated_files/flags/default/506dc11300f5195ce7d9d523ff6dbcd4ccd18662 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_utils.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_wifi.o: WINC1500/Driver/wf_wifi.c  .generated_files/flags/default/4ba1e9483623d21baf16f0f98743f9d6e4374f06 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_wifi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o: WINC1500/Example/winc1500_fw_update_over_serial.c  .generated_files/flags/default/ab65821881433445e21fc685d0b9c7462f3581fb .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_fw_update_over_serial.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o: WINC1500/Example/winc1500_http_download.c  .generated_files/flags/default/b8c456e6e05319f6f435c6b741e2c73cd9099ddf .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_http_download.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o: WINC1500/Example/winc1500_locate_ip_address.c  .generated_files/flags/default/c79a2972dea1282e0dc7d3649f68fa28fc371a77 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_locate_ip_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o: WINC1500/Example/winc1500_mac_address.c  .generated_files/flags/default/8dd63bdf84ac7a6033dab478db6f573c65578aac .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mac_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o: WINC1500/Example/winc1500_mode_ap.c  .generated_files/flags/default/3a1258eadc5998a4efe30847deb0295fec070a7a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_ap.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o: WINC1500/Example/winc1500_mode_change.c  .generated_files/flags/default/6d8ce3405437c1fd02684b700b627e76c5d15398 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_change.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o: WINC1500/Example/winc1500_mode_p2p.c  .generated_files/flags/default/dec01241eadd49c16303a00a28c280ae1ec4d2dc .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_p2p.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o: WINC1500/Example/winc1500_mode_sta.c  .generated_files/flags/default/d0a132fc6d25158c366ebb1a9bddac97991a8fbe .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_sta.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o: WINC1500/Example/winc1500_ota_firmware_update.c  .generated_files/flags/default/43179907601b01b8797b59ab6b691b6836df8b65 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ota_firmware_update.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o: WINC1500/Example/winc1500_power_save_mode.c  .generated_files/flags/default/ad74088ce7dce21b109c4ea3954e5060a502df15 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_power_save_mode.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o: WINC1500/Example/winc1500_provision_http.c  .generated_files/flags/default/b527463583ac14323440994a095aa8e1a92719c0 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_provision_http.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o: WINC1500/Example/winc1500_security_wep_wpa.c  .generated_files/flags/default/c5860d3f2cc94b7cd08c1ce5c33af49c632ddcaf .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wep_wpa.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o: WINC1500/Example/winc1500_security_wps.c  .generated_files/flags/default/3551d1aeb9b2bc1dd101b41c86fb6e5ea59bc6a6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wps.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o: WINC1500/Example/winc1500_send_email.c  .generated_files/flags/default/92ff25ddd31b65074120fa11c3a9e90af2f19a19 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_send_email.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o: WINC1500/Example/winc1500_signal_strength.c  .generated_files/flags/default/498bc8302e5c7b2b347747c67a148df606bd6936 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_signal_strength.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o: WINC1500/Example/winc1500_ssl_connect.c  .generated_files/flags/default/2628f3963a0ccdfec19d8e33fab4c4d8b18c690b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ssl_connect.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o: WINC1500/Example/winc1500_tcp_client.c  .generated_files/flags/default/2dc6070eaa5f73d91d2020f7b13ed5ad7f69ea66 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o: WINC1500/Example/winc1500_tcp_server.c  .generated_files/flags/default/96eef37492fee12304b236a73a08ae1b24a4b579 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_server.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o: WINC1500/Example/winc1500_time_client.c  .generated_files/flags/default/a3feb0a3f5e998e2d28e37fff81f7b141700ba4d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_time_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o: WINC1500/Example/winc1500_weather_client.c  .generated_files/flags/default/64bd5f0cb509196ee0b2e17525f4c0696f1033a6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_weather_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o: WINC1500/Support/winc1500_support_stub.c  .generated_files/flags/default/7cab33773bc9fcacd7740c875a52b2a7772b95f1 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Support" 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Support/winc1500_support_stub.c  -o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/596fb1a2135fe1f4efbeea59abe6874a639be2d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1306266182/weather.o: C:/Users/Ja/Desktop/PIC-IoT/WeatherStation.X/weather.c  .generated_files/flags/default/36e0a377e10cb009a1e5beaf4b8b658e69a6d67b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/1306266182" 
	@${RM} ${OBJECTDIR}/_ext/1306266182/weather.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306266182/weather.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/Ja/Desktop/PIC-IoT/WeatherStation.X/weather.c  -o ${OBJECTDIR}/_ext/1306266182/weather.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1306266182/weather.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/WeatherStation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/WeatherStation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common"  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--heap=128,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/WeatherStation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/WeatherStation.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=128,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/WeatherStation.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
