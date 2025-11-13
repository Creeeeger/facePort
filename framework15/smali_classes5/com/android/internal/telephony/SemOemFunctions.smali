.class public interface abstract Lcom/android/internal/telephony/SemOemFunctions;
.super Ljava/lang/Object;
.source "SemOemFunctions.java"


# static fields
.field public static final blacklist OEM_ALLOCATE_PDU_SESSION_ID:I = 0x16

.field public static final blacklist OEM_AT_DISTRIBUTOR_START:I = 0xe

.field public static final blacklist OEM_AUTO_TCPDUMP_START:I = 0x18

.field public static final blacklist OEM_AUTO_TCPDUMP_STOP:I = 0x19

.field public static final blacklist OEM_BACKUP_FLAG_SET_REQUEST:I = 0x13

.field public static final blacklist OEM_BAKUPCHK_REQUEST:I = 0x12

.field public static final blacklist OEM_CALL_E911CB_MODE:I = 0x2

.field public static final blacklist OEM_CALL_GET_DTMFLENGTH:I = 0x8

.field public static final blacklist OEM_CALL_GET_LIFETIMECALL:I = 0xa

.field public static final blacklist OEM_CALL_GET_TOTAL_CALL_TIME:I = 0xe

.field public static final blacklist OEM_CALL_SEND_DTMF_STRING:I = 0x1

.field public static final blacklist OEM_CALL_SET_CALL_BLOCK_STATUS:I = 0x18

.field public static final blacklist OEM_CALL_SET_DTMFLENGTH:I = 0x7

.field public static final blacklist OEM_CALL_SET_LIFETIMECALL:I = 0xb

.field public static final blacklist OEM_CALL_SET_TOTAL_CALL_TIME:I = 0xd

.field public static final blacklist OEM_CALL_WFC_E911_TIMEOUT:I = 0xc

.field public static final blacklist OEM_CFG_AKEY_CMD_GET:I = 0x0

.field public static final blacklist OEM_CFG_AKEY_CMD_VERIFY:I = 0x1

.field public static final blacklist OEM_CFG_CDMA_DUN:I = 0x26

.field public static final blacklist OEM_CFG_CDMA_SVC:I = 0x25

.field public static final blacklist OEM_CFG_CDMA_TEST_SYS:I = 0x10

.field public static final blacklist OEM_CFG_CFRM_ACCELERATION_SENSOR_TEST:I = 0x6

.field public static final blacklist OEM_CFG_CFRM_BT_FACTORY_TEST:I = 0x3

.field public static final blacklist OEM_CFG_CFRM_WIFI_TEST:I = 0x2

.field public static final blacklist OEM_CFG_EXEC_DEFAULT:I = 0x1

.field public static final blacklist OEM_CFG_EXEC_EXTERNAL_DEVICE_STATUS:I = 0x31

.field public static final blacklist OEM_CFG_GET_CURRENT_UATI:I = 0x17

.field public static final blacklist OEM_CFG_GET_DGS_UNIQUENUMBER:I = 0x5

.field public static final blacklist OEM_CFG_GET_LAST_CALL_TIME:I = 0x42

.field public static final blacklist OEM_CFG_GET_MMS_PARAM:I = 0x32

.field public static final blacklist OEM_CFG_GET_MODEM_CAPABILITY:I = 0x44

.field public static final blacklist OEM_CFG_HIDDEN_ADVANCED_INFO:I = 0x28

.field public static final blacklist OEM_CFG_HIDDEN_PROGRAM_PARAM:I = 0x33

.field public static final blacklist OEM_CFG_SET_1X_EVDO_DIVERSITY_CONFIG:I = 0x22

.field public static final blacklist OEM_CFG_SET_AUDIO_LOOPBACK_TEST:I = 0x4

.field public static final blacklist OEM_CFG_SET_DEVICE_MAC_ADDRESS:I = 0x30

.field public static final blacklist OEM_CFG_SET_LAST_CALL_TIME:I = 0x41

.field public static final blacklist OEM_CFG_SET_MOBILEAP_STATUS:I = 0x27

.field public static final blacklist OEM_CFG_SET_MODEM_CAPABILITY:I = 0x43

.field public static final blacklist OEM_CFG_SET_TTY_MODE:I = 0x40

.field public static final blacklist OEM_CFG_SET_USER_LOCK_CODE_STATUS:I = 0x24

.field public static final blacklist OEM_CFG_SIO_MODE_SETTING:I = 0x8

.field public static final blacklist OEM_CP_FORCE_CRASH:I = 0x17

.field public static final blacklist OEM_CS_DIAG_TEST:I = 0x23

.field public static final blacklist OEM_DATA_GET_LLM_SETTINGS:I = 0x12

.field public static final blacklist OEM_DATA_SET_LLM_SETTINGS:I = 0x13

.field public static final blacklist OEM_DEL_RIL_LOG:I = 0xd

.field public static final blacklist OEM_DFT_CFRM:I = 0x6

.field public static final blacklist OEM_DFT_EVENT:I = 0x5

.field public static final blacklist OEM_DIAG_PST_UTS_CFRM:I = 0x10

.field public static final blacklist OEM_DIAG_PST_UTS_EVENT:I = 0xf

.field public static final blacklist OEM_DISP_SET_RSSI_NOTI:I = 0x1

.field public static final blacklist OEM_DOMESTIC_DELETE_STORED_CELL_LIST:I = 0x35

.field public static final blacklist OEM_DOMESTIC_EXEC_MOBILE_QUALITY_INFO:I = 0x24

.field public static final blacklist OEM_DOMESTIC_GET_BAND_MODE:I = 0x14

.field public static final blacklist OEM_DOMESTIC_GET_CHANNEL_SETTING:I = 0x2

.field public static final blacklist OEM_DOMESTIC_GET_CHANNEL_SETTING_LTE:I = 0x42

.field public static final blacklist OEM_DOMESTIC_GET_CHANNEL_SETTING_NR:I = 0x7a

.field public static final blacklist OEM_DOMESTIC_GET_GCF_TEST_MODE:I = 0xa

.field public static final blacklist OEM_DOMESTIC_GET_HSPA_SETTING:I = 0x6

.field public static final blacklist OEM_DOMESTIC_GET_LTE_CA:I = 0x44

.field public static final blacklist OEM_DOMESTIC_GET_LTE_CELL_INFO:I = 0x3e

.field public static final blacklist OEM_DOMESTIC_GET_LTE_ROAMING_STATUS:I = 0x76

.field public static final blacklist OEM_DOMESTIC_GET_LTE_RRC_SETTING:I = 0x8

.field public static final blacklist OEM_DOMESTIC_GET_MOBILE_QUALITY_INFO:I = 0x25

.field public static final blacklist OEM_DOMESTIC_GET_NR_CDRX_SETTING:I = 0x7c

.field public static final blacklist OEM_DOMESTIC_GET_PROTOCOL_FEATURE:I = 0x78

.field public static final blacklist OEM_DOMESTIC_GET_SECURITY_MODE:I = 0x4

.field public static final blacklist OEM_DOMESTIC_GET_USIM_LOCK:I = 0x48

.field public static final blacklist OEM_DOMESTIC_GET_WIPI_SYS_INFO:I = 0x2e

.field public static final blacklist OEM_DOMESTIC_NSRI_CHECK_USIMSTATE:I = 0x73

