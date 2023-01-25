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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/ext_int.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c mcc_generated_files/traps.c mcc_generated_files/uart2.c weather.c mcc_generated_files/tmr2.c select_city.c WINC1500/Board_driver/wf_mcu_driver_stub.c WINC1500/Driver/wf_asic.c WINC1500/Driver/wf_hif.c WINC1500/Driver/wf_ota.c WINC1500/Driver/wf_socket.c WINC1500/Driver/wf_spi.c WINC1500/Driver/wf_spi_flash.c WINC1500/Driver/wf_utils.c WINC1500/Driver/wf_wifi.c WINC1500/Example/winc1500_fw_update_over_serial.c WINC1500/Example/winc1500_http_download.c WINC1500/Example/winc1500_locate_ip_address.c WINC1500/Example/winc1500_mac_address.c WINC1500/Example/winc1500_mode_ap.c WINC1500/Example/winc1500_mode_change.c WINC1500/Example/winc1500_mode_p2p.c WINC1500/Example/winc1500_mode_sta.c WINC1500/Example/winc1500_ota_firmware_update.c WINC1500/Example/winc1500_power_save_mode.c WINC1500/Example/winc1500_provision_http.c WINC1500/Example/winc1500_security_wep_wpa.c WINC1500/Example/winc1500_security_wps.c WINC1500/Example/winc1500_send_email.c WINC1500/Example/winc1500_signal_strength.c WINC1500/Example/winc1500_ssl_connect.c WINC1500/Example/winc1500_tcp_client.c WINC1500/Example/winc1500_tcp_server.c WINC1500/Example/winc1500_time_client.c WINC1500/Example/winc1500_weather_client.c WINC1500/Support/winc1500_support_stub.c main.c C:/Users/Ja/Downloads/Hubert/Hubert/Weather_Station/WeatherStation.X/string_copy.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/weather.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/select_city.o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/434443079/string_copy.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/ext_int.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/weather.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/select_city.o.d ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d ${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d ${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d ${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d ${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d ${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d ${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/434443079/string_copy.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/weather.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/select_city.o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/434443079/string_copy.o

# Source Files
SOURCEFILES=mcc_generated_files/ext_int.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c mcc_generated_files/traps.c mcc_generated_files/uart2.c weather.c mcc_generated_files/tmr2.c select_city.c WINC1500/Board_driver/wf_mcu_driver_stub.c WINC1500/Driver/wf_asic.c WINC1500/Driver/wf_hif.c WINC1500/Driver/wf_ota.c WINC1500/Driver/wf_socket.c WINC1500/Driver/wf_spi.c WINC1500/Driver/wf_spi_flash.c WINC1500/Driver/wf_utils.c WINC1500/Driver/wf_wifi.c WINC1500/Example/winc1500_fw_update_over_serial.c WINC1500/Example/winc1500_http_download.c WINC1500/Example/winc1500_locate_ip_address.c WINC1500/Example/winc1500_mac_address.c WINC1500/Example/winc1500_mode_ap.c WINC1500/Example/winc1500_mode_change.c WINC1500/Example/winc1500_mode_p2p.c WINC1500/Example/winc1500_mode_sta.c WINC1500/Example/winc1500_ota_firmware_update.c WINC1500/Example/winc1500_power_save_mode.c WINC1500/Example/winc1500_provision_http.c WINC1500/Example/winc1500_security_wep_wpa.c WINC1500/Example/winc1500_security_wps.c WINC1500/Example/winc1500_send_email.c WINC1500/Example/winc1500_signal_strength.c WINC1500/Example/winc1500_ssl_connect.c WINC1500/Example/winc1500_tcp_client.c WINC1500/Example/winc1500_tcp_server.c WINC1500/Example/winc1500_time_client.c WINC1500/Example/winc1500_weather_client.c WINC1500/Support/winc1500_support_stub.c main.c C:/Users/Ja/Downloads/Hubert/Hubert/Weather_Station/WeatherStation.X/string_copy.c



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
${OBJECTDIR}/mcc_generated_files/ext_int.o: mcc_generated_files/ext_int.c  .generated_files/flags/default/19e56bde54f5b5a953e8e70084f2ab7b4a03a923 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/ext_int.c  -o ${OBJECTDIR}/mcc_generated_files/ext_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/ext_int.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/854b090ca5b09f6949077859f426e58735d5981 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/320961fe077831f1759f254becd598ffdaaf6523 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/1c60e72b9a32992fde14cb450ce59d85708aa3ca .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/34769662124e28c871d3dc285211a0cfacf05f50 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/39df96afa2259d6e60359849f85b093bbb9c9551 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/f0e8e9fb55ae769bf31c5fb175f36e3340d47227 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/a8504f59880e78c40e9bc174bb60772d8e9fc21b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/weather.o: weather.c  .generated_files/flags/default/ab9d47afaec8679ccd77d1b084c37206e6cb04aa .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/weather.o.d 
	@${RM} ${OBJECTDIR}/weather.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  weather.c  -o ${OBJECTDIR}/weather.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/weather.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/f8b4c2ce0b137b4a2ddc7062000597a5dcbeb683 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/select_city.o: select_city.c  .generated_files/flags/default/1e22e34ece541b13e26f9c7c6a1db8fbf61091eb .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/select_city.o.d 
	@${RM} ${OBJECTDIR}/select_city.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  select_city.c  -o ${OBJECTDIR}/select_city.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/select_city.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o: WINC1500/Board_driver/wf_mcu_driver_stub.c  .generated_files/flags/default/bdb6137a60409f652dc47a7ea44f30b3361285e6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Board_driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Board_driver/wf_mcu_driver_stub.c  -o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_asic.o: WINC1500/Driver/wf_asic.c  .generated_files/flags/default/54633e5d03a43b74cf70769a9233a48b907725aa .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_asic.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_hif.o: WINC1500/Driver/wf_hif.c  .generated_files/flags/default/6ca3bdba6d833fe863e29b593cb20231c40236d5 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_hif.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_ota.o: WINC1500/Driver/wf_ota.c  .generated_files/flags/default/40c20053e0ba05e0bcf15013679fc64558b9aff1 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_ota.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_socket.o: WINC1500/Driver/wf_socket.c  .generated_files/flags/default/a552917018a3fbc6c2c2d284fc1954054eda2321 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_socket.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi.o: WINC1500/Driver/wf_spi.c  .generated_files/flags/default/8e8ac6f476cdc3d2b872df8336d8b9ed7b2227ee .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o: WINC1500/Driver/wf_spi_flash.c  .generated_files/flags/default/652577c0f607e8019ccda308f889f4ed34f6cd10 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi_flash.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_utils.o: WINC1500/Driver/wf_utils.c  .generated_files/flags/default/83d850e43855aaae833ed41f6c6c8d9b999a9e33 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_utils.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_wifi.o: WINC1500/Driver/wf_wifi.c  .generated_files/flags/default/f3b101957f4661af924f8a2019968b6c2e7ecc86 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_wifi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o: WINC1500/Example/winc1500_fw_update_over_serial.c  .generated_files/flags/default/56ff673c3ce35f7e429c7c7a6c4e72c023dd65a7 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_fw_update_over_serial.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o: WINC1500/Example/winc1500_http_download.c  .generated_files/flags/default/735970ff8c2afc0806d0168b8137ac8ff0938072 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_http_download.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o: WINC1500/Example/winc1500_locate_ip_address.c  .generated_files/flags/default/5304f7c0629db1abe9ac7e88f283f8a9b9544f2a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_locate_ip_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o: WINC1500/Example/winc1500_mac_address.c  .generated_files/flags/default/6d55180b76f832d309af9a30ebbb007e0cb4f558 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mac_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o: WINC1500/Example/winc1500_mode_ap.c  .generated_files/flags/default/99ce3f0a5e73ea3304e3250a703bf36470cba3ca .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_ap.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o: WINC1500/Example/winc1500_mode_change.c  .generated_files/flags/default/4dc6451a260cb64328672aff5511303235fff1f6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_change.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o: WINC1500/Example/winc1500_mode_p2p.c  .generated_files/flags/default/36ab40aee85e6f1c1efc6d132dff72eda796f5e0 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_p2p.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o: WINC1500/Example/winc1500_mode_sta.c  .generated_files/flags/default/ac3610c95d4c28578fb65aa4a155fcdd030492b6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_sta.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o: WINC1500/Example/winc1500_ota_firmware_update.c  .generated_files/flags/default/915c8b0c703136d72cd7b74e33c176714c976e1a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ota_firmware_update.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o: WINC1500/Example/winc1500_power_save_mode.c  .generated_files/flags/default/45fb37ca3a649fdeda754db490dd60fb0e9ff8b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_power_save_mode.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o: WINC1500/Example/winc1500_provision_http.c  .generated_files/flags/default/8b2e17cf4d0b4319167c6d4169082bf5f5090dd4 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_provision_http.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o: WINC1500/Example/winc1500_security_wep_wpa.c  .generated_files/flags/default/b5760ef6f9e1538d1538ffe6cbf298486e216ae4 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wep_wpa.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o: WINC1500/Example/winc1500_security_wps.c  .generated_files/flags/default/6cad1e2e37df098d63d759d42da807a8581efa50 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wps.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o: WINC1500/Example/winc1500_send_email.c  .generated_files/flags/default/2feef9897ffdb51875f76e11851eea54b1f20b19 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_send_email.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o: WINC1500/Example/winc1500_signal_strength.c  .generated_files/flags/default/f7033229852bbaf9ebcaccf1a637c3a39dfd3eeb .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_signal_strength.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o: WINC1500/Example/winc1500_ssl_connect.c  .generated_files/flags/default/d54ee973edcc06e8ea874a0053336a6135228fbf .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ssl_connect.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o: WINC1500/Example/winc1500_tcp_client.c  .generated_files/flags/default/21f1e5717f1f595a021257c6db6d588abdd6b36e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o: WINC1500/Example/winc1500_tcp_server.c  .generated_files/flags/default/89cbba080880e7978c46dacbb46a9fa594ee0eb1 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_server.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o: WINC1500/Example/winc1500_time_client.c  .generated_files/flags/default/712a08f4cad9d4ab4ab0f4eb9e15b4b38a04df02 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_time_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o: WINC1500/Example/winc1500_weather_client.c  .generated_files/flags/default/4516d0bc8139438846f2c34f0290669b2d617db5 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_weather_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o: WINC1500/Support/winc1500_support_stub.c  .generated_files/flags/default/4ddc740486a3291d2dba779c320719b5898bf6a7 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Support" 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Support/winc1500_support_stub.c  -o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/a4fad618a0cfd2af48e185b9c40f1c24177aff62 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/434443079/string_copy.o: C:/Users/Ja/Downloads/Hubert/Hubert/Weather_Station/WeatherStation.X/string_copy.c  .generated_files/flags/default/958126133ec188abbe1113dcffa1de9ae5afcb53 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/434443079" 
	@${RM} ${OBJECTDIR}/_ext/434443079/string_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/434443079/string_copy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/Ja/Downloads/Hubert/Hubert/Weather_Station/WeatherStation.X/string_copy.c  -o ${OBJECTDIR}/_ext/434443079/string_copy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/434443079/string_copy.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/ext_int.o: mcc_generated_files/ext_int.c  .generated_files/flags/default/611430b5f6cf108e7603dfa4191f1d95651187 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/ext_int.c  -o ${OBJECTDIR}/mcc_generated_files/ext_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/ext_int.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/359c7c379100abde5d7a52fb091b67a23781fee6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/63484ec7a29264cbda6933edc8172b86f86e8a17 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/67c78178e4543c5aaa9bbacc5b6886ba145aff74 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/64ec376de1b72b93d3d044942daf91911e381c67 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/cecdca9a791f997391122d30b94061f51fd42e3 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/c0d6206207f8457c34fa3202f5f9d932d0c7d972 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/43c822e4d4a7d651a5174dea1b230779c062286 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/weather.o: weather.c  .generated_files/flags/default/95b9ed8549160d0cef0740b7efd1751abe991152 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/weather.o.d 
	@${RM} ${OBJECTDIR}/weather.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  weather.c  -o ${OBJECTDIR}/weather.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/weather.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/f36773207849a9dd7787a125a5a3212e0a7ef623 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/select_city.o: select_city.c  .generated_files/flags/default/d3259a453c72c3d8c190bd5fe0e15944bc19e524 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/select_city.o.d 
	@${RM} ${OBJECTDIR}/select_city.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  select_city.c  -o ${OBJECTDIR}/select_city.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/select_city.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o: WINC1500/Board_driver/wf_mcu_driver_stub.c  .generated_files/flags/default/80e25eeb01c39f496820599e6487c283c7679405 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Board_driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Board_driver/wf_mcu_driver_stub.c  -o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_asic.o: WINC1500/Driver/wf_asic.c  .generated_files/flags/default/f0d035e0f24914ff2da0cf14749b4796afedff11 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_asic.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_hif.o: WINC1500/Driver/wf_hif.c  .generated_files/flags/default/f87cb945f3c4e06ff6921826cad09d7c9adc399d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_hif.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_ota.o: WINC1500/Driver/wf_ota.c  .generated_files/flags/default/d4bdd528c5e8063b53f180139ed3ffddf5c995be .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_ota.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_socket.o: WINC1500/Driver/wf_socket.c  .generated_files/flags/default/dc68c4b2322e6ccd5e46f8845e44057be1f7fbb9 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_socket.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi.o: WINC1500/Driver/wf_spi.c  .generated_files/flags/default/d24dd2d58817685c597fd3050f83b50027f67e8a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o: WINC1500/Driver/wf_spi_flash.c  .generated_files/flags/default/9bff27daa374ea5557100d5e7594dbcc4912ea0b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi_flash.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_utils.o: WINC1500/Driver/wf_utils.c  .generated_files/flags/default/b7f45b84f3c9c160351321fc7740618c984c55bc .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_utils.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_wifi.o: WINC1500/Driver/wf_wifi.c  .generated_files/flags/default/77d1f6f8d84d4217dd97db6fdaa5e0f8e34a88c9 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_wifi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o: WINC1500/Example/winc1500_fw_update_over_serial.c  .generated_files/flags/default/a3b81da5bd61ddd6f7330a35b5ae15ed6036c4c5 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_fw_update_over_serial.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o: WINC1500/Example/winc1500_http_download.c  .generated_files/flags/default/ab92c098adb4eec1b430026aea7fbfab9a9eb420 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_http_download.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o: WINC1500/Example/winc1500_locate_ip_address.c  .generated_files/flags/default/495de914b2a8beb7cdd396013099f493cfc02ceb .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_locate_ip_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o: WINC1500/Example/winc1500_mac_address.c  .generated_files/flags/default/9453bbbcb1422a06ec39057683fa97878231d21f .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mac_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o: WINC1500/Example/winc1500_mode_ap.c  .generated_files/flags/default/c4a284c778db326717800733682aefc5009134fc .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_ap.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o: WINC1500/Example/winc1500_mode_change.c  .generated_files/flags/default/28b1001a49b922c9d74eb8c90c6527bffcabff9f .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_change.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o: WINC1500/Example/winc1500_mode_p2p.c  .generated_files/flags/default/95a01ae9416a4febc732ee6f58a1f199816607d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_p2p.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o: WINC1500/Example/winc1500_mode_sta.c  .generated_files/flags/default/2bc43498e179390cf80d395202e30ba6fa853956 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_sta.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o: WINC1500/Example/winc1500_ota_firmware_update.c  .generated_files/flags/default/784799d98fafdb5f19de9ca654485ce04c164c7e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ota_firmware_update.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o: WINC1500/Example/winc1500_power_save_mode.c  .generated_files/flags/default/6d652f3d643e1bb414806ad314680d3d8176eab6 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_power_save_mode.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o: WINC1500/Example/winc1500_provision_http.c  .generated_files/flags/default/e4e49bf19abbcd42166a28605d4d7f8f052b327f .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_provision_http.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o: WINC1500/Example/winc1500_security_wep_wpa.c  .generated_files/flags/default/493d75173efd6aa8b3c62f0d1a3c36dd1efea1a4 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wep_wpa.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o: WINC1500/Example/winc1500_security_wps.c  .generated_files/flags/default/e7cb8d68a7fb2fd53a3d938d1f9da357ac9ddf4e .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wps.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o: WINC1500/Example/winc1500_send_email.c  .generated_files/flags/default/b30d233bed79680bd64549be84d41ba96f948830 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_send_email.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o: WINC1500/Example/winc1500_signal_strength.c  .generated_files/flags/default/f7f788b175b8b7a7389e8b7ce26c978df524574d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_signal_strength.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o: WINC1500/Example/winc1500_ssl_connect.c  .generated_files/flags/default/234578ce163b10ec62810f7e4d8cc2db8805812a .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ssl_connect.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o: WINC1500/Example/winc1500_tcp_client.c  .generated_files/flags/default/10c3fd0b6ddb6f59fc2e0db977758b811f222a35 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o: WINC1500/Example/winc1500_tcp_server.c  .generated_files/flags/default/3b39d654bbdc3e21352adfbe418dafd0ea68599b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_server.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o: WINC1500/Example/winc1500_time_client.c  .generated_files/flags/default/dbc39b4bb9ec75ad0aab4f9b702c1d3538da69d .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_time_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o: WINC1500/Example/winc1500_weather_client.c  .generated_files/flags/default/3e90086ded1f885fbdc44e9b8753ae8280aada81 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_weather_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o: WINC1500/Support/winc1500_support_stub.c  .generated_files/flags/default/53a0acaac278e25461ef8248589c4bd916978033 .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/WINC1500/Support" 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Support/winc1500_support_stub.c  -o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/afe3b4a7af373b94f7155a9b98bcdf32c409ceff .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/434443079/string_copy.o: C:/Users/Ja/Downloads/Hubert/Hubert/Weather_Station/WeatherStation.X/string_copy.c  .generated_files/flags/default/60f7ba2d809154f0d70c6590d5cf157577398b8b .generated_files/flags/default/3a60306d929cd76682dbf87396049a279970adbd
	@${MKDIR} "${OBJECTDIR}/_ext/434443079" 
	@${RM} ${OBJECTDIR}/_ext/434443079/string_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/434443079/string_copy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/Ja/Downloads/Hubert/Hubert/Weather_Station/WeatherStation.X/string_copy.c  -o ${OBJECTDIR}/_ext/434443079/string_copy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/434443079/string_copy.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
