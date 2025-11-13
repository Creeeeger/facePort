.class public final Landroid/telephony/ims/ImsReasonInfo;
.super Ljava/lang/Object;
.source "ImsReasonInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsReasonInfo$ImsCode;,
        Landroid/telephony/ims/ImsReasonInfo$UtReason;
    }
.end annotation


# static fields
.field public static final whitelist CODE_ACCESS_CLASS_BLOCKED:I = 0x5e8

.field public static final whitelist CODE_ANSWERED_ELSEWHERE:I = 0x3f6

.field public static final whitelist CODE_BLACKLISTED_CALL_ID:I = 0x1fa

.field public static final whitelist CODE_CALL_BARRED:I = 0xf0

.field public static final whitelist CODE_CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE:I = 0x44c

.field public static final whitelist CODE_CALL_END_CAUSE_CALL_PULL:I = 0x3f8

.field public static final whitelist CODE_CALL_PULL_OUT_OF_SYNC:I = 0x3f7

.field public static final blacklist CODE_CONF_ADD_USER_FAILURE:I = 0xc2b

.field public static final whitelist CODE_DATA_DISABLED:I = 0x57e

.field public static final whitelist CODE_DATA_LIMIT_REACHED:I = 0x57d

.field public static final whitelist CODE_DIAL_MODIFIED_TO_DIAL:I = 0xf6

.field public static final whitelist CODE_DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0xf7

.field public static final whitelist CODE_DIAL_MODIFIED_TO_SS:I = 0xf5

.field public static final whitelist CODE_DIAL_MODIFIED_TO_USSD:I = 0xf4

.field public static final whitelist CODE_DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0xf8

.field public static final whitelist CODE_DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0xf9

.field public static final whitelist CODE_DIAL_VIDEO_MODIFIED_TO_SS:I = 0xfa

.field public static final whitelist CODE_DIAL_VIDEO_MODIFIED_TO_USSD:I = 0xfb

.field public static final whitelist CODE_ECBM_NOT_SUPPORTED:I = 0x385

.field public static final blacklist CODE_EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x656

.field public static final whitelist CODE_EMERGENCY_PERM_FAILURE:I = 0x16c

.field public static final whitelist CODE_EMERGENCY_TEMP_FAILURE:I = 0x16b

.field public static final whitelist CODE_EPDG_TUNNEL_ESTABLISH_FAILURE:I = 0x578

.field public static final whitelist CODE_EPDG_TUNNEL_LOST_CONNECTION:I = 0x57a

.field public static final whitelist CODE_EPDG_TUNNEL_REKEY_FAILURE:I = 0x579

.field public static final whitelist CODE_FDN_BLOCKED:I = 0xf1

.field public static final whitelist CODE_IKEV2_AUTH_FAILURE:I = 0x580

.field public static final whitelist CODE_IMEI_NOT_ACCEPTED:I = 0xf3

.field public static final whitelist CODE_IWLAN_DPD_FAILURE:I = 0x514

.field public static final whitelist CODE_LOCAL_CALL_BUSY:I = 0x8e

.field public static final whitelist CODE_LOCAL_CALL_CS_RETRY_REQUIRED:I = 0x92

.field public static final whitelist CODE_LOCAL_CALL_DECLINE:I = 0x8f

.field public static final whitelist CODE_LOCAL_CALL_EXCEEDED:I = 0x8d

.field public static final whitelist CODE_LOCAL_CALL_RESOURCE_RESERVATION_FAILED:I = 0x91

.field public static final whitelist CODE_LOCAL_CALL_TERMINATED:I = 0x94

.field public static final whitelist CODE_LOCAL_CALL_VCC_ON_PROGRESSING:I = 0x90

.field public static final whitelist CODE_LOCAL_CALL_VOLTE_RETRY_REQUIRED:I = 0x93

.field public static final blacklist CODE_LOCAL_E911_RETRY_REQUIRED:I = 0x2328

.field public static final whitelist CODE_LOCAL_ENDED_BY_CONFERENCE_MERGE:I = 0x6c

.field public static final whitelist CODE_LOCAL_HO_NOT_FEASIBLE:I = 0x95