.field public static final blacklist OEM_DOMESTIC_NSRI_DECRYPTSMS_INTXSIDE:I = 0x72

.field public static final blacklist OEM_DOMESTIC_NSRI_DECRYPT_SMS:I = 0x71

.field public static final blacklist OEM_DOMESTIC_NSRI_ENCRYPT_SMS:I = 0x70

.field public static final blacklist OEM_DOMESTIC_NSRI_PROCESS:I = 0x60

.field public static final blacklist OEM_DOMESTIC_NSRI_REQ_PROC:I = 0x74

.field public static final blacklist OEM_DOMESTIC_PCSC_POWERUP:I = 0x26

.field public static final blacklist OEM_DOMESTIC_PCSC_TRANSMIT:I = 0x27

.field public static final blacklist OEM_DOMESTIC_SET_BAND_MODE:I = 0x13

.field public static final blacklist OEM_DOMESTIC_SET_CHANNEL_SETTING:I = 0x1

.field public static final blacklist OEM_DOMESTIC_SET_CHANNEL_SETTING_LTE:I = 0x41

.field public static final blacklist OEM_DOMESTIC_SET_CHANNEL_SETTING_NR:I = 0x79

.field public static final blacklist OEM_DOMESTIC_SET_GCF_TEST_MODE:I = 0x9

.field public static final blacklist OEM_DOMESTIC_SET_HSPA_SETTING:I = 0x5

.field public static final blacklist OEM_DOMESTIC_SET_INVITE_FLUSH:I = 0x18

.field public static final blacklist OEM_DOMESTIC_SET_KEEP_LTE_ICON_CSFB:I = 0xb

.field public static final blacklist OEM_DOMESTIC_SET_KT_HD_VOICE_STATUS:I = 0x61

.field public static final blacklist OEM_DOMESTIC_SET_LTE_CA:I = 0x43

.field public static final blacklist OEM_DOMESTIC_SET_LTE_ROAMING_STATUS:I = 0x75

.field public static final blacklist OEM_DOMESTIC_SET_LTE_RRC_SETTING:I = 0x7

.field public static final blacklist OEM_DOMESTIC_SET_NR_CDRX_SETTING:I = 0x7b

.field public static final blacklist OEM_DOMESTIC_SET_OTA_REG_MODE:I = 0x11

.field public static final blacklist OEM_DOMESTIC_SET_PROTOCOL_FEATURE:I = 0x77

.field public static final blacklist OEM_DOMESTIC_SET_SECURITY_MODE:I = 0x3

.field public static final blacklist OEM_DOMESTIC_SET_USIM_LOCK:I = 0x47

.field public static final blacklist OEM_DOMESTIC_START_OTA_NUM_REG:I = 0x19

.field public static final blacklist OEM_DOMESTIC_VOICE_CALL_STATUS:I = 0x37

.field public static final blacklist OEM_DPRAM_DUMP:I = 0xe

.field public static final blacklist OEM_DTT_CFRM:I = 0xb

.field public static final blacklist OEM_DTT_EVENT:I = 0xc

.field public static final blacklist OEM_DUMPSTATE:I = 0x3

.field public static final blacklist OEM_EMBMS_ACTIVATE_SESSION:I = 0x4

.field public static final blacklist OEM_EMBMS_ACTIVE_LOGPACKET_IDS:I = 0x10

.field public static final blacklist OEM_EMBMS_ACT_DEACT_SESSION:I = 0x6

.field public static final blacklist OEM_EMBMS_CONFIGURE_BSSI_NOTI_SESSION:I = 0x7

.field public static final blacklist OEM_EMBMS_DEACTIVATE_SESSION:I = 0x5

.field public static final blacklist OEM_EMBMS_DELIVER_LOG_PACKET:I = 0x11

.field public static final blacklist OEM_EMBMS_DISABLE_SERVICE:I = 0x3

.field public static final blacklist OEM_EMBMS_ENABLE_SERVICE:I = 0x2

.field public static final blacklist OEM_EMBMS_GET_ACTIVATE_TMGI_LIST:I = 0xa

.field public static final blacklist OEM_EMBMS_GET_AVAIL_TMGI_LIST:I = 0x9

.field public static final blacklist OEM_EMBMS_GET_INTERESTED_TMGI:I = 0x18

.field public static final blacklist OEM_EMBMS_GET_MCPTT_CELL_ID:I = 0x19

.field public static final blacklist OEM_EMBMS_GET_MCPTT_SAI:I = 0x1a

.field public static final blacklist OEM_EMBMS_GET_SIB16_COVERAGE_RESPONSE:I = 0xd

.field public static final blacklist OEM_EMBMS_GET_SIB16_NETWORK_TIME_FOR_DASH:I = 0x12

.field public static final blacklist OEM_EMBMS_GET_SIG_STRENGTH:I = 0x8

.field public static final blacklist OEM_EMBMS_GET_TIME_RESPONSE:I = 0xb

.field public static final blacklist OEM_EMBMS_INITALIZE:I = 0x1

.field public static final blacklist OEM_EMBMS_SET_MCPTT_SIG_THRESHOLD:I = 0x1b

.field public static final blacklist OEM_EMBMS_SET_TIME_RESPONSE:I = 0xf

.field public static final blacklist OEM_EMBMS_SIB16_COVERAGE_REQUEST:I = 0xc

.field public static final blacklist OEM_EMBMS_SNTP_CLIENT_RESPONSE:I = 0xe

.field public static final blacklist OEM_FACTORY_CFRM:I = 0x2

.field public static final blacklist OEM_FACTORY_EVENT:I = 0x1

.field public static final blacklist OEM_FACTORY_EXEC_SEMI_FINAL_TEST:I = 0x18

.field public static final blacklist OEM_FACTORY_GET_SEMI_FINAL_TEST:I = 0x19

.field public static final blacklist OEM_FACTORY_SET_RSSI_DATA:I = 0x20

.field public static final blacklist OEM_FACTORY_SLATE_TEST:I = 0x17

.field public static final blacklist OEM_FUNCTION_ID_AUTOMATION_TEST:I = 0x56

.field public static final blacklist OEM_FUNCTION_ID_CALL:I = 0xb

.field public static final blacklist OEM_FUNCTION_ID_CONFIGURATION:I = 0xc

.field public static final blacklist OEM_FUNCTION_ID_CP_IMS:I = 0xf

.field public static final blacklist OEM_FUNCTION_ID_CP_LOGGING:I = 0x57

.field public static final blacklist OEM_FUNCTION_ID_DATA:I = 0xd

.field public static final blacklist OEM_FUNCTION_ID_DISP:I = 0x18

.field public static final blacklist OEM_FUNCTION_ID_DOMESTIC:I = 0x16

.field public static final blacklist OEM_FUNCTION_ID_EMBMS:I = 0x52

.field public static final blacklist OEM_FUNCTION_ID_FACTORY:I = 0x12

.field public static final blacklist OEM_FUNCTION_ID_GPRS:I = 0x9

.field public static final blacklist OEM_FUNCTION_ID_GPS:I = 0xe

.field public static final blacklist OEM_FUNCTION_ID_HIDDENMENU:I = 0x51

.field public static final blacklist OEM_FUNCTION_ID_IMEI:I = 0x6

.field public static final blacklist OEM_FUNCTION_ID_IMS:I = 0x22

.field public static final blacklist OEM_FUNCTION_ID_JPN:I = 0x23

