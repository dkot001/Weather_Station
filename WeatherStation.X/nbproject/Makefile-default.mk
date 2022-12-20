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

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/ext_int.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c mcc_generated_files/traps.c mcc_generated_files/uart2.c WINC1500/Board_driver/wf_mcu_driver_stub.c WINC1500/Driver/wf_asic.c WINC1500/Driver/wf_hif.c WINC1500/Driver/wf_ota.c WINC1500/Driver/wf_socket.c WINC1500/Driver/wf_spi.c WINC1500/Driver/wf_spi_flash.c WINC1500/Driver/wf_utils.c WINC1500/Driver/wf_wifi.c WINC1500/Example/winc1500_fw_update_over_serial.c WINC1500/Example/winc1500_http_download.c WINC1500/Example/winc1500_locate_ip_address.c WINC1500/Example/winc1500_mac_address.c WINC1500/Example/winc1500_mode_ap.c WINC1500/Example/winc1500_mode_change.c WINC1500/Example/winc1500_mode_p2p.c WINC1500/Example/winc1500_mode_sta.c WINC1500/Example/winc1500_ota_firmware_update.c WINC1500/Example/winc1500_power_save_mode.c WINC1500/Example/winc1500_provision_http.c WINC1500/Example/winc1500_security_wep_wpa.c WINC1500/Example/winc1500_security_wps.c WINC1500/Example/winc1500_send_email.c WINC1500/Example/winc1500_signal_strength.c WINC1500/Example/winc1500_ssl_connect.c WINC1500/Example/winc1500_tcp_client.c WINC1500/Example/winc1500_tcp_server.c WINC1500/Example/winc1500_time_client.c WINC1500/Example/winc1500_weather_client.c WINC1500/Support/winc1500_support_stub.c main.c weather.c select_city.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o ${OBJECTDIR}/main.o ${OBJECTDIR}/weather.o ${OBJECTDIR}/select_city.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/ext_int.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d ${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d ${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d ${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d ${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d ${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d ${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/weather.o.d ${OBJECTDIR}/select_city.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o ${OBJECTDIR}/main.o ${OBJECTDIR}/weather.o ${OBJECTDIR}/select_city.o

# Source Files
SOURCEFILES=mcc_generated_files/ext_int.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c mcc_generated_files/traps.c mcc_generated_files/uart2.c WINC1500/Board_driver/wf_mcu_driver_stub.c WINC1500/Driver/wf_asic.c WINC1500/Driver/wf_hif.c WINC1500/Driver/wf_ota.c WINC1500/Driver/wf_socket.c WINC1500/Driver/wf_spi.c WINC1500/Driver/wf_spi_flash.c WINC1500/Driver/wf_utils.c WINC1500/Driver/wf_wifi.c WINC1500/Example/winc1500_fw_update_over_serial.c WINC1500/Example/winc1500_http_download.c WINC1500/Example/winc1500_locate_ip_address.c WINC1500/Example/winc1500_mac_address.c WINC1500/Example/winc1500_mode_ap.c WINC1500/Example/winc1500_mode_change.c WINC1500/Example/winc1500_mode_p2p.c WINC1500/Example/winc1500_mode_sta.c WINC1500/Example/winc1500_ota_firmware_update.c WINC1500/Example/winc1500_power_save_mode.c WINC1500/Example/winc1500_provision_http.c WINC1500/Example/winc1500_security_wep_wpa.c WINC1500/Example/winc1500_security_wps.c WINC1500/Example/winc1500_send_email.c WINC1500/Example/winc1500_signal_strength.c WINC1500/Example/winc1500_ssl_connect.c WINC1500/Example/winc1500_tcp_client.c WINC1500/Example/winc1500_tcp_server.c WINC1500/Example/winc1500_time_client.c WINC1500/Example/winc1500_weather_client.c WINC1500/Support/winc1500_support_stub.c main.c weather.c select_city.c



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
${OBJECTDIR}/mcc_generated_files/ext_int.o: mcc_generated_files/ext_int.c  .generated_files/flags/default/c01db34fdbc2a80894529a0165869c1046d4ecc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/ext_int.c  -o ${OBJECTDIR}/mcc_generated_files/ext_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/ext_int.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/df25444d89b2b5d8d1d5864f1536c26f3970478 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/45a8e5cd4542fcaed7b3dd42a5167c3186aedd6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/e4625931a2ff1c7260b7fed172696120bed38a5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/31eb509478672ce0abb3404d4f8813d990d9e18b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/bfc606ec7f804ce0487475d0c45b5938048cb5f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/8d52a842b892e717a26fabcda7eab751cc4ffa40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/e39e84f51a180908ec0761ba895e9d0b274fbd23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o: WINC1500/Board_driver/wf_mcu_driver_stub.c  .generated_files/flags/default/14f4aaa5af0448ec06a4d3a0b4ca8c444dc76d5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Board_driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Board_driver/wf_mcu_driver_stub.c  -o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_asic.o: WINC1500/Driver/wf_asic.c  .generated_files/flags/default/db39e0cb9fec44fed4c88ae738ef8e1a633a1081 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_asic.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_hif.o: WINC1500/Driver/wf_hif.c  .generated_files/flags/default/35739e9566701fe3aef2df54fe9a08d50748b28a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_hif.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_ota.o: WINC1500/Driver/wf_ota.c  .generated_files/flags/default/d4b0644cdd7db694d26dd09f179352f80dd56af5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_ota.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_socket.o: WINC1500/Driver/wf_socket.c  .generated_files/flags/default/1e53b3dc5c74d5b34d657834dfc50defc0de9293 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_socket.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi.o: WINC1500/Driver/wf_spi.c  .generated_files/flags/default/99c49900467a441983b1dc5f38da7733dabf8731 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o: WINC1500/Driver/wf_spi_flash.c  .generated_files/flags/default/49b7eb765ccfad849edcc5945eef26d6b0dcabd5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi_flash.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_utils.o: WINC1500/Driver/wf_utils.c  .generated_files/flags/default/75b2b9173692e6302138676d28594bf66a5e8656 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_utils.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_wifi.o: WINC1500/Driver/wf_wifi.c  .generated_files/flags/default/8a9eee37ba595e07771dedb3d909ad5a15867ec9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_wifi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o: WINC1500/Example/winc1500_fw_update_over_serial.c  .generated_files/flags/default/63f798917cd715a19798c6385a0df7824b5784b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_fw_update_over_serial.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o: WINC1500/Example/winc1500_http_download.c  .generated_files/flags/default/b7162daa68a5aedb0fe372f4cb0453e9fe926630 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_http_download.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o: WINC1500/Example/winc1500_locate_ip_address.c  .generated_files/flags/default/d45e1175601ed045d0f6288ff0993dab2d029d63 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_locate_ip_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o: WINC1500/Example/winc1500_mac_address.c  .generated_files/flags/default/18639ace87fb9d2f7b4390a4c4db8c9a6908f5bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mac_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o: WINC1500/Example/winc1500_mode_ap.c  .generated_files/flags/default/11dd44544c2198a9156805e63a014f545c037dbd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_ap.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o: WINC1500/Example/winc1500_mode_change.c  .generated_files/flags/default/76184297715109ec7c9061ea81fb9251db826424 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_change.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o: WINC1500/Example/winc1500_mode_p2p.c  .generated_files/flags/default/fb77434a93aadf9f96ac89fd617b1c2a0288d758 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_p2p.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o: WINC1500/Example/winc1500_mode_sta.c  .generated_files/flags/default/c8c1d043af9039de6f30d528a2749cb6dc2f87cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_sta.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o: WINC1500/Example/winc1500_ota_firmware_update.c  .generated_files/flags/default/af3e59a4ea8022106cff20648b84dd27a5959b91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ota_firmware_update.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o: WINC1500/Example/winc1500_power_save_mode.c  .generated_files/flags/default/4bfe09440357146e48beea5fad141a12e1eb111e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_power_save_mode.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o: WINC1500/Example/winc1500_provision_http.c  .generated_files/flags/default/5d19f675b4746723a5f27c5a49b912492eacd97f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_provision_http.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o: WINC1500/Example/winc1500_security_wep_wpa.c  .generated_files/flags/default/e4002a77385e599470b081b67a92c58b21a120d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wep_wpa.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o: WINC1500/Example/winc1500_security_wps.c  .generated_files/flags/default/7744e4cee35879106973d92bf2b925ea1dae0cb4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wps.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o: WINC1500/Example/winc1500_send_email.c  .generated_files/flags/default/9b3e94484a9cc9cc9244c6d74f9e9e749dea30a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_send_email.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o: WINC1500/Example/winc1500_signal_strength.c  .generated_files/flags/default/a3b156486830af00b190b31b994ec4f556030f28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_signal_strength.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o: WINC1500/Example/winc1500_ssl_connect.c  .generated_files/flags/default/5e3c34b64b830c366dcd50270220239601b6c36b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ssl_connect.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o: WINC1500/Example/winc1500_tcp_client.c  .generated_files/flags/default/1621111e395fce7afd14682c1042398709b71156 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o: WINC1500/Example/winc1500_tcp_server.c  .generated_files/flags/default/bab9a5adc20482528f3b42ec3a95fc66455b533 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_server.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o: WINC1500/Example/winc1500_time_client.c  .generated_files/flags/default/566ff8eb1b56bb2d82ff4e5623a925c169ccd103 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_time_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o: WINC1500/Example/winc1500_weather_client.c  .generated_files/flags/default/861e611800e358ea2db1503178a8477a2b1dfdf1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_weather_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o: WINC1500/Support/winc1500_support_stub.c  .generated_files/flags/default/2adb76807a5765e1a80e63f8141b030a533589c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Support" 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Support/winc1500_support_stub.c  -o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/ac7ba99da75d27f9ab0c13dfc985b6ded884154a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/weather.o: weather.c  .generated_files/flags/default/24eae0f96dd566c90be8f211eb51055da9457fe3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/weather.o.d 
	@${RM} ${OBJECTDIR}/weather.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  weather.c  -o ${OBJECTDIR}/weather.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/weather.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/select_city.o: select_city.c  .generated_files/flags/default/6d8067e31d34b40eddcd4f4e2aa7a04bf073392d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/select_city.o.d 
	@${RM} ${OBJECTDIR}/select_city.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  select_city.c  -o ${OBJECTDIR}/select_city.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/select_city.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/ext_int.o: mcc_generated_files/ext_int.c  .generated_files/flags/default/bbe21c82697000ce38f649622f4eac9d9794ca9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/ext_int.c  -o ${OBJECTDIR}/mcc_generated_files/ext_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/ext_int.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/b3a074d40f244bfcdf2d9c55ae5d036670cf6ea5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/4a885226dba09421fecffae5e8e7ab11fd39e1c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/aef86a4aad44c16798fadc45b1ef615f8f6ba6df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/4813ea29f969e7e5cea9e7b7ac82a72b06b466c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/380484e7cf6bd98e121c198decf1a8b4b84f2553 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/14d090e0ed77783a3eaf481d8fcc9ae713f3047d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/8df9e2459ca16e8fa167bada647745866962a103 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o: WINC1500/Board_driver/wf_mcu_driver_stub.c  .generated_files/flags/default/b2c7c55616252184d64474fcd25dc580671b8732 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Board_driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Board_driver/wf_mcu_driver_stub.c  -o ${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Board_driver/wf_mcu_driver_stub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_asic.o: WINC1500/Driver/wf_asic.c  .generated_files/flags/default/ccdc1810ca07ff4acf09e261bcad2420da84680c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_asic.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_asic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_hif.o: WINC1500/Driver/wf_hif.c  .generated_files/flags/default/f20e20bb914ce4186b28b8c3d4844a825ec208c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_hif.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_hif.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_ota.o: WINC1500/Driver/wf_ota.c  .generated_files/flags/default/ae593a806c4ad077a11619b346ed134e45f38794 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_ota.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_ota.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_socket.o: WINC1500/Driver/wf_socket.c  .generated_files/flags/default/5485cb1582ac520ec73b884756d732c35a64a5f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_socket.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_socket.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi.o: WINC1500/Driver/wf_spi.c  .generated_files/flags/default/30d40b9539c3afc6dbd3ef81f9686740cdf0219e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o: WINC1500/Driver/wf_spi_flash.c  .generated_files/flags/default/6dde57fc116d9dd18dbb91e3df09a108b0afa962 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_spi_flash.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_utils.o: WINC1500/Driver/wf_utils.c  .generated_files/flags/default/619dac8ad18894d5b641e37a9fae94a000043582 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_utils.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_utils.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Driver/wf_wifi.o: WINC1500/Driver/wf_wifi.c  .generated_files/flags/default/84bd57cd9b678e849b59fbc985da60e68f3c9d1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Driver" 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Driver/wf_wifi.c  -o ${OBJECTDIR}/WINC1500/Driver/wf_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Driver/wf_wifi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o: WINC1500/Example/winc1500_fw_update_over_serial.c  .generated_files/flags/default/1c11872f601737c8fd4f8e4c248fcf9cbb6fbfa0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_fw_update_over_serial.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_fw_update_over_serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o: WINC1500/Example/winc1500_http_download.c  .generated_files/flags/default/a98e0b94a5423a50bfce947218c4f7fad4d15110 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_http_download.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_http_download.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o: WINC1500/Example/winc1500_locate_ip_address.c  .generated_files/flags/default/894c6e4b92243595420e794114677126794b698a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_locate_ip_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_locate_ip_address.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o: WINC1500/Example/winc1500_mac_address.c  .generated_files/flags/default/f9de9fe1791310360c396ae8a572c90d7e7347b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mac_address.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mac_address.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o: WINC1500/Example/winc1500_mode_ap.c  .generated_files/flags/default/89ff0c095bffb13cb75803d71a8e17dc8555d0fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_ap.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_ap.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o: WINC1500/Example/winc1500_mode_change.c  .generated_files/flags/default/235c36ce15b4d14f18db23bc96c6dc79197da012 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_change.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_change.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o: WINC1500/Example/winc1500_mode_p2p.c  .generated_files/flags/default/de056f86165628e520eb70ad19350be66b52175d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_p2p.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_p2p.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o: WINC1500/Example/winc1500_mode_sta.c  .generated_files/flags/default/1b1f36f91de48ce4e8a5e29e56e0aaae671280ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_mode_sta.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_mode_sta.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o: WINC1500/Example/winc1500_ota_firmware_update.c  .generated_files/flags/default/21c356a429fdfb4af161b4e7cf5b581bdfe14e6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ota_firmware_update.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ota_firmware_update.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o: WINC1500/Example/winc1500_power_save_mode.c  .generated_files/flags/default/aa5858a345df6b59bdc57b09fb259e6f74735ff5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_power_save_mode.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_power_save_mode.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o: WINC1500/Example/winc1500_provision_http.c  .generated_files/flags/default/3ea49afa360536d3616d18fc889dbaa3505f2611 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_provision_http.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_provision_http.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o: WINC1500/Example/winc1500_security_wep_wpa.c  .generated_files/flags/default/c934805aa9f367a7862a4b7b2d5f0b32ae2ef5fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wep_wpa.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wep_wpa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o: WINC1500/Example/winc1500_security_wps.c  .generated_files/flags/default/d79dc982bc5da49db66a2a94931f7290588c6492 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_security_wps.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_security_wps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o: WINC1500/Example/winc1500_send_email.c  .generated_files/flags/default/2ccc9a2f48a5fb15e97c30f75915c2f1f104356c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_send_email.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_send_email.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o: WINC1500/Example/winc1500_signal_strength.c  .generated_files/flags/default/f3c97df69d1186472867b530893b319f67d5f88 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_signal_strength.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_signal_strength.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o: WINC1500/Example/winc1500_ssl_connect.c  .generated_files/flags/default/e50b645086debc8c7e9456bfc55c9d0c5fef9593 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_ssl_connect.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_ssl_connect.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o: WINC1500/Example/winc1500_tcp_client.c  .generated_files/flags/default/fbbfe23401bbf7d754b776a74f8792e28412e66c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o: WINC1500/Example/winc1500_tcp_server.c  .generated_files/flags/default/fff049d932b9639eec4a311aedab03e29ee005fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_tcp_server.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_tcp_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o: WINC1500/Example/winc1500_time_client.c  .generated_files/flags/default/2c6bebe9171bb202ebc2ea5729d1789c9d7d70a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_time_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_time_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o: WINC1500/Example/winc1500_weather_client.c  .generated_files/flags/default/3d8b07a3ced5ef8694140d79a67444a4c9ac885e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Example" 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Example/winc1500_weather_client.c  -o ${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Example/winc1500_weather_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o: WINC1500/Support/winc1500_support_stub.c  .generated_files/flags/default/f98af131ec9d7cd8ace3c122ab045e69f13148b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/WINC1500/Support" 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d 
	@${RM} ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WINC1500/Support/winc1500_support_stub.c  -o ${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WINC1500/Support/winc1500_support_stub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/6e7ce623bc8d86952c48f0b6ea248f2a81f2bbfc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/weather.o: weather.c  .generated_files/flags/default/5ebd1542e5829a01be31990467926f8486e8f78b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/weather.o.d 
	@${RM} ${OBJECTDIR}/weather.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  weather.c  -o ${OBJECTDIR}/weather.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/weather.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/select_city.o: select_city.c  .generated_files/flags/default/6748ce4ad3f3607059383d5cc18a3b6339c3aad2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/select_city.o.d 
	@${RM} ${OBJECTDIR}/select_city.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  select_city.c  -o ${OBJECTDIR}/select_city.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/select_city.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common" -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/WeatherStation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"WINC1500" -I"WINC1500/Board_driver" -I"WINC1500/Example" -I"WINC1500/Support" -I"WINC1500/Driver" -I"WINC1500/Timer1" -I"WINC1500/Common" -I"Common"     -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--heap=128,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
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