.field public static final whitelist CODE_LOCAL_ILLEGAL_ARGUMENT:I = 0x65

.field public static final whitelist CODE_LOCAL_ILLEGAL_STATE:I = 0x66

.field public static final blacklist CODE_LOCAL_IMS_NOT_SUPPORTED_ON_DEVICE:I = 0x96

.field public static final whitelist CODE_LOCAL_IMS_SERVICE_DOWN:I = 0x6a

.field public static final whitelist CODE_LOCAL_INTERNAL_ERROR:I = 0x67

.field public static final whitelist CODE_LOCAL_LOW_BATTERY:I = 0x70

.field public static final whitelist CODE_LOCAL_NETWORK_IP_CHANGED:I = 0x7c

.field public static final whitelist CODE_LOCAL_NETWORK_NO_LTE_COVERAGE:I = 0x7a

.field public static final whitelist CODE_LOCAL_NETWORK_NO_SERVICE:I = 0x79

.field public static final whitelist CODE_LOCAL_NETWORK_ROAMING:I = 0x7b

.field public static final whitelist CODE_LOCAL_NOT_REGISTERED:I = 0x84

.field public static final whitelist CODE_LOCAL_NO_PENDING_CALL:I = 0x6b

.field public static final whitelist CODE_LOCAL_POWER_OFF:I = 0x6f

.field public static final whitelist CODE_LOCAL_SERVICE_UNAVAILABLE:I = 0x83

.field public static final whitelist CODE_LOW_BATTERY:I = 0x1f9

.field public static final whitelist CODE_MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x57b

.field public static final whitelist CODE_MEDIA_INIT_FAILED:I = 0x191

.field public static final whitelist CODE_MEDIA_NOT_ACCEPTABLE:I = 0x193

.field public static final whitelist CODE_MEDIA_NO_DATA:I = 0x192

.field public static final whitelist CODE_MEDIA_UNSPECIFIED:I = 0x194

.field public static final whitelist CODE_MULTIENDPOINT_NOT_SUPPORTED:I = 0x386

.field public static final whitelist CODE_NETWORK_CONGESTION:I = 0x658

.field public static final whitelist CODE_NETWORK_DETACH:I = 0x5e9

.field public static final whitelist CODE_NETWORK_REJECT:I = 0x5e0

.field public static final whitelist CODE_NETWORK_RESP_TIMEOUT:I = 0x5df

.field public static final whitelist CODE_NO_CSFB_IN_CS_ROAM:I = 0x5ec

.field public static final whitelist CODE_NO_VALID_SIM:I = 0x5dd

.field public static final whitelist CODE_OEM_CAUSE_1:I = 0xf001

.field public static final whitelist CODE_OEM_CAUSE_10:I = 0xf00a

.field public static final whitelist CODE_OEM_CAUSE_11:I = 0xf00b

.field public static final whitelist CODE_OEM_CAUSE_12:I = 0xf00c

.field public static final whitelist CODE_OEM_CAUSE_13:I = 0xf00d

.field public static final whitelist CODE_OEM_CAUSE_14:I = 0xf00e

.field public static final whitelist CODE_OEM_CAUSE_15:I = 0xf00f

.field public static final whitelist CODE_OEM_CAUSE_2:I = 0xf002

.field public static final whitelist CODE_OEM_CAUSE_3:I = 0xf003

.field public static final whitelist CODE_OEM_CAUSE_4:I = 0xf004

.field public static final whitelist CODE_OEM_CAUSE_5:I = 0xf005

.field public static final whitelist CODE_OEM_CAUSE_6:I = 0xf006

.field public static final whitelist CODE_OEM_CAUSE_7:I = 0xf007

.field public static final whitelist CODE_OEM_CAUSE_8:I = 0xf008

.field public static final whitelist CODE_OEM_CAUSE_9:I = 0xf009

.field public static final blacklist CODE_OEM_CMC_END_BY_REGULAR_CALL_RELEASE:I = 0xfa5

.field public static final blacklist CODE_OEM_CMC_PD_PULL:I = 0xfa3

.field public static final blacklist CODE_OEM_CMC_REJECT_E911_NOT_ALLOWED_ON_SD:I = 0xfa7