.field public static final blacklist OEM_FUNCTION_ID_MBIM:I = 0x70

.field public static final blacklist OEM_FUNCTION_ID_MCPTT:I = 0x55

.field public static final blacklist OEM_FUNCTION_ID_MISC:I = 0x11

.field public static final blacklist OEM_FUNCTION_ID_MMS:I = 0x24

.field public static final blacklist OEM_FUNCTION_ID_NETWORK:I = 0x2

.field public static final blacklist OEM_FUNCTION_ID_OES:I = 0x26

.field public static final blacklist OEM_FUNCTION_ID_OMADM:I = 0xa

.field public static final blacklist OEM_FUNCTION_ID_PERSONALIZATION:I = 0x4

.field public static final blacklist OEM_FUNCTION_ID_PHONE:I = 0x10

.field public static final blacklist OEM_FUNCTION_ID_POWER:I = 0x5

.field public static final blacklist OEM_FUNCTION_ID_PROSE:I = 0x53

.field public static final blacklist OEM_FUNCTION_ID_RFS:I = 0x13

.field public static final blacklist OEM_FUNCTION_ID_RMTUIM:I = 0x54

.field public static final blacklist OEM_FUNCTION_ID_SAP:I = 0x14

.field public static final blacklist OEM_FUNCTION_ID_SMARTAS:I = 0x20

.field public static final blacklist OEM_FUNCTION_ID_SMS:I = 0x25

.field public static final blacklist OEM_FUNCTION_ID_SOUND:I = 0x8

.field public static final blacklist OEM_FUNCTION_ID_SS:I = 0x3

.field public static final blacklist OEM_FUNCTION_ID_SVC_MODE:I = 0x1

.field public static final blacklist OEM_FUNCTION_ID_SYSDUMP:I = 0x7

.field public static final blacklist OEM_FUNCTION_ID_UICC:I = 0x15

.field public static final blacklist OEM_GCF_MODE_GET:I = 0xf

.field public static final blacklist OEM_GCF_MODE_SET:I = 0x10

.field public static final blacklist OEM_GET_ATR:I = 0xd

.field public static final blacklist OEM_GPRS_ALWAYS_ON_PDN:I = 0x10

.field public static final blacklist OEM_GPRS_CHANGE_PROFILE_REQ:I = 0x5

.field public static final blacklist OEM_GPRS_EXEC_DUN_PIN_CTRL:I = 0x2

.field public static final blacklist OEM_GPRS_GET_DATA_STALL_BIGDATA:I = 0x19

.field public static final blacklist OEM_GPRS_IMS_REATTACH_NOTI:I = 0xb

.field public static final blacklist OEM_GPRS_IMS_TESTMODE:I = 0xf

.field public static final blacklist OEM_GPRS_REATTACH:I = 0xc

.field public static final blacklist OEM_GPRS_SET_PROC_TYPE_INFO:I = 0x18

.field public static final blacklist OEM_GPRS_SET_TETHER_STATE:I = 0x14

.field public static final blacklist OEM_GPRS_START_HANDOVER:I = 0x15

.field public static final blacklist OEM_HEAP_DUMP_MEMINFO:I = 0x1c

.field public static final blacklist OEM_HIDDEN_AKEY_GET:I = 0x38

.field public static final blacklist OEM_HIDDEN_AKEY_VERIFY:I = 0x1

.field public static final blacklist OEM_HIDDEN_END_TEST_CALL:I = 0x9

.field public static final blacklist OEM_HIDDEN_EXEC_MSL:I = 0x64

.field public static final blacklist OEM_HIDDEN_GET_ACTIVATIONDATE:I = 0xd

.field public static final blacklist OEM_HIDDEN_GET_AUTH:I = 0x36

.field public static final blacklist OEM_HIDDEN_GET_AUTONOMOUS_GAP:I = 0x74

.field public static final blacklist OEM_HIDDEN_GET_BAND25_ENABLED:I = 0x55

.field public static final blacklist OEM_HIDDEN_GET_BAND25_PRIORITY:I = 0x51

.field public static final blacklist OEM_HIDDEN_GET_BAND26_ENABLED:I = 0x3d

.field public static final blacklist OEM_HIDDEN_GET_BAND41_ENABLED:I = 0x3f

.field public static final blacklist OEM_HIDDEN_GET_BAND41_TX_SWITCHING_DIVERSITY:I = 0x68

.field public static final blacklist OEM_HIDDEN_GET_BANDCLASS:I = 0x3b

.field public static final blacklist OEM_HIDDEN_GET_BAND_ENABLED:I = 0x65

.field public static final blacklist OEM_HIDDEN_GET_BAND_PRIORITY:I = 0x6e

.field public static final blacklist OEM_HIDDEN_GET_BAND_PROVISIONED:I = 0x53

.field public static final blacklist OEM_HIDDEN_GET_CARRIER_PWRONOFF_IMAGE_STATUS:I = 0x63

.field public static final blacklist OEM_HIDDEN_GET_CARRIER_WALLPAPER_STATUS:I = 0x62

.field public static final blacklist OEM_HIDDEN_GET_CA_CONFIG:I = 0x72

.field public static final blacklist OEM_HIDDEN_GET_CA_ENABLED:I = 0x6c

.field public static final blacklist OEM_HIDDEN_GET_CP_FEATURE:I = 0x80

.field public static final blacklist OEM_HIDDEN_GET_DDTM_MODE:I = 0x16

.field public static final blacklist OEM_HIDDEN_GET_HVOLTE_TEST_MODE:I = 0x71

.field public static final blacklist OEM_HIDDEN_GET_HYBRID_MODE:I = 0x7

.field public static final blacklist OEM_HIDDEN_GET_LASTTIMECALL:I = 0x39

.field public static final blacklist OEM_HIDDEN_GET_LIFEBYTE:I = 0xb

.field public static final blacklist OEM_HIDDEN_GET_LIFETIMECALL:I = 0xa

.field public static final blacklist OEM_HIDDEN_GET_LTE_HPUE:I = 0x76

.field public static final blacklist OEM_HIDDEN_GET_LTE_ROAMING_ENABLED:I = 0x6a

.field public static final blacklist OEM_HIDDEN_GET_MOBILEIPNAI:I = 0xe

.field public static final blacklist OEM_HIDDEN_GET_MODEM_NAI:I = 0x10

.field public static final blacklist OEM_HIDDEN_GET_MRDMODE:I = 0x1b

.field public static final blacklist OEM_HIDDEN_GET_MSL:I = 0x2

.field public static final blacklist OEM_HIDDEN_GET_OPERATOR:I = 0x60

.field public static final blacklist OEM_HIDDEN_GET_PCI_EARFCN_LOCK:I = 0x78

.field public static final blacklist OEM_HIDDEN_GET_QPAGING:I = 0x32

.field public static final blacklist OEM_HIDDEN_GET_RC_DATA:I = 0x5

.field public static final blacklist OEM_HIDDEN_GET_RECONDITIONED:I = 0xc

.field public static final blacklist OEM_HIDDEN_GET_SIMLOCK:I = 0x42

.field public static final blacklist OEM_HIDDEN_GET_SIMLOCK_NONCE:I = 0x18

.field public static final blacklist OEM_HIDDEN_GET_SIM_UICCID:I = 0x44

.field public static final blacklist OEM_HIDDEN_GET_SLOT_MODE:I = 0x30

