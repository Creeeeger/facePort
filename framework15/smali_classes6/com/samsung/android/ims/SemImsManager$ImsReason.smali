.class public Lcom/samsung/android/ims/SemImsManager$ImsReason;
.super Ljava/lang/Object;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsReason"
.end annotation


# static fields
.field public static final whitelist ACTIVE_CALL_ON_ANOTHER_SOFTPHONE:I = 0xbbf

.field public static final whitelist ADDRESS_INCOMPLETE:I = 0x1e4

.field public static final whitelist ALTERNATIVE_SERVICES:I = 0x17c

.field public static final whitelist BAD_EXTENSION:I = 0x1a4

.field public static final whitelist BUSY_HERE:I = 0x1e6

.field public static final whitelist CALL_END_CALL_NW_HANDOVER:I = 0x453

.field public static final whitelist CALL_FORBIDDEN:I = 0x7d1

.field public static final whitelist CALL_FORBIDDEN_RSN_EXPIRED:I = 0x8fe

.field public static final whitelist CALL_FORBIDDEN_RSN_GROUP_CALL_SERVICE_UNAVAILABLE:I = 0x8ff

.field public static final whitelist CALL_FORBIDDEN_RSN_OUTGOING_CALLS_IMPOSSIBLE:I = 0x901

.field public static final whitelist CALL_FORBIDDEN_RSN_TEMPORARY_DISABILITY:I = 0x900

.field public static final whitelist CALL_HAS_BEEN_TRANSFERRED_TO_ANOTHER_DEVICE:I = 0xbba

.field public static final whitelist CALL_INVITE_TIMEOUT:I = 0x45a

.field public static final whitelist CALL_SESSION_TIMEOUT:I = 0x44f

.field public static final whitelist CANCEL_CALL_COMPLETED_ELSEWHERE:I = 0xbb9

.field public static final whitelist CANCEL_SERVICE_NOT_ALLOWED_IN_THIS_LOCATION:I = 0xbbc

.field public static final whitelist CODE_ANSWERED_ELSEWHERE:I = 0x3f6

.field public static final whitelist CODE_CALL_END_CAUSE_CALL_PULL:I = 0x3f8

.field public static final whitelist CODE_MEDIA_NO_DATA:I = 0x192

.field public static final whitelist CODE_SIP_BAD_ADDRESS:I = 0x151

.field public static final whitelist CODE_SIP_BUSY:I = 0x152

.field public static final whitelist CODE_SIP_CLIENT_ERROR:I = 0x156

.field public static final whitelist CODE_SIP_FORBIDDEN:I = 0x14c

.field public static final whitelist CODE_SIP_NOT_ACCEPTABLE:I = 0x154

.field public static final whitelist CODE_SIP_NOT_FOUND:I = 0x14d

.field public static final whitelist CODE_SIP_NOT_SUPPORTED:I = 0x14e

.field public static final whitelist CODE_SIP_REQUEST_CANCELLED:I = 0x153

.field public static final whitelist CODE_SIP_REQUEST_TIMEOUT:I = 0x14f

.field public static final whitelist CODE_SIP_SERVER_INTERNAL_ERROR:I = 0x15f

.field public static final whitelist CODE_SIP_SERVER_TIMEOUT:I = 0x161

.field public static final whitelist CODE_SIP_SERVICE_UNAVAILABLE:I = 0x160

.field public static final whitelist CODE_SIP_USER_REJECTED:I = 0x169

.field public static final whitelist CODE_WIFI_LOST:I = 0x57f

.field public static final whitelist DATA_CONNECTION_LOST:I = 0x6a5

.field public static final whitelist DECLINE:I = 0x25b

.field public static final whitelist DOES_NOT_EXIST_ANYWHERE:I = 0x25c

.field public static final whitelist EMERGENCY_CALLS_OVER_WIFI_NOT_ALLOWED:I = 0xbc0

.field public static final whitelist FORBIDDEN_MULTI_CALL_LIMITATION:I = 0x9ce

.field public static final whitelist FORBIDDEN_SERVICE_NOT_ALLOWED_IN_THIS_LOCATION:I = 0xbbb

.field public static final whitelist LINE_IN_USE_ON_OTHER_DEVICE:I = 0x96d

.field public static final whitelist MAKECALL_REG_FAILURE_GENERAL:I = 0x7d5

.field public static final whitelist MAKECALL_REG_FAILURE_REG_403:I = 0x7d3

.field public static final whitelist MAKECALL_REG_FAILURE_REG_423:I = 0x7d4

.field public static final whitelist MAKECALL_REG_FAILURE_TIMER_F:I = 0x7d2

.field public static final whitelist METHOD_NOT_ALLOWED:I = 0x195

.field public static final whitelist NETWORK_UNREACHABLE:I = 0x836

.field public static final whitelist NOT_ACCEPTABLE:I = 0x196

.field public static final whitelist NOT_ACCEPTABLE2:I = 0x25e

.field public static final whitelist NOT_ACCEPTABLE_HERE:I = 0x1e8

.field public static final whitelist NOT_FOUND:I = 0x194

.field public static final whitelist OTHER_SECONDARY_DEVICE_IN_USE:I = 0xbbe

.field public static final whitelist PULLED_BY_ANOTHER_DEVICE:I = 0x9ca

.field public static final whitelist REQUEST_TERMINATED:I = 0x1e7

.field public static final whitelist REQUEST_TIMEOUT:I = 0x198

.field public static final whitelist RTP_TIME_OUT:I = 0x579

.field public static final whitelist SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final whitelist SERVER_TIME_OUT:I = 0x1f8

.field public static final whitelist SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final whitelist SIMULTANEOUS_CALL_LIMIT_HAS_ALREADY_BEEN_REACHED:I = 0xbbd

.field public static final whitelist TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final whitelist UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final whitelist UNSUPPORTED_URI_SCHEME:I = 0x1a0

.field public static final whitelist WIFI_CONNECTION_LOST:I = 0x6a7


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
