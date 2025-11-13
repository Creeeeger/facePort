.class public Lcom/android/internal/telephony/DctConstants;
.super Ljava/lang/Object;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DctConstants$Activity;,
        Lcom/android/internal/telephony/DctConstants$State;
    }
.end annotation


# static fields
.field public static final blacklist APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final blacklist BANDWIDTH_SOURCE_BANDWIDTH_ESTIMATOR_KEY:Ljava/lang/String; = "bandwidth_estimator"

.field public static final blacklist BANDWIDTH_SOURCE_CARRIER_CONFIG_KEY:Ljava/lang/String; = "carrier_config"

.field public static final blacklist BANDWIDTH_SOURCE_MODEM_KEY:Ljava/lang/String; = "modem"

.field public static final blacklist BASE:I = 0x42000

.field public static final blacklist CMD_CLEAR_PROVISIONING_SPINNER:I = 0x4202a

.field public static final blacklist CMD_ENABLE_MOBILE_PROVISIONING:I = 0x42025

.field public static final blacklist CMD_IS_PROVISIONING_APN:I = 0x42026

.field public static final blacklist CMD_NET_STAT_POLL:I = 0x42028

.field public static final blacklist CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0x42024

.field public static final blacklist DISABLED:I = 0x0

.field public static final blacklist ENABLED:I = 0x1

.field public static final blacklist EPS_QOS_OFFSET:I = 0x16

.field public static final blacklist EVENT_AIRPLANE_MODE_CANCELLED:I = 0x4207e

.field public static final blacklist EVENT_ALWAYS_ON_PDN_DONE:I = 0x42077

.field public static final blacklist EVENT_APN_CHANGED:I = 0x42013

.field public static final blacklist EVENT_APN_UNTHROTTLED:I = 0x42038

.field public static final blacklist EVENT_CARRIER_CONFIG_CHANGED:I = 0x42036

.field public static final blacklist EVENT_CLEAN_UP_ALL_CONNECTIONS:I = 0x4201d

.field public static final blacklist EVENT_CLEAN_UP_CONNECTION:I = 0x42018

.field public static final blacklist EVENT_CREATE_ALL_APN_RETRY_TIMEOUT:I = 0x4206d

.field public static final blacklist EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field public static final blacklist EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field public static final blacklist EVENT_DATA_ENABLED_CHANGED:I = 0x4202e

.field public static final blacklist EVENT_DATA_ENABLED_OVERRIDE_RULES_CHANGED:I = 0x42033

.field public static final blacklist EVENT_DATA_POPUP_REQUEST_SENDIBLE:I = 0x4207d

.field public static final blacklist EVENT_DATA_RAT_CHANGED:I = 0x42029

.field public static final blacklist EVENT_DATA_RECONNECT:I = 0x4202f

.field public static final blacklist EVENT_DATA_SERVICE_BINDING_CHANGED:I = 0x42031

.field public static final blacklist EVENT_DATA_SETUP_COMPLETE:I = 0x42000

.field public static final blacklist EVENT_DATA_SETUP_COMPLETE_ERROR:I = 0x42023

.field public static final blacklist EVENT_DATA_STALL_ALARM:I = 0x42011

.field public static final blacklist EVENT_DATA_SWITCH_TIME_OUT:I = 0x4206b

.field public static final blacklist EVENT_DEFER_DATA_ALLOW_POPUP_REQUEST:I = 0x4207c

.field public static final blacklist EVENT_DEVICE_PROVISIONED_CHANGE:I = 0x42032

.field public static final blacklist EVENT_DISABLE_APN:I = 0x4200e

.field public static final blacklist EVENT_DISCONNECT_DONE:I = 0x4200f

.field public static final blacklist EVENT_DO_RECOVERY:I = 0x42012

.field public static final blacklist EVENT_ENABLE_APN:I = 0x4200d

.field public static final blacklist EVENT_ENABLE_DATA_SWITCH_READY:I = 0x42064

.field public static final blacklist EVENT_ENABLE_DATA_SWITCH_READY_FOR_MMS:I = 0x4206a

.field public static final blacklist EVENT_ENABLE_T3346:I = 0x4206e