.field public static final blacklist OEM_HIDDEN_GET_SSD:I = 0x6f

.field public static final blacklist OEM_HIDDEN_GET_VERSION:I = 0x14

.field public static final blacklist OEM_HIDDEN_GET_VOICEMAIL_NUM:I = 0x61

.field public static final blacklist OEM_HIDDEN_GET_VOICE_SO:I = 0x34

.field public static final blacklist OEM_HIDDEN_GET_WDC:I = 0x1c

.field public static final blacklist OEM_HIDDEN_GET_WORKING_MODE:I = 0x12

.field public static final blacklist OEM_HIDDEN_SET_AUTH:I = 0x37

.field public static final blacklist OEM_HIDDEN_SET_AUTONOMOUS_GAP:I = 0x75

.field public static final blacklist OEM_HIDDEN_SET_BAND25_ENABLED:I = 0x54

.field public static final blacklist OEM_HIDDEN_SET_BAND25_PRIORITY:I = 0x50

.field public static final blacklist OEM_HIDDEN_SET_BAND26_ENABLED:I = 0x3c

.field public static final blacklist OEM_HIDDEN_SET_BAND41_ENABLED:I = 0x3e

.field public static final blacklist OEM_HIDDEN_SET_BAND41_TX_SWITCHING_DIVERSITY:I = 0x67

.field public static final blacklist OEM_HIDDEN_SET_BANDCLASS:I = 0x3a

.field public static final blacklist OEM_HIDDEN_SET_BAND_ENABLED:I = 0x66

.field public static final blacklist OEM_HIDDEN_SET_BAND_PRIORITY:I = 0x6d

.field public static final blacklist OEM_HIDDEN_SET_BAND_PROVISIONED:I = 0x52

.field public static final blacklist OEM_HIDDEN_SET_CA_CONFIG:I = 0x73

.field public static final blacklist OEM_HIDDEN_SET_CA_ENABLED:I = 0x6b

.field public static final blacklist OEM_HIDDEN_SET_CP_FEATURE:I = 0x81

.field public static final blacklist OEM_HIDDEN_SET_DDTM_MODE:I = 0x17

.field public static final blacklist OEM_HIDDEN_SET_HVOLTE_TEST_MODE:I = 0x70

.field public static final blacklist OEM_HIDDEN_SET_HYBRID_MODE:I = 0x8

.field public static final blacklist OEM_HIDDEN_SET_LTE_HPUE:I = 0x77

.field public static final blacklist OEM_HIDDEN_SET_LTE_ROAMING_ENABLED:I = 0x69

.field public static final blacklist OEM_HIDDEN_SET_MOBILEIPNAI:I = 0xf

.field public static final blacklist OEM_HIDDEN_SET_MODEM_NAI:I = 0x11

.field public static final blacklist OEM_HIDDEN_SET_MRDMODE:I = 0x1a

.field public static final blacklist OEM_HIDDEN_SET_PCI_EARFCN_LOCK:I = 0x79

.field public static final blacklist OEM_HIDDEN_SET_QPAGING:I = 0x33

.field public static final blacklist OEM_HIDDEN_SET_RC_DATA:I = 0x6

.field public static final blacklist OEM_HIDDEN_SET_SIMLOCK:I = 0x41

.field public static final blacklist OEM_HIDDEN_SET_SIMLOCK_PAYLOAD:I = 0x19

.field public static final blacklist OEM_HIDDEN_SET_SIM_UICCID:I = 0x43

.field public static final blacklist OEM_HIDDEN_SET_SLOT_MODE:I = 0x31

.field public static final blacklist OEM_HIDDEN_SET_TEST_CALL:I = 0x4

.field public static final blacklist OEM_HIDDEN_SET_VOICE_SO:I = 0x35

.field public static final blacklist OEM_HIDDEN_SET_WORKING_MODE:I = 0x13

.field public static final blacklist OEM_IMEI_BOOT_COMPLETED_INTENT:I = 0x10

.field public static final blacklist OEM_IMEI_CFRM_UPDATE_ITEM:I = 0x8

.field public static final blacklist OEM_IMEI_EVENT_START_IMEI:I = 0x5

.field public static final blacklist OEM_IMEI_EVENT_VERIFY_COMPARE:I = 0x6

.field public static final blacklist OEM_IMEI_FIRSTBOOT_PRECONFIG:I = 0xf

.field public static final blacklist OEM_IMEI_GET_PRECONFIGURAION:I = 0x9

.field public static final blacklist OEM_IMEI_GET_WRITE_ITEM:I = 0x3

.field public static final blacklist OEM_IMEI_NOTIFY_SET_ACTIVATE_ID:I = 0xc

.field public static final blacklist OEM_IMEI_OEM_IMEI_MODEM_PRECONFIG:I = 0x11

.field public static final blacklist OEM_IMEI_READ_ACTIVATE_ID:I = 0xd

.field public static final blacklist OEM_IMEI_REBOOTON_SVN_UPDATE:I = 0xa

.field public static final blacklist OEM_IMEI_RESET_ACTIVATE_ID:I = 0xb

.field public static final blacklist OEM_IMEI_RESP_FILE_NUM:I = 0x4

.field public static final blacklist OEM_IMEI_SET_PRECONFIGURAION:I = 0x1

.field public static final blacklist OEM_IMEI_SET_UPDATE_ITEM:I = 0x7

.field public static final blacklist OEM_IMEI_SET_WRITE_ITEM:I = 0x2

.field public static final blacklist OEM_IMEI_SIM_MOBILITY_PRECONFIG:I = 0xe

.field public static final blacklist OEM_IPC_DUMP_BIN:I = 0x9

.field public static final blacklist OEM_IPC_DUMP_LOG:I = 0x8

.field public static final blacklist OEM_JPN_KDDI_BLOB_READ:I = 0x6

.field public static final blacklist OEM_JPN_KDDI_BLOB_WRITE:I = 0x5

.field public static final blacklist OEM_KERNEL_LOG:I = 0x4

.field public static final blacklist OEM_LOGCAT_CLEAR:I = 0x5

.field public static final blacklist OEM_LOGCAT_MAIN:I = 0x1

.field public static final blacklist OEM_LOGCAT_RADIO:I = 0x2

.field public static final blacklist OEM_MBIM_DATA_QUERY_CONNECT:I = 0x21

.field public static final blacklist OEM_MBIM_DATA_QUERY_IP_CONFIG:I = 0x22

.field public static final blacklist OEM_MBIM_DATA_QUERY_PACKET_SERVICE:I = 0x23

.field public static final blacklist OEM_MBIM_DATA_QUERY_PROVISIONED_CONTEXT:I = 0x25

.field public static final blacklist OEM_MBIM_DATA_SET_CONNECT:I = 0x20

.field public static final blacklist OEM_MBIM_DATA_SET_PACKET_SERVICE:I = 0x24

.field public static final blacklist OEM_MBIM_DATA_SET_PROVISIONED_CONTEXT:I = 0x26

.field public static final blacklist OEM_MBIM_MISC_QUERY_DEVICE_CAPS:I = 0x40

.field public static final blacklist OEM_MBIM_MISC_SAMSUNG_IPC:I = 0x41

.field public static final blacklist OEM_MBIM_MS_QUERY_DEVICE_CAPS_V2:I = 0x65

.field public static final blacklist OEM_MBIM_MS_QUERY_LTE_ATTACH_CONFIG:I = 0x60