.field public static final whitelist CODE_RADIO_ACCESS_FAILURE:I = 0x5e1

.field public static final whitelist CODE_RADIO_INTERNAL_ERROR:I = 0x5de

.field public static final whitelist CODE_RADIO_LINK_FAILURE:I = 0x5e2

.field public static final whitelist CODE_RADIO_LINK_LOST:I = 0x5e3

.field public static final whitelist CODE_RADIO_OFF:I = 0x5dc

.field public static final whitelist CODE_RADIO_RELEASE_ABNORMAL:I = 0x5e7

.field public static final whitelist CODE_RADIO_RELEASE_NORMAL:I = 0x5e6

.field public static final whitelist CODE_RADIO_SETUP_FAILURE:I = 0x5e5

.field public static final whitelist CODE_RADIO_UPLINK_FAILURE:I = 0x5e4

.field public static final whitelist CODE_REGISTRATION_ERROR:I = 0x3e8

.field public static final whitelist CODE_REJECTED_ELSEWHERE:I = 0x3f9

.field public static final whitelist CODE_REJECT_1X_COLLISION:I = 0x643

.field public static final whitelist CODE_REJECT_CALL_ON_OTHER_SUB:I = 0x642

.field public static final whitelist CODE_REJECT_CALL_TYPE_NOT_ALLOWED:I = 0x645

.field public static final whitelist CODE_REJECT_CONFERENCE_TTY_NOT_ALLOWED:I = 0x651

.field public static final whitelist CODE_REJECT_INTERNAL_ERROR:I = 0x64c

.field public static final whitelist CODE_REJECT_MAX_CALL_LIMIT_REACHED:I = 0x648

.field public static final whitelist CODE_REJECT_ONGOING_CALL_SETUP:I = 0x647

.field public static final whitelist CODE_REJECT_ONGOING_CALL_TRANSFER:I = 0x64b

.field public static final whitelist CODE_REJECT_ONGOING_CALL_UPGRADE:I = 0x650

.field public static final whitelist CODE_REJECT_ONGOING_CALL_WAITING_DISABLED:I = 0x641

.field public static final whitelist CODE_REJECT_ONGOING_CONFERENCE_CALL:I = 0x652

.field public static final whitelist CODE_REJECT_ONGOING_CS_CALL:I = 0x655

.field public static final whitelist CODE_REJECT_ONGOING_E911_CALL:I = 0x646

.field public static final whitelist CODE_REJECT_ONGOING_ENCRYPTED_CALL:I = 0x654

.field public static final whitelist CODE_REJECT_ONGOING_HANDOVER:I = 0x64e

.field public static final whitelist CODE_REJECT_QOS_FAILURE:I = 0x64d

.field public static final whitelist CODE_REJECT_SERVICE_NOT_REGISTERED:I = 0x644

.field public static final whitelist CODE_REJECT_UNKNOWN:I = 0x640

.field public static final whitelist CODE_REJECT_UNSUPPORTED_SDP_HEADERS:I = 0x64a

.field public static final whitelist CODE_REJECT_UNSUPPORTED_SIP_HEADERS:I = 0x649

.field public static final whitelist CODE_REJECT_VT_AVPF_NOT_ALLOWED:I = 0x653

.field public static final whitelist CODE_REJECT_VT_TTY_NOT_ALLOWED:I = 0x64f

.field public static final whitelist CODE_REMOTE_CALL_DECLINE:I = 0x57c

.field public static final blacklist CODE_RETRY_ON_IMS_WITHOUT_RTT:I = 0xbb9

.field public static final whitelist CODE_SESSION_MODIFICATION_FAILED:I = 0x5ed

.field public static final whitelist CODE_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x5ea

.field public static final whitelist CODE_SIP_AMBIGUOUS:I = 0x178

.field public static final whitelist CODE_SIP_BAD_ADDRESS:I = 0x151

.field public static final whitelist CODE_SIP_BAD_REQUEST:I = 0x14b

.field public static final whitelist CODE_SIP_BUSY:I = 0x152

.field public static final whitelist CODE_SIP_CALL_OR_TRANS_DOES_NOT_EXIST:I = 0x174