.field public static final blacklist EVENT_HONGBAO_RECEIVED:I = 0x4206f

.field public static final blacklist EVENT_IMS_PREFERENCE_CHANGED:I = 0x42073

.field public static final blacklist EVENT_JPN_DATA_SETTING_CHANGED:I = 0x42080

.field public static final blacklist EVENT_LCE_DATA_RECEIVED:I = 0x42076

.field public static final blacklist EVENT_LTE_MODE_DB_CHANGED:I = 0x42047

.field public static final blacklist EVENT_LTE_ROAMING_DB_CHANGED:I = 0x42046

.field public static final blacklist EVENT_MOBILE_DATA_CHANGE:I = 0x42071

.field public static final blacklist EVENT_NETWORK_STATUS_CHANGED:I = 0x4202c

.field public static final blacklist EVENT_NON_DDS_MMS_ENDED:I = 0x42075

.field public static final blacklist EVENT_NON_DDS_MMS_STARTED:I = 0x42074

.field public static final blacklist EVENT_NR_BEARER_ALLOCATION_CHANGED:I = 0x4207a

.field public static final blacklist EVENT_NR_TIMER_WATCHDOG:I = 0x42035

.field public static final blacklist EVENT_PCO_DATA_RECEIVED:I = 0x4202d

.field public static final blacklist EVENT_PLMN_CHANGED:I = 0x4206c

.field public static final blacklist EVENT_PROVISIONING_APN_ALARM:I = 0x42027

.field public static final blacklist EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field public static final blacklist EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field public static final blacklist EVENT_PS_VOICE_CALL_ENDED:I = 0x42079

.field public static final blacklist EVENT_PS_VOICE_CALL_STARTED:I = 0x42078

.field public static final blacklist EVENT_QOS_STATE_CHANGED:I = 0x4207f

.field public static final blacklist EVENT_RADIO_AVAILABLE:I = 0x42001

.field public static final blacklist EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field public static final blacklist EVENT_RESTART_RADIO:I = 0x4201a

.field public static final blacklist EVENT_RESTORE_ALL_PDN:I = 0x4207b

.field public static final blacklist EVENT_ROAMING_OFF:I = 0x4200c

.field public static final blacklist EVENT_ROAMING_ON:I = 0x4200b

.field public static final blacklist EVENT_ROAMING_SETTING_CHANGE:I = 0x42030

.field public static final blacklist EVENT_ROUTING_AREA_CHANGED:I = 0x42067

.field public static final blacklist EVENT_SETUP_DATA_RECORDS_LOADED:I = 0x42070

.field public static final blacklist EVENT_SET_FORCE_INTERNAL_DATA_ENABLE:I = 0x42069

.field public static final blacklist EVENT_SIM_STATE_UPDATED:I = 0x42037

.field public static final blacklist EVENT_SPR_ROAMING_ON:I = 0x42048

.field public static final blacklist EVENT_TELEPHONY_DISPLAY_INFO_CHANGED:I = 0x42034

.field public static final blacklist EVENT_TRAFFIC_DESCRIPTORS_UPDATED:I = 0x42039

.field public static final blacklist EVENT_TRY_SETUP_DATA:I = 0x42003

.field public static final blacklist EVENT_VOICE_CALL_ENDED:I = 0x42008

.field public static final blacklist EVENT_VOICE_CALL_STARTED:I = 0x42007

.field public static final blacklist INVALID:I = -0x1

.field public static final blacklist NR_QOS_OFFSET:I = 0x19

.field public static final blacklist PROVISIONING_URL_KEY:Ljava/lang/String; = "provisioningUrl"

.field public static final blacklist QOS_TYPE_EPS:I = 0x1

.field public static final blacklist QOS_TYPE_NR:I = 0x2

.field public static final blacklist RAT_NAME_LTE:Ljava/lang/String; = "LTE"

.field public static final blacklist RAT_NAME_NR_NSA:Ljava/lang/String; = "NR_NSA"

.field public static final blacklist RAT_NAME_NR_NSA_MMWAVE:Ljava/lang/String; = "NR_NSA_MMWAVE"

.field public static final blacklist RAT_NAME_NR_SA_MMWAVE:Ljava/lang/String; = "NR_MMWAVE"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