.field public static final blacklist OEM_MBIM_MS_QUERY_LTE_ATTACH_STATUS:I = 0x62

.field public static final blacklist OEM_MBIM_MS_QUERY_MBIM_VERSION:I = 0x74

.field public static final blacklist OEM_MBIM_MS_QUERY_PROVISIONED_CONTEXT_V2:I = 0x75

.field public static final blacklist OEM_MBIM_MS_QUERY_SLOT_INFO_STATUS:I = 0x67

.field public static final blacklist OEM_MBIM_MS_QUERY_SYS_CAPS_INFO:I = 0x64

.field public static final blacklist OEM_MBIM_MS_SET_HOSTPRESHUTDOWN:I = 0x77

.field public static final blacklist OEM_MBIM_MS_SET_LTE_ATTACH_CONFIG:I = 0x61

.field public static final blacklist OEM_MBIM_MS_SET_PROVISIONED_CONTEXT_V2:I = 0x76

.field public static final blacklist OEM_MBIM_NET_QUERY_HOME_PROVIDER:I = 0x34

.field public static final blacklist OEM_MBIM_NET_QUERY_REG_STATE:I = 0x30

.field public static final blacklist OEM_MBIM_NET_QUERY_SIGNAL_STATE:I = 0x32

.field public static final blacklist OEM_MBIM_NET_SET_HOME_PROVIDER:I = 0x35

.field public static final blacklist OEM_MBIM_NET_SET_REG_STATE:I = 0x31

.field public static final blacklist OEM_MBIM_NET_SET_SIGNAL_STATE:I = 0x33

.field public static final blacklist OEM_MBIM_PWR_QUERY_MODE:I = 0x1

.field public static final blacklist OEM_MBIM_PWR_SET_MODE:I = 0x0

.field public static final blacklist OEM_MBIM_QUERY_AKA_AUTH:I = 0x50

.field public static final blacklist OEM_MBIM_QUERY_SIM_AUTH:I = 0x52

.field public static final blacklist OEM_MBIM_SMS_QUERY_CONFIGURATION:I = 0x53

.field public static final blacklist OEM_MBIM_SMS_QUERY_STORE_STATUS:I = 0x58

.field public static final blacklist OEM_MBIM_SMS_SET_CONFIGURATION:I = 0x54

.field public static final blacklist OEM_MBIM_SMS_SET_DELETE:I = 0x57

.field public static final blacklist OEM_MBIM_UICC_QUERY_PIN_LIST:I = 0x13

.field public static final blacklist OEM_MBIM_UICC_QUERY_PIN_STATUS:I = 0x10

.field public static final blacklist OEM_MBIM_UICC_QUERY_SUBSCRIBER_STATUS:I = 0x12

.field public static final blacklist OEM_MBIM_UICC_SET_PIN_STATUS:I = 0x11

.field public static final blacklist OEM_MD5_REQUEST:I = 0x11

.field public static final blacklist OEM_MISCELLANEOUS_CFRM:I = 0x8

.field public static final blacklist OEM_MISCELLANEOUS_EVENT:I = 0x7

.field public static final blacklist OEM_MISCELLANEOUS_EXEC_TESTCOMMAND:I = 0x9

.field public static final blacklist OEM_MISC_AT_CMD_FORWARD_RESULT:I = 0x61

.field public static final blacklist OEM_MISC_CP_INFO_FOR_ATC:I = 0x7a

.field public static final blacklist OEM_MISC_CP_POSITION:I = 0x62

.field public static final blacklist OEM_MISC_CP_TRAJECTORY_TRACKING:I = 0x69

.field public static final blacklist OEM_MISC_ELEVATOR_STATUS_EVENT:I = 0xa3

.field public static final blacklist OEM_MISC_ESIM_LOCK_STATUS:I = 0x96

.field public static final blacklist OEM_MISC_EVENT_COMBO_ESE_BUSY:I = 0xa2

.field public static final blacklist OEM_MISC_EVENT_CONTROL_CP_MODE:I = 0x98

.field public static final blacklist OEM_MISC_FORCE_CP_RESET:I = 0x67

.field public static final blacklist OEM_MISC_GET_1X_SVC_DELAY_TIMER:I = 0x2b

.field public static final blacklist OEM_MISC_GET_ANTENNA_TEST:I = 0x6

.field public static final blacklist OEM_MISC_GET_AP_GPS_POSITION:I = 0x72

.field public static final blacklist OEM_MISC_GET_BARCODE:I = 0x13

.field public static final blacklist OEM_MISC_GET_CA_PROPERTY:I = 0x64

.field public static final blacklist OEM_MISC_GET_CDMA_PROPERTY:I = 0x16

.field public static final blacklist OEM_MISC_GET_CP_MODULE_TEMP:I = 0x9

.field public static final blacklist OEM_MISC_GET_CP_POWER_METER:I = 0x8

.field public static final blacklist OEM_MISC_GET_CP_SPD_STATUS:I = 0x74

.field public static final blacklist OEM_MISC_GET_DEVICE_CONFIG:I = 0xa5

.field public static final blacklist OEM_MISC_GET_GPIODVS_DATA:I = 0x51

.field public static final blacklist OEM_MISC_GET_GRIP_SENSOR_INFO:I = 0x70

.field public static final blacklist OEM_MISC_GET_IMEI:I = 0xaa

.field public static final blacklist OEM_MISC_GET_MANUFACTUREDATE:I = 0x12

.field public static final blacklist OEM_MISC_GET_MPSR_TIMER:I = 0x21

.field public static final blacklist OEM_MISC_GET_NETWORK_QUALITY_INFO:I = 0x92

.field public static final blacklist OEM_MISC_GET_PLMN_BARRING_TIMER:I = 0x85

.field public static final blacklist OEM_MISC_GET_RADIO_FREQ:I = 0x86

.field public static final blacklist OEM_MISC_GET_RF_MIPI_INFO:I = 0x81

.field public static final blacklist OEM_MISC_GET_RIL_STATUS:I = 0xa0

.field public static final blacklist OEM_MISC_GET_SAT_IMEI:I = 0xae

.field public static final blacklist OEM_MISC_GET_SERIALNUMBER:I = 0x11

.field public static final blacklist OEM_MISC_GET_SIB_INFO:I = 0x66

.field public static final blacklist OEM_MISC_GET_SIM_CHECK:I = 0xa1

.field public static final blacklist OEM_MISC_GET_TIME:I = 0x1

.field public static final blacklist OEM_MISC_GET_WIFI_STATE:I = 0x91

.field public static final blacklist OEM_MISC_INTELLIGENT_PROXIMITY:I = 0x93

.field public static final blacklist OEM_MISC_POA_DELETE_GUTI:I = 0x68

.field public static final blacklist OEM_MISC_REQUEST_ANTENNA_SENSOR_STATUS:I = 0x97

.field public static final blacklist OEM_MISC_SECURE_SIMLOCK:I = 0x63

.field public static final blacklist OEM_MISC_SEND_AM:I = 0x80

.field public static final blacklist OEM_MISC_SEND_CP_FEATURE:I = 0x78

.field public static final blacklist OEM_MISC_SEND_RILD_BOOT_TYPE:I = 0xab

.field public static final blacklist OEM_MISC_SEND_SVN:I = 0x79

.field public static final blacklist OEM_MISC_SEND_UAI_INFO:I = 0xac

