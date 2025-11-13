.class public Landroid/telephony/SemTelephonyConstants;
.super Ljava/lang/Object;
.source "SemTelephonyConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SemTelephonyConstants$TelephonyManager;,
        Landroid/telephony/SemTelephonyConstants$Telecom;,
        Landroid/telephony/SemTelephonyConstants$ImsReasonInfo;,
        Landroid/telephony/SemTelephonyConstants$ImsCallProfile;,
        Landroid/telephony/SemTelephonyConstants$EmergencyNumberSource;
    }
.end annotation


# static fields
.field public static final blacklist ASSISTED_DIAL_FROM_CONTACT_LIST:I = 0x1

.field public static final blacklist ASSISTED_DIAL_FROM_DIAL_PAD:I = 0x2

.field public static final blacklist ASSISTED_DIAL_FROM_NONE:I = 0x0

.field public static final blacklist EXTRA_LMS_TOKEN_CTC:Ljava/lang/String; = "lms_token_ctc"

.field public static final blacklist RESULT_SMS_DSAC_FAIL:I = 0x14

.field public static final blacklist RESULT_SMS_MDM_DISCARDED:I = 0x17

.field public static final blacklist RESULT_SMS_SEGMENT:I = 0x15

.field public static final blacklist SEM_CALL_EXTRA_CMC_CALL_STATE:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_CALL_STATE"

.field public static final blacklist SEM_CALL_EXTRA_CMC_EXTERNAL_CALL:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_EXTERNAL_CALL"

.field public static final blacklist SEM_CALL_EXTRA_CMC_PRIMARY_DEVICE_CALL_CONNECT_TIME:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_PD_CALL_CONNECT_TIME"

.field public static final blacklist SEM_CALL_EXTRA_CMC_PULLABLE:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_PULLABLE"

.field public static final blacklist SEM_CALL_EXTRA_SEM_CMC_TYPE:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_TYPE"

.field public static final blacklist SEM_EVENT_CALL_CMC_PRIMARY_DEVICE_CONNECTED_TIME:Ljava/lang/String; = "com.samsung.telephony.event.EVENT_CALL_CMC_PRIMARY_DEVICE_CONNECTED_TIME"

.field public static final blacklist SEM_EVENT_CALL_CMC_SECONDARY_DEVICE_PULL_COMPLETED:Ljava/lang/String; = "com.samsung.telephony.event.EVENT_CALL_CMC_SECONDARY_DEVICE_PULL_COMPLETED"

.field public static final blacklist SEM_EVENT_CALL_CMC_SECONDARY_DEVICE_REQUEST_TYPE:Ljava/lang/String; = "com.samsung.telephony.event.EVENT_CALL_CMC_SECONDARY_DEVICE_REQUEST_TYPE"

.field public static final blacklist SEM_EXTRA_ASSISTED_DIAL_FROM:Ljava/lang/String; = "com.samsung.telephony.extra.EXTRA_ASSISTED_DIAL_FROM"

.field public static final blacklist SEM_EXTRA_CAN_TRANSFER_CALL:Ljava/lang/String; = "com.samsung.telephony.extra.CAN_TRANSFER_CALL"

.field public static final blacklist SEM_EXTRA_CMC_BOUND_SESSION_ID:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

.field public static final blacklist SEM_EXTRA_CMC_CALL_SD_REQUEST_TYPE:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

.field public static final blacklist SEM_EXTRA_CMC_CALL_TYPE:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_CALL_TYPE"

.field public static final blacklist SEM_EXTRA_CMC_DEVICE_ID:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_DEVICE_ID"

.field public static final blacklist SEM_EXTRA_CMC_DIAL_FROM:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_DIAL_FROM"

.field public static final blacklist SEM_EXTRA_CMC_DIAL_TO:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_DIAL_TO"

.field public static final blacklist SEM_EXTRA_CMC_PHONE_ID:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_PHONE_ID"

.field public static final blacklist SEM_EXTRA_CMC_REPLACE_CALL_ID:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_REPLACE_CALL_ID"

.field public static final blacklist SEM_EXTRA_CMC_SD_CALL_MANAGE:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_CALL_MANAGE"

.field public static final blacklist SEM_EXTRA_CMC_SD_DTMF_KEY:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_CS_DTMF_KEY"

.field public static final blacklist SEM_EXTRA_CMC_SERVICE_TYPE:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_SERVICE_TYPE"

.field public static final blacklist SEM_EXTRA_CMC_SESSION_ID:Ljava/lang/String; = "com.samsung.telephony.extra.CMC_SESSION_ID"

.field public static final blacklist SEM_EXTRA_DIAL_CONFERENCE_CALL:Ljava/lang/String; = "com.samsung.telephony.extra.DIAL_CONFERENCE_CALL"

.field public static final blacklist SEM_EXTRA_FORWARDED_CALL:Ljava/lang/String; = "com.samsung.telephony.extra.SEM_EXTRA_FORWARDED_CALL"

.field public static final blacklist SEM_EXTRA_SKT_CONFERENCE_CALL_SUPPORT:Ljava/lang/String; = "com.samsung.telephony.extra.SKT_CONFERENCE_CALL_SUPPORT"

.field public static final blacklist SEM_EXTRA_START_CALL_WITH_EMERGENCY_SERVICE_CATEGORY:Ljava/lang/String; = "com.samsung.telephony.extra.START_CALL_WITH_EMERGENCY_SERVICE_CATEGORY"

.field public static final blacklist SEM_EXTRA_VCRBT_CAUSE:Ljava/lang/String; = "com.samsung.telephony.extra.VCRBT_CAUSE"

.field public static final blacklist SEM_EXTRA_VCRBT_REASON_PROTOCOL:Ljava/lang/String; = "com.samsung.telephony.extra.VCRBT_REASON_PROTOCOL"

.field public static final blacklist SEM_EXTRA_VCRBT_TEXT_DESCRIPTION:Ljava/lang/String; = "com.samsung.telephony.extra.TEXT_DESCRIPTION"

.field public static final blacklist SEM_EXTRA_VIDEO_CRBT:Ljava/lang/String; = "com.samsung.telephony.extra.VIDEO_CRBT"

.field public static final blacklist SEM_EXTRA_VIDEO_CRT_IS_ALERTING:Ljava/lang/String; = "com.samsung.telephony.extra.VIDEO_CRT_IS_ALERTING"

.field public static final blacklist SEM_EXTRA_VIDEO_CRT_MT:Ljava/lang/String; = "com.samsung.telephony.extra.VIDEO_CRT_MT"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