.field public static final whitelist CODE_SIP_CLIENT_ERROR:I = 0x156

.field public static final whitelist CODE_SIP_EXTENSION_REQUIRED:I = 0x172

.field public static final whitelist CODE_SIP_FORBIDDEN:I = 0x14c

.field public static final whitelist CODE_SIP_GLOBAL_ERROR:I = 0x16a

.field public static final whitelist CODE_SIP_INTERVAL_TOO_BRIEF:I = 0x173

.field public static final whitelist CODE_SIP_LOOP_DETECTED:I = 0x175

.field public static final whitelist CODE_SIP_METHOD_NOT_ALLOWED:I = 0x16e

.field public static final whitelist CODE_SIP_NOT_ACCEPTABLE:I = 0x154

.field public static final whitelist CODE_SIP_NOT_FOUND:I = 0x14d

.field public static final whitelist CODE_SIP_NOT_REACHABLE:I = 0x155

.field public static final whitelist CODE_SIP_NOT_SUPPORTED:I = 0x14e

.field public static final whitelist CODE_SIP_PROXY_AUTHENTICATION_REQUIRED:I = 0x16f

.field public static final whitelist CODE_SIP_REDIRECTED:I = 0x141

.field public static final whitelist CODE_SIP_REQUEST_CANCELLED:I = 0x153

.field public static final whitelist CODE_SIP_REQUEST_ENTITY_TOO_LARGE:I = 0x170

.field public static final whitelist CODE_SIP_REQUEST_PENDING:I = 0x179

.field public static final whitelist CODE_SIP_REQUEST_TIMEOUT:I = 0x14f

.field public static final whitelist CODE_SIP_REQUEST_URI_TOO_LARGE:I = 0x171

.field public static final whitelist CODE_SIP_SERVER_ERROR:I = 0x162

.field public static final whitelist CODE_SIP_SERVER_INTERNAL_ERROR:I = 0x15f

.field public static final whitelist CODE_SIP_SERVER_TIMEOUT:I = 0x161

.field public static final whitelist CODE_SIP_SERVICE_UNAVAILABLE:I = 0x160

.field public static final whitelist CODE_SIP_TEMPRARILY_UNAVAILABLE:I = 0x150

.field public static final whitelist CODE_SIP_TOO_MANY_HOPS:I = 0x176

.field public static final whitelist CODE_SIP_TRANSACTION_DOES_NOT_EXIST:I = 0x157

.field public static final whitelist CODE_SIP_UNDECIPHERABLE:I = 0x17a

.field public static final whitelist CODE_SIP_USER_MARKED_UNWANTED:I = 0x16d

.field public static final whitelist CODE_SIP_USER_REJECTED:I = 0x169

.field public static final whitelist CODE_SUPP_SVC_CANCELLED:I = 0x4b2

.field public static final whitelist CODE_SUPP_SVC_FAILED:I = 0x4b1

.field public static final whitelist CODE_SUPP_SVC_REINVITE_COLLISION:I = 0x4b3

.field public static final whitelist CODE_TIMEOUT_1XX_WAITING:I = 0xc9

.field public static final whitelist CODE_TIMEOUT_NO_ANSWER:I = 0xca

.field public static final whitelist CODE_TIMEOUT_NO_ANSWER_CALL_UPDATE:I = 0xcb

.field public static final greylist-max-o CODE_UNOBTAINABLE_NUMBER:I = 0x5eb

.field public static final whitelist CODE_UNSPECIFIED:I = 0x0

.field public static final whitelist CODE_USER_CANCELLED_SESSION_MODIFICATION:I = 0x200

.field public static final whitelist CODE_USER_DECLINE:I = 0x1f8

.field public static final whitelist CODE_USER_IGNORE:I = 0x1f7

.field public static final whitelist CODE_USER_NOANSWER:I = 0x1f6

.field public static final whitelist CODE_USER_REJECTED_SESSION_MODIFICATION:I = 0x1ff

.field public static final whitelist CODE_USER_TERMINATED:I = 0x1f5

.field public static final whitelist CODE_USER_TERMINATED_BY_REMOTE:I = 0x1fe