.field public static final blacklist OEM_MISC_SET_1X_SVC_DELAY_TIMER:I = 0x2c

.field public static final blacklist OEM_MISC_SET_ANTENNA_TEST:I = 0x7

.field public static final blacklist OEM_MISC_SET_BLK_CP_THERMAL:I = 0xa8

.field public static final blacklist OEM_MISC_SET_CAMERA_STATE:I = 0x83

.field public static final blacklist OEM_MISC_SET_CA_PROPERTY:I = 0x65

.field public static final blacklist OEM_MISC_SET_CDMA_PROPERTY:I = 0x17

.field public static final blacklist OEM_MISC_SET_CP_SPD_STATUS:I = 0x75

.field public static final blacklist OEM_MISC_SET_DEVICE_CONFIG:I = 0xa4

.field public static final blacklist OEM_MISC_SET_DEVICE_POSITION:I = 0x14

.field public static final blacklist OEM_MISC_SET_ECHOLOCATE_STATUS:I = 0x73

.field public static final blacklist OEM_MISC_SET_FD_SETTING:I = 0xa6

.field public static final blacklist OEM_MISC_SET_GRIP_SENSOR_INFO:I = 0x71

.field public static final blacklist OEM_MISC_SET_LOGGING_TIME:I = 0x2

.field public static final blacklist OEM_MISC_SET_MPSR_TIMER:I = 0x22

.field public static final blacklist OEM_MISC_SET_NB_IOT_NTN_SMS_SUPPORT:I = 0xad

.field public static final blacklist OEM_MISC_SET_PERFORMANCE_MODE:I = 0xa7

.field public static final blacklist OEM_MISC_SET_PLMN_BARRING_TIMER:I = 0x84

.field public static final blacklist OEM_MISC_SET_RMPC:I = 0x32

.field public static final blacklist OEM_MISC_SET_SPECIAL_MODE_CONTROL:I = 0x77

.field public static final blacklist OEM_MISC_SET_SSU_MSG:I = 0x94

.field public static final blacklist OEM_MISC_SET_TRANSMIT_POWER:I = 0x82

.field public static final blacklist OEM_MISC_SET_TRANSMIT_POWER_DSI:I = 0xa9

.field public static final blacklist OEM_MISC_SET_VTCALL_CONNTEION_STATUS:I = 0x15

.field public static final blacklist OEM_MISC_SET_WIFI_STATE:I = 0x90

.field public static final blacklist OEM_MISC_SILENT_LOGGING_CONTROL:I = 0x40

.field public static final blacklist OEM_MISC_SIPC_SIMULATOR:I = 0x99

.field public static final blacklist OEM_MISC_STORE_ESN:I = 0x95

.field public static final blacklist OEM_MMB_NV_INFO_NONE:I = -0x1

.field public static final blacklist OEM_MMS_PROVISION_GET_ITEM_DATA:I = 0x1

.field public static final blacklist OEM_MODEM_LOG:I = 0x12

.field public static final blacklist OEM_NET_CANCEL_AVAILABLE_NETWORK:I = 0x3

.field public static final blacklist OEM_NET_CANCEL_QUERY_CSG_LIST:I = 0x96

.field public static final blacklist OEM_NET_CLEAR_LTE_SCAN_FILE:I = 0x21

.field public static final blacklist OEM_NET_CONTROL_MEASUREMENT_REPORT:I = 0x42

.field public static final blacklist OEM_NET_FORCE_UPDATE_CELL_INFO:I = 0x7d

.field public static final blacklist OEM_NET_GET_1XPSACTDUR:I = 0x72

.field public static final blacklist OEM_NET_GET_1XPSDORMANCY:I = 0x74

.field public static final blacklist OEM_NET_GET_1XTOLTE_ENABLED:I = 0x70

.field public static final blacklist OEM_NET_GET_ACTIVE_DRX:I = 0x2e

.field public static final blacklist OEM_NET_GET_AVAILABLE_NETWORK:I = 0x1

.field public static final blacklist OEM_NET_GET_BAND_MODE:I = 0x7

.field public static final blacklist OEM_NET_GET_DRX:I = 0x2c

.field public static final blacklist OEM_NET_GET_EXTENDED_BAND_MODE:I = 0x30

.field public static final blacklist OEM_NET_GET_LTEHDRSCAN_INT:I = 0x7a

.field public static final blacklist OEM_NET_GET_LTE_BSR_MAXSTAGE:I = 0x28

.field public static final blacklist OEM_NET_GET_LTE_BSR_MAXTIMER:I = 0x26

.field public static final blacklist OEM_NET_GET_LTE_BSR_RPT_CNT:I = 0x2a

.field public static final blacklist OEM_NET_GET_LTE_BSR_TIMER:I = 0x24

.field public static final blacklist OEM_NET_GET_LTE_SCANF_FILE:I = 0x20

.field public static final blacklist OEM_NET_GET_LTE_SCAN_TIMER:I = 0x22

.field public static final blacklist OEM_NET_GET_MAX_SCAN_TIME:I = 0x76

.field public static final blacklist OEM_NET_GET_MODEM_CAP:I = 0x61

.field public static final blacklist OEM_NET_GET_NETWORK_QUALITY:I = 0x85

.field public static final blacklist OEM_NET_GET_NETWORK_SELECTION_MODE:I = 0x6

.field public static final blacklist OEM_NET_GET_NR5G_FULL_VOICE_SUPPORT:I = 0x87

.field public static final blacklist OEM_NET_GET_NR_DISABLE_MODE:I = 0x84

.field public static final blacklist OEM_NET_GET_OPERATOR:I = 0xa

.field public static final blacklist OEM_NET_GET_SERVICE_DOMAIN:I = 0x5

.field public static final blacklist OEM_NET_GET_UED2LREDIR_ENABLED:I = 0x78

.field public static final blacklist OEM_NET_RESET_NETWORK_SETTING:I = 0x97

.field public static final blacklist OEM_NET_SELECT_CSG_AUTO:I = 0xb

.field public static final blacklist OEM_NET_SET_1XPSACTDUR:I = 0x73

.field public static final blacklist OEM_NET_SET_1XPSDORMANCY:I = 0x75

.field public static final blacklist OEM_NET_SET_1XTOLTE_ENABLED:I = 0x71

.field public static final blacklist OEM_NET_SET_AUTOMATIC_SELECTION_BY_EFCSP:I = 0x9

.field public static final blacklist OEM_NET_SET_BAND_MODE:I = 0x8

.field public static final blacklist OEM_NET_SET_CALL_PREF_CHANGE:I = 0x8c

.field public static final blacklist OEM_NET_SET_DEPRIORITIZE_NR5G:I = 0x40

.field public static final blacklist OEM_NET_SET_DEPRIORITIZE_NR5G_W2L_HO:I = 0x90

.field public static final blacklist OEM_NET_SET_DRX:I = 0x2d

.field public static final blacklist OEM_NET_SET_EXTENDED_BAND_MODE:I = 0x31

.field public static final blacklist OEM_NET_SET_IMS_CALL_STATE:I = 0x7c

.field public static final blacklist OEM_NET_SET_IMS_CALL_STATE_FOR_UAC:I = 0x8b

.field public static final blacklist OEM_NET_SET_IMS_PROC_TYPE_REQ:I = 0x8a

.field public static final blacklist OEM_NET_SET_LTEHDRSCAN_INT:I = 0x7b

