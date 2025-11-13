.class public interface abstract Lcom/android/internal/telephony/SemRILConstants$Request;
.super Ljava/lang/Object;
.source "SemRILConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemRILConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Request"
.end annotation


# static fields
.field public static final blacklist RIL_OEM_REQUEST_BASE:I = 0x2710

.field public static final blacklist RIL_REQUEST_OEM_ACCESS_PHONEBOOK_ENTRY:I = 0x271b

.field public static final blacklist RIL_REQUEST_OEM_CHANGE_SIM_PERSO:I = 0x2721

.field public static final blacklist RIL_REQUEST_OEM_EMERGENCY_CONTROL:I = 0x2737

.field public static final blacklist RIL_REQUEST_OEM_EMERGENCY_SEARCH:I = 0x2736

.field public static final blacklist RIL_REQUEST_OEM_ENTER_SIM_PERSO:I = 0x2722

.field public static final blacklist RIL_REQUEST_OEM_GET_CELL_BROADCAST_CONFIG:I = 0x2718

.field public static final blacklist RIL_REQUEST_OEM_GET_DISABLE_2G:I = 0x272f

.field public static final blacklist RIL_REQUEST_OEM_GET_NR_DISABLE_MODE:I = 0x2740

.field public static final blacklist RIL_REQUEST_OEM_GET_NR_ICON_TYPE:I = 0x2741

.field public static final blacklist RIL_REQUEST_OEM_GET_PHONEBOOK_ENTRY:I = 0x271a

.field public static final blacklist RIL_REQUEST_OEM_GET_PHONEBOOK_STORAGE_INFO:I = 0x2719

.field public static final blacklist RIL_REQUEST_OEM_GET_PREFERRED_NETWORK_LIST:I = 0x2720

.field public static final blacklist RIL_REQUEST_OEM_GET_STORED_MSG_COUNT_FROM_SIM:I = 0x273d

.field public static final blacklist RIL_REQUEST_OEM_GET_VENDOR_CONFIGURATION:I = 0x2742

.field public static final blacklist RIL_REQUEST_OEM_LOCK_INFO:I = 0x271d

.field public static final blacklist RIL_REQUEST_OEM_QUERY_CNAP:I = 0x272d

.field public static final blacklist RIL_REQUEST_OEM_QUERY_CSG_LIST:I = 0x273a

.field public static final blacklist RIL_REQUEST_OEM_READ_SMS_FROM_SIM:I = 0x273e

.field public static final blacklist RIL_REQUEST_OEM_SAFE_MODE:I = 0x2716

.field public static final blacklist RIL_REQUEST_OEM_SAT_ANSWER:I = 0x2744

.field public static final blacklist RIL_REQUEST_OEM_SAT_CLEANUP_NETWORK_INFO:I = 0x2760

.field public static final blacklist RIL_REQUEST_OEM_SAT_DIAL:I = 0x2745

.field public static final blacklist RIL_REQUEST_OEM_SAT_DISABLE_IOT_MODE:I = 0x2762

.field public static final blacklist RIL_REQUEST_OEM_SAT_ENABLE_IOT_MODE:I = 0x2761

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_ARFCN:I = 0x2756

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_CALL_END_REASON:I = 0x2747

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_CALL_STATE:I = 0x2748

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_IOT_MODE:I = 0x2763

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_IOT_REGISTRATION_STATE:I = 0x2764

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_REGISTRATION_STATE:I = 0x274b

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_SATELLITE_ID:I = 0x275a

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_SERIAL_NUMBER:I = 0x2755

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_SIGNAL_STRENGTH:I = 0x274c

.field public static final blacklist RIL_REQUEST_OEM_SAT_GET_TXPOWER:I = 0x2757

.field public static final blacklist RIL_REQUEST_OEM_SAT_HANGUP:I = 0x2746

.field public static final blacklist RIL_REQUEST_OEM_SAT_SEND_ICC_SIM_AUTH:I = 0x2753

.field public static final blacklist RIL_REQUEST_OEM_SAT_SEND_LOCATION_DATA:I = 0x2766

.field public static final blacklist RIL_REQUEST_OEM_SAT_SEND_LOCATION_USERPERMIT:I = 0x2765

.field public static final blacklist RIL_REQUEST_OEM_SAT_SEND_RAW_AT_COMMAND:I = 0x275e