.field public static final whitelist CODE_UT_CB_PASSWORD_MISMATCH:I = 0x335

.field public static final whitelist CODE_UT_NETWORK_ERROR:I = 0x324

.field public static final whitelist CODE_UT_NOT_SUPPORTED:I = 0x321

.field public static final whitelist CODE_UT_OPERATION_NOT_ALLOWED:I = 0x323

.field public static final blacklist CODE_UT_RETRY_TO_CDMA_DIAL:I = 0x325

.field public static final whitelist CODE_UT_SERVICE_UNAVAILABLE:I = 0x322

.field public static final whitelist CODE_UT_SS_MODIFIED_TO_DIAL:I = 0x336

.field public static final whitelist CODE_UT_SS_MODIFIED_TO_DIAL_VIDEO:I = 0x339

.field public static final whitelist CODE_UT_SS_MODIFIED_TO_SS:I = 0x338

.field public static final whitelist CODE_UT_SS_MODIFIED_TO_USSD:I = 0x337

.field public static final blacklist CODE_WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x657

.field public static final whitelist CODE_WIFI_LOST:I = 0x57f

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_CODE_CALL_RETRY_BY_SETTINGS:I = 0x3

.field public static final whitelist EXTRA_CODE_CALL_RETRY_EMERGENCY:I = 0x4

.field public static final whitelist EXTRA_CODE_CALL_RETRY_NORMAL:I = 0x1

.field public static final whitelist EXTRA_CODE_CALL_RETRY_SILENT_REDIAL:I = 0x2

.field public static final blacklist EXTRA_CODE_CMC_END_BY_REGULAR_CALL_RELEASE:I = 0x1779

.field public static final blacklist EXTRA_CODE_E911_RETRY_CS:I = 0x17e

.field public static final blacklist EXTRA_CODE_E911_RETRY_SEARCH:I = 0x17d

.field public static final blacklist EXTRA_CODE_SIP_USER_REJECTED:I = 0x25b

.field public static final blacklist EXTRA_CODE_USER_TERMINATED:I = 0xc8

.field public static final blacklist EXTRA_CODE_USER_TERMINATED_BY_REMOTE:I = 0xd2

.field public static final whitelist EXTRA_MSG_SERVICE_NOT_AUTHORIZED:Ljava/lang/String; = "Forbidden. Not Authorized for Service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist sImsCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-q mCode:I

.field public greylist-max-q mExtraCode:I