.field public static final blacklist OEM_NET_SET_LTE_BSR_MAXSTAGE:I = 0x29

.field public static final blacklist OEM_NET_SET_LTE_BSR_MAXTIMER:I = 0x27

.field public static final blacklist OEM_NET_SET_LTE_BSR_RTP_CNT:I = 0x2b

.field public static final blacklist OEM_NET_SET_LTE_BSR_TIMER:I = 0x25

.field public static final blacklist OEM_NET_SET_LTE_PROC_TYPE:I = 0x80

.field public static final blacklist OEM_NET_SET_LTE_SCAN_TIMER:I = 0x23

.field public static final blacklist OEM_NET_SET_MANUAL_SELECTION:I = 0x2

.field public static final blacklist OEM_NET_SET_MAX_SCAN_TIME:I = 0x77

.field public static final blacklist OEM_NET_SET_MMS_MODE:I = 0x7f

.field public static final blacklist OEM_NET_SET_NETWORK_SELECT_AUTO_IMMEDIATELY:I = 0x95

.field public static final blacklist OEM_NET_SET_NETWORK_TYPE:I = 0x82

.field public static final blacklist OEM_NET_SET_NR5G_FULL_VOICE_SUPPORT:I = 0x86

.field public static final blacklist OEM_NET_SET_NR_DISABLE_MODE:I = 0x83

.field public static final blacklist OEM_NET_SET_SATELLITE_PLMN_LIST:I = 0x92

.field public static final blacklist OEM_NET_SET_SERVICE_DOMAIN:I = 0x4

.field public static final blacklist OEM_NET_SET_START_IMS_REG:I = 0x88

.field public static final blacklist OEM_NET_SET_STOP_IMS_REG:I = 0x89

.field public static final blacklist OEM_NET_SET_TUNE_AWAY:I = 0x7e

.field public static final blacklist OEM_NET_SET_UED2LREDIR_ENABLED:I = 0x79

.field public static final blacklist OEM_NET_SET_VOLTE_STATE:I = 0x81

.field public static final blacklist OEM_NET_UPDATE_SUB_BINDING:I = 0x62

.field public static final blacklist OEM_NV_DATA_BACKUP:I = 0x11

.field public static final blacklist OEM_OES_EVENT_CASS:I = 0x2

.field public static final blacklist OEM_OES_GET_DRK_CP_INFO:I = 0x1

.field public static final blacklist OEM_OMADM_GET_1XADV_INFO:I = 0x20

.field public static final blacklist OEM_OMADM_GET_NAM_BLOCK:I = 0x1d

.field public static final blacklist OEM_OMADM_MODEM_RESET:I = 0x21

.field public static final blacklist OEM_OMADM_SET_1XADV_INFO:I = 0x1f

.field public static final blacklist OEM_OMADM_SET_ACTIVATIONDATE:I = 0x22

.field public static final blacklist OEM_OMADM_SET_NAM_BLOCK:I = 0x1e

.field public static final blacklist OEM_OMADM_SYNC_MODEM_NV:I = 0x23

.field public static final blacklist OEM_OMADM_WRITE_PRL:I = 0x1c

.field public static final blacklist OEM_OMISSION_GET:I = 0x3

.field public static final blacklist OEM_OMISSION_SET:I = 0x4

.field public static final blacklist OEM_ONECLICKLOGGING_QUERY:I = 0x20

.field public static final blacklist OEM_ONECLICKLOGGING_START:I = 0x21

.field public static final blacklist OEM_ONECLICKLOGGING_STOP:I = 0x22

.field public static final blacklist OEM_PERSO_CHANGE_PASSWORD:I = 0x4

.field public static final blacklist OEM_PERSO_GET_LOCK_STATUS:I = 0x2

.field public static final blacklist OEM_PERSO_GET_LOCK_TYPE:I = 0x3

.field public static final blacklist OEM_PERSO_LOCK_MODE:I = 0x1

.field public static final blacklist OEM_PERSO_UNLOCK_MODE:I = 0x0

.field public static final blacklist OEM_PERSO_VERIFY:I = 0x5

.field public static final blacklist OEM_PROCESS_FACTORY:I = 0xd

.field public static final blacklist OEM_PROSE_RAW_IPC:I = 0x1

.field public static final blacklist OEM_PROSE_SETUP_PDN:I = 0x2

.field public static final blacklist OEM_PWR_SECONDARY_PHONE_OFF:I = 0x5

.field public static final blacklist OEM_PWR_SET_WFC:I = 0xa

.field public static final blacklist OEM_PWR_SET_WFC_PREF_MODE:I = 0x10

.field public static final blacklist OEM_RELEASE_PDU_SESSION_ID:I = 0x17

.field public static final blacklist OEM_RMTUIM_APDU:I = 0x3

.field public static final blacklist OEM_RMTUIM_EVENT:I = 0x2

.field public static final blacklist OEM_RMTUIM_RESET:I = 0x1

.field public static final blacklist OEM_SAP_CONNECT:I = 0x1

.field public static final blacklist OEM_SAP_READER_STATUS:I = 0x3

.field public static final blacklist OEM_SAP_SET_PROTOCOL:I = 0x7

.field public static final blacklist OEM_SAP_SIM_POWER:I = 0x4

.field public static final blacklist OEM_SAP_STATUS:I = 0x2

.field public static final blacklist OEM_SAP_TRANSFER_APDU:I = 0x6

.field public static final blacklist OEM_SAP_TRANSFER_ATR:I = 0x5

.field public static final blacklist OEM_SDM_IMS_AMR_MODE:I = 0x14

.field public static final blacklist OEM_SDM_IMS_AMR_OCTET_ALIGN:I = 0x16

.field public static final blacklist OEM_SDM_IMS_AMR_WB_ENABLE:I = 0x11

.field public static final blacklist OEM_SDM_IMS_AMR_WB_MODE:I = 0x15

.field public static final blacklist OEM_SDM_IMS_AMR_WB_OCTET_ALIGN:I = 0x17

.field public static final blacklist OEM_SDM_IMS_GET_SETTINGS:I = 0x1

.field public static final blacklist OEM_SDM_IMS_IMS_DOMAIN:I = 0xe

.field public static final blacklist OEM_SDM_IMS_IMS_TEST_MODE_ENABLED:I = 0xa

.field public static final blacklist OEM_SDM_IMS_MIN_SESSION_EXPIRY:I = 0x10

.field public static final blacklist OEM_SDM_IMS_PHONE_CONTEXT_URI:I = 0xd

.field public static final blacklist OEM_SDM_IMS_REGMGR_CONFIG_PCSCF_PORT:I = 0x8

.field public static final blacklist OEM_SDM_IMS_REGMGR_PRIMARY_CSCF:I = 0x9

.field public static final blacklist OEM_SDM_IMS_RINGBACK_TIMER:I = 0x19

.field public static final blacklist OEM_SDM_IMS_RINGING_TIMER:I = 0x18

.field public static final blacklist OEM_SDM_IMS_RTP_RTCP_INACTIVITY_TIMER:I = 0x1a

.field public static final blacklist OEM_SDM_IMS_SCR_AMR_ENABLE:I = 0x12

.field public static final blacklist OEM_SDM_IMS_SCR_AMR_WB_ENABLE:I = 0x13

.field public static final blacklist OEM_SDM_IMS_SESSION_EXPIRY_TIMER:I = 0xf