.field public static final blacklist RIL_REQUEST_OEM_SAT_SEND_SMS:I = 0x2758

.field public static final blacklist RIL_REQUEST_OEM_SAT_SEND_SMS_EXPECT_MORE:I = 0x2759

.field public static final blacklist RIL_REQUEST_OEM_SAT_SET_DSI_CONFIG:I = 0x275c

.field public static final blacklist RIL_REQUEST_OEM_SAT_SET_GPS_INFO:I = 0x2751

.field public static final blacklist RIL_REQUEST_OEM_SAT_SET_IMEI:I = 0x2754

.field public static final blacklist RIL_REQUEST_OEM_SAT_SET_IMSI:I = 0x2752

.field public static final blacklist RIL_REQUEST_OEM_SAT_SET_NETWORK_QUERY_MODE:I = 0x274d

.field public static final blacklist RIL_REQUEST_OEM_SAT_SET_POWER:I = 0x2750

.field public static final blacklist RIL_REQUEST_OEM_SAT_SET_SIGNAL_STRENGTH_REPORTING:I = 0x274e

.field public static final blacklist RIL_REQUEST_OEM_SAT_SET_SIGNAL_THRESHOLD_REPORTING:I = 0x274f

.field public static final blacklist RIL_REQUEST_OEM_SAT_SET_SMSC_ADDRESS:I = 0x275d

.field public static final blacklist RIL_REQUEST_OEM_SAT_START_DTMF:I = 0x2749

.field public static final blacklist RIL_REQUEST_OEM_SAT_START_NETWORK_SEARCH:I = 0x275f

.field public static final blacklist RIL_REQUEST_OEM_SAT_STOP_DTMF:I = 0x274a

.field public static final blacklist RIL_REQUEST_OEM_SELECT_CSG_MANUAL:I = 0x273b

.field public static final blacklist RIL_REQUEST_OEM_SEND_ENCODED_USSD:I = 0x2723

.field public static final blacklist RIL_REQUEST_OEM_SET_DISABLE_2G:I = 0x2730

.field public static final blacklist RIL_REQUEST_OEM_SET_IMS_CALL_LIST:I = 0x2714

.field public static final blacklist RIL_REQUEST_OEM_SET_MOBILE_DATA_SETTING:I = 0x273c

.field public static final blacklist RIL_REQUEST_OEM_SET_NR_DISABLE_MODE:I = 0x273f

.field public static final blacklist RIL_REQUEST_OEM_SET_PREFERRED_NETWORK_LIST:I = 0x271f

.field public static final blacklist RIL_REQUEST_OEM_SET_SIM_ONOFF:I = 0x2739

.field public static final blacklist RIL_REQUEST_OEM_SET_SIM_POWER:I = 0x2727

.field public static final blacklist RIL_REQUEST_OEM_SET_TRANSMIT_POWER:I = 0x2717

.field public static final blacklist RIL_REQUEST_OEM_SET_VENDOR_CONFIGURATION:I = 0x2743

.field public static final blacklist RIL_REQUEST_OEM_SIM_GET_ATR:I = 0x2738

.field public static final blacklist RIL_REQUEST_OEM_STK_SIM_INIT_EVENT:I = 0x271e

.field public static final blacklist RIL_REQUEST_OEM_UICC_GBA_AUTHENTICATE_BOOTSTRAP:I = 0x2729

.field public static final blacklist RIL_REQUEST_OEM_UICC_GBA_AUTHENTICATE_NAF:I = 0x272a

.field public static final blacklist RIL_REQUEST_OEM_USIM_PB_CAPA:I = 0x271c

.field public static final blacklist RIL_REQUEST_SEC_CDMA_SEND_SMS:I = 0x4e77

.field public static final blacklist RIL_REQUEST_SEC_CDMA_SEND_SMS_EXPECT_MORE:I = 0x4eb4

.field public static final blacklist RIL_REQUEST_SEC_IMS_SEND_SMS:I = 0x4e91

.field public static final blacklist RIL_REQUEST_SEC_SEND_SMS:I = 0x4e39

.field public static final blacklist RIL_REQUEST_SEC_SEND_SMS_EXPECT_MORE:I = 0x4e3a

.field public static final blacklist RIL_REQUEST_SEC_WRITE_SMS_TO_SIM:I = 0x4e5f

.field public static final blacklist RIL_SEC_REQUEST_BASE:I = 0x4e20