.field public greylist-max-q mExtraMessage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 1189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    .line 1190
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UNSPECIFIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_ILLEGAL_ARGUMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_ILLEGAL_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_INTERNAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_IMS_SERVICE_DOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NO_PENDING_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_ENDED_BY_CONFERENCE_MERGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_POWER_OFF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_LOW_BATTERY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NETWORK_NO_SERVICE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NETWORK_NO_LTE_COVERAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const/16 v1, 0x7b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NETWORK_ROAMING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NETWORK_IP_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_SERVICE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NOT_REGISTERED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_EXCEEDED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_BUSY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_DECLINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_VCC_ON_PROGRESSING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_RESOURCE_RESERVATION_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_CS_RETRY_REQUIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_VOLTE_RETRY_REQUIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    const/16 v1, 0x94

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_TERMINATED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_HO_NOT_FEASIBLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_TIMEOUT_1XX_WAITING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_TIMEOUT_NO_ANSWER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_TIMEOUT_NO_ANSWER_CALL_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_CALL_BARRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const/16 v1, 0xf1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_FDN_BLOCKED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    const/16 v1, 0xf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_IMEI_NOT_ACCEPTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const/16 v1, 0xf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_MODIFIED_TO_USSD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const/16 v1, 0xf5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_MODIFIED_TO_SS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const/16 v1, 0xf6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_MODIFIED_TO_DIAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const/16 v1, 0xf7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_MODIFIED_TO_DIAL_VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    const/16 v1, 0xf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_VIDEO_MODIFIED_TO_DIAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const/16 v1, 0xf9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_VIDEO_MODIFIED_TO_SS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_VIDEO_MODIFIED_TO_USSD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const/16 v1, 0x141

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REDIRECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    const/16 v1, 0x14b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_BAD_REQUEST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    const/16 v1, 0x14c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_FORBIDDEN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_NOT_FOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_TEMPRARILY_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_BAD_ADDRESS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_BUSY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const/16 v1, 0x153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_CANCELLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_NOT_ACCEPTABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_NOT_REACHABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_CLIENT_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    const/16 v1, 0x157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_TRANSACTION_DOES_NOT_EXIST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const/16 v1, 0x15f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_SERVER_INTERNAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_SERVICE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    const/16 v1, 0x161

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_SERVER_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_SERVER_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const/16 v1, 0x169

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_USER_REJECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    const/16 v1, 0x16a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_GLOBAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const/16 v1, 0x16b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EMERGENCY_TEMP_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const/16 v1, 0x16c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EMERGENCY_PERM_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    const/16 v1, 0x16d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_USER_MARKED_UNWANTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const/16 v1, 0x16e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_METHOD_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    const/16 v1, 0x16f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_PROXY_AUTHENTICATION_REQUIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const/16 v1, 0x170

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_ENTITY_TOO_LARGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const/16 v1, 0x171

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_URI_TOO_LARGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    const/16 v1, 0x172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_EXTENSION_REQUIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const/16 v1, 0x173

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_INTERVAL_TOO_BRIEF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const/16 v1, 0x174

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_CALL_OR_TRANS_DOES_NOT_EXIST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    const/16 v1, 0x175

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_LOOP_DETECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const/16 v1, 0x176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_TOO_MANY_HOPS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    const/16 v1, 0x178

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_AMBIGUOUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const/16 v1, 0x179

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_PENDING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    const/16 v1, 0x17a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_UNDECIPHERABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MEDIA_INIT_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    const/16 v1, 0x192

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MEDIA_NO_DATA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    const/16 v1, 0x193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MEDIA_NOT_ACCEPTABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MEDIA_UNSPECIFIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    const/16 v1, 0x1f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_TERMINATED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const/16 v1, 0x1f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_NOANSWER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const/16 v1, 0x1f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_IGNORE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const/16 v1, 0x1f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_DECLINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const/16 v1, 0x1f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOW_BATTERY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    const/16 v1, 0x1fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_BLACKLISTED_CALL_ID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    const/16 v1, 0x1fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_TERMINATED_BY_REMOTE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const/16 v1, 0x1ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_REJECTED_SESSION_MODIFICATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_CANCELLED_SESSION_MODIFICATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const/16 v1, 0x5ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SESSION_MODIFICATION_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SERVICE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const/16 v1, 0x323

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_OPERATION_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const/16 v1, 0x324

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_NETWORK_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const/16 v1, 0x335

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_CB_PASSWORD_MISMATCH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    const/16 v1, 0x336

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SS_MODIFIED_TO_DIAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const/16 v1, 0x337

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SS_MODIFIED_TO_USSD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const/16 v1, 0x338

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SS_MODIFIED_TO_SS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const/16 v1, 0x339

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SS_MODIFIED_TO_DIAL_VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_ECBM_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MULTIENDPOINT_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REGISTRATION_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    const/16 v1, 0x3f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_ANSWERED_ELSEWHERE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const/16 v1, 0x3f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_CALL_PULL_OUT_OF_SYNC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const/16 v1, 0x3f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_CALL_END_CAUSE_CALL_PULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    const/16 v1, 0x3f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECTED_ELSEWHERE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    const/16 v1, 0x4b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SUPP_SVC_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const/16 v1, 0x4b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SUPP_SVC_CANCELLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const/16 v1, 0x4b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SUPP_SVC_REINVITE_COLLISION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const/16 v1, 0x514

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_IWLAN_DPD_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    const/16 v1, 0x578

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EPDG_TUNNEL_ESTABLISH_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EPDG_TUNNEL_REKEY_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const/16 v1, 0x57a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EPDG_TUNNEL_LOST_CONNECTION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    const/16 v1, 0x57b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MAXIMUM_NUMBER_OF_CALLS_REACHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    const/16 v1, 0x57c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REMOTE_CALL_DECLINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    const/16 v1, 0x57d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DATA_LIMIT_REACHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    const/16 v1, 0x57e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DATA_DISABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    const/16 v1, 0x57f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_WIFI_LOST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    const/16 v1, 0x580

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_IKEV2_AUTH_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_OFF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    const/16 v1, 0x5dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NO_VALID_SIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const/16 v1, 0x5de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_INTERNAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    const/16 v1, 0x5df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NETWORK_RESP_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    const/16 v1, 0x5e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NETWORK_REJECT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    const/16 v1, 0x5e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_ACCESS_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    const/16 v1, 0x5e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_LINK_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    const/16 v1, 0x5e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_LINK_LOST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    const/16 v1, 0x5e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_UPLINK_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const/16 v1, 0x5e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_SETUP_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    const/16 v1, 0x5e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_RELEASE_NORMAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const/16 v1, 0x5e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_RELEASE_ABNORMAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    const/16 v1, 0x5e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_ACCESS_CLASS_BLOCKED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    const/16 v1, 0x5e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NETWORK_DETACH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    const/16 v1, 0x5ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_ALTERNATE_EMERGENCY_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    const/16 v1, 0x5eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UNOBTAINABLE_NUMBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    const/16 v1, 0x5ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NO_CSFB_IN_CS_ROAM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    const/16 v1, 0x640

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    const/16 v1, 0x641

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CALL_WAITING_DISABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    const/16 v1, 0x642

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_CALL_ON_OTHER_SUB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    const/16 v1, 0x643

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_1X_COLLISION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    const/16 v1, 0x644

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_SERVICE_NOT_REGISTERED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    const/16 v1, 0x645

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_CALL_TYPE_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    const/16 v1, 0x646

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_E911_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    const/16 v1, 0x647

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CALL_SETUP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    const/16 v1, 0x648

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_MAX_CALL_LIMIT_REACHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    const/16 v1, 0x649

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_UNSUPPORTED_SIP_HEADERS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    const/16 v1, 0x64a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_UNSUPPORTED_SDP_HEADERS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    const/16 v1, 0x64b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CALL_TRANSFER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const/16 v1, 0x64c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_INTERNAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    const/16 v1, 0x64d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_QOS_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const/16 v1, 0x64e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_HANDOVER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    const/16 v1, 0x64f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_VT_TTY_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    const/16 v1, 0x650

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CALL_UPGRADE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    const/16 v1, 0x651

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_CONFERENCE_TTY_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    const/16 v1, 0x652

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CONFERENCE_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    const/16 v1, 0x653

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_VT_AVPF_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    const/16 v1, 0x654

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_ENCRYPTED_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    const/16 v1, 0x655

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CS_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    const/16 v1, 0x658

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NETWORK_CONGESTION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RETRY_ON_IMS_WITHOUT_RTT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    const v1, 0xf001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    const v1, 0xf002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    const v1, 0xf003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    const v1, 0xf004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    const v1, 0xf005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    const v1, 0xf006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    const v1, 0xf007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    const v1, 0xf008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    const v1, 0xf009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    const v1, 0xf00a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    const v1, 0xf00b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_11"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    const v1, 0xf00c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    const v1, 0xf00d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_13"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    const v1, 0xf00e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_14"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const v1, 0xf00f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_15"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    const/16 v1, 0x2328

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_E911_RETRY_REQUIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1443
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 1444
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1445
    return-void
.end method

.method public constructor greylist-max-r <init>(II)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "extraCode"    # I

    .line 1455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1457
    iput p2, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 1458
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1459
    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "extraCode"    # I
    .param p3, "extraMessage"    # Ljava/lang/String;

    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1462
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1463
    iput p2, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 1464
    iput-object p3, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1465
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1451
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsReasonInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1502
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCode()I
    .locals 1

    .line 1471
    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    return v0
.end method

.method public whitelist getExtraCode()I
    .locals 1

    .line 1478
    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    return v0
.end method

.method public whitelist getExtraMessage()Ljava/lang/String;
    .locals 1

    .line 1486
    iget-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1495
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    iget v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "UNKNOWN_CODE"

    .line 1496
    .local v0, "imsCode":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsReasonInfo :: {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1507
    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1508
    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    iget-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1510
    return-void
.end method