.field public static final blacklist OEM_SDM_IMS_SET_SETTINGS:I = 0x2

.field public static final blacklist OEM_SDM_IMS_SIGCOMP_ENABLED:I = 0x7

.field public static final blacklist OEM_SDM_IMS_SIP_LOCAL_PORT:I = 0x1

.field public static final blacklist OEM_SDM_IMS_SMS_FORMAT:I = 0xb

.field public static final blacklist OEM_SDM_IMS_SMS_OVER_IP_INDICATION:I = 0xc

.field public static final blacklist OEM_SDM_IMS_SUBSCRIBE_TIMER:I = 0x3

.field public static final blacklist OEM_SDM_IMS_TIMER_SIP_REG:I = 0x2

.field public static final blacklist OEM_SDM_IMS_TIMER_T1:I = 0x4

.field public static final blacklist OEM_SDM_IMS_TIMER_T2:I = 0x5

.field public static final blacklist OEM_SDM_IMS_TIMER_TF:I = 0x6

.field public static final blacklist OEM_SECPHONE_START:I = 0xa

.field public static final blacklist OEM_SET_LTE_ATTACH_PDN_LIST:I = 0x11

.field public static final blacklist OEM_SET_TIME_SERVICE_REQUEST:I = 0x21

.field public static final blacklist OEM_SIM_DETECT_REQUEST:I = 0x22

.field public static final blacklist OEM_SMS_BLOCK_CMAS:I = 0x2

.field public static final blacklist OEM_SMS_EMERGENCY_CALLBACK_MODE:I = 0x8

.field public static final blacklist OEM_SMS_EMERGENCY_NETWORK_CONTROL:I = 0x7

.field public static final blacklist OEM_SMS_NSRI_FEATURE_ON:I = 0x5

.field public static final blacklist OEM_SMS_PP_HANDLE_FOR_STK:I = 0x3

.field public static final blacklist OEM_SMS_SEND_AUTO_LOGIN_MESSAGE:I = 0x1

.field public static final blacklist OEM_SMS_SEND_NSRI_REMOTE_CONTROL:I = 0x6

.field public static final blacklist OEM_SMS_SET_MNO:I = 0x4

.field public static final blacklist OEM_SND_GET_AUDIO_PATH_CTRL:I = 0x6

.field public static final blacklist OEM_SND_GET_MINUTE_ALERT:I = 0x2

.field public static final blacklist OEM_SND_GET_MUTE:I = 0xc

.field public static final blacklist OEM_SND_GET_VOLUME_CTRL:I = 0x4

.field public static final blacklist OEM_SND_GET_WB_AMR:I = 0xf

.field public static final blacklist OEM_SND_RAW_IPC_SEND:I = 0x12

.field public static final blacklist OEM_SND_SET_AUDIO_MODE_CTRL:I = 0x10

.field public static final blacklist OEM_SND_SET_AUDIO_PATH_CTRL:I = 0x5

.field public static final blacklist OEM_SND_SET_CLOCK_CTRL:I = 0xa

.field public static final blacklist OEM_SND_SET_CLOCK_MODE_CTRL:I = 0x11

.field public static final blacklist OEM_SND_SET_DHA_CTL:I = 0xe

.field public static final blacklist OEM_SND_SET_LOOPBACK_CTRL:I = 0x8

.field public static final blacklist OEM_SND_SET_MINUTE_ALERT:I = 0x1

.field public static final blacklist OEM_SND_SET_MUTE:I = 0xb

.field public static final blacklist OEM_SND_SET_TWO_MIC_CTRL:I = 0xd

.field public static final blacklist OEM_SND_SET_VIDEO_CALL_CTRL:I = 0x7

.field public static final blacklist OEM_SND_SET_VOICE_RECORDING_CTRL:I = 0x9

.field public static final blacklist OEM_SND_SET_VOLUME_CTRL:I = 0x3

.field public static final blacklist OEM_START_RIL_LOG:I = 0xc

.field public static final blacklist OEM_SVC_DEBUG_DUMP_MESSAGE:I = 0x6

.field public static final blacklist OEM_SVC_DEBUG_STRING_MESSAGE:I = 0x7

.field public static final blacklist OEM_SVC_DIAG_SCAN_MESSAGE:I = 0x8

.field public static final blacklist OEM_SVC_END_MODE_MESSAGE:I = 0x2

.field public static final blacklist OEM_SVC_ENTER_MODE_MESSAGE:I = 0x1

.field public static final blacklist OEM_SVC_GET_CP_LOGGING:I = 0x2

.field public static final blacklist OEM_SVC_GET_DISPLAY_DATA_MESSAGE:I = 0x4

.field public static final blacklist OEM_SVC_PROCESS_KEY_MESSAGE:I = 0x3

.field public static final blacklist OEM_SVC_QUERY_AUTOMATION_INFO:I = 0x1

.field public static final blacklist OEM_SVC_QUERY_DISPLAY_DATA_MESSAGE:I = 0x5

.field public static final blacklist OEM_SVC_SET_CP_LOGGING:I = 0x1

.field public static final blacklist OEM_SYSDUMP_DBG_STATE_GET:I = 0x6

.field public static final blacklist OEM_SYSDUMP_ENABLE_LOG:I = 0x7

.field public static final blacklist OEM_SYSDUMP_GET_PHONE_DEBUG_MSG:I = 0x1a

.field public static final blacklist OEM_SYSDUMP_GET_RAMDUMP_MODE:I = 0xb

.field public static final blacklist OEM_SYSDUMP_SET_PHONE_DEBUG_MSG:I = 0x1b

.field public static final blacklist OEM_SYSDUMP_SET_RAMDUMP_MODE:I = 0xa

.field public static final blacklist OEM_TCPDUMP_START:I = 0x15

.field public static final blacklist OEM_TCPDUMP_STOP:I = 0x16

.field public static final blacklist OEM_UICC_AUTH_3G:I = 0x7

.field public static final blacklist OEM_UICC_AUTH_GSM:I = 0x6

.field public static final blacklist OEM_UICC_CLOSE_CHANNEL:I = 0xa

.field public static final blacklist OEM_UICC_DIAGNOSTICS:I = 0x18

.field public static final blacklist OEM_UICC_DM_SESSION_STATUS:I = 0x13

.field public static final blacklist OEM_UICC_EXCHANGE_APDU:I = 0x8

.field public static final blacklist OEM_UICC_GET_OPL:I = 0x15

.field public static final blacklist OEM_UICC_LOW_LEVEL_CONTROL:I = 0x14

.field public static final blacklist OEM_UICC_LPA_INFO:I = 0x19

.field public static final blacklist OEM_UICC_OPEN_CHANNEL:I = 0x9

.field public static final blacklist OEM_UICC_PIN_REMAINING:I = 0x11

.field public static final blacklist OEM_UICC_RECOVERY:I = 0x17

.field public static final blacklist OEM_UICC_SIMLOCK_DEPERSO:I = 0x12

.field public static final blacklist OEM_UICC_SIMPOWER_ON_OFF:I = 0x10

.field public static final blacklist OEM_UICC_TF_LOCK_STATUS:I = 0x16

.field public static final blacklist OEM_UICC_TRANSMIT_P3_EXIST:I = 0xb

.field public static final blacklist OEM_UICC_TRANSMIT_P3_NON_EXIST:I = 0xc
