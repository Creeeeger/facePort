.class public Lcom/sec/ims/settings/ImsProfile;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;,
        Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;,
        Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;
    }
.end annotation


# static fields
.field public static final AUDIO_CAPABILITIES_NB_ONLY:I = 0x3

.field public static final AUDIO_CAPABILITIES_NB_PREF:I = 0x1

.field public static final AUDIO_CAPABILITIES_WB_ONLY:I = 0x2

.field public static final AUDIO_CAPABILITIES_WB_PREF:I = 0x0

.field public static final AUDIO_CODEC_BANDWIDTH_EFFICIENT:I = 0x0

.field public static final AUDIO_CODEC_BANDWIDTH_PREF:I = 0x2

.field public static final AUDIO_CODEC_MANUAL:I = 0x4

.field public static final AUDIO_CODEC_OCTET_ALIGNED:I = 0x1

.field public static final AUDIO_CODEC_OCTET_ALIGNED_PREF:I = 0x3

.field public static final AUTOCONFIG_NEEDED:I = 0x1

.field public static final AUTOCONFIG_NEEDED_PARTIALLY:I = 0x2

.field public static final AUTOCONFIG_NOT_NEEDED:I = 0x0

.field public static final CMC_BT_HS_PD_PROFILE:Ljava/lang/String; = "SamsungCMC_BT_HS_PD"

.field public static final CMC_BT_HS_SD_PROFILE:Ljava/lang/String; = "SamsungCMC_BT_HS_SD"

.field public static final CMC_BT_HS_TYPE_PRIMARY:I = 0x9

.field public static final CMC_BT_HS_TYPE_SECONDARY:I = 0xa

.field public static final CMC_PD_PROFILE:Ljava/lang/String; = "SamsungCMC_PD"

.field public static final CMC_SD_PROFILE:Ljava/lang/String; = "SamsungCMC_SD"

.field public static final CMC_TYPE_NONE:I = 0x0

.field public static final CMC_TYPE_PRIMARY:I = 0x1

.field public static final CMC_TYPE_SECONDARY:I = 0x2

.field public static final CMC_WIFI_HS_PD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_HS_PD"

.field public static final CMC_WIFI_HS_TYPE_PRIMARY:I = 0x5

.field public static final CMC_WIFI_HS_TYPE_SECONDARY:I = 0x6

.field public static final CMC_WIFI_P2P_PD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_P2P_PD"

.field public static final CMC_WIFI_P2P_SD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_P2P_SD"

.field public static final CMC_WIFI_P2P_TYPE_PRIMARY:I = 0x7

.field public static final CMC_WIFI_P2P_TYPE_SECONDARY:I = 0x8

.field public static final CMC_WIFI_PD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_PD"

.field public static final CMC_WIFI_SD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_SD"

.field public static final CMC_WIFI_TYPE_PRIMARY:I = 0x3

.field public static final CMC_WIFI_TYPE_SECONDARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DEREG_TIMEOUT:I = 0xfa0

.field public static final DTMF_CODEC_ENABLED:I = 0x0

.field public static final DTMF_IN_BAND:I = 0x1

.field public static final ENABLE_STATUS_MANUAL:I = 0x1

.field public static final ENABLE_STATUS_OFF:I = 0x0

.field public static final ENABLE_STATUS_ON:I = 0x2

.field public static final GEOLOCATION_IN_PANI:I = 0x1

.field public static final GEOLOCATION_IN_PIDF:I = 0x2

.field public static final GEOLOCATION_IN_PIDF_PUBLISH:I = 0x4

.field public static final GEOLOCATION_IN_PIDF_WITH_CD:I = 0x3

.field public static final IP_TYPE_IPV4:I = 0x1

.field public static final IP_TYPE_IPV4V6:I = 0x3

.field public static final IP_TYPE_IPV6:I = 0x2

.field public static final LOCATION_REQ_EMERGENCY_CALL:I = 0x1

.field public static final LOCATION_REQ_EPDG_AVAILABLE_USER_AGREEMENT:I = 0x2

.field public static final LOCATION_REQ_PERIODIC:I = 0x4

.field public static final LOG_TAG:Ljava/lang/String; = "ImsProfile"

.field public static final NOTIFY_ALWAYS:I = 0x1

.field public static final NOTIFY_NONE:I = 0x0

.field public static final NOTIFY_REMOTE_NOT_AVAILABLE:I = 0x2

.field public static final PCSCF_PREF_AUTOCONF:I = 0x3

.field public static final PCSCF_PREF_AUTOCONF_IF_RCSONLY:I = 0x4

.field public static final PCSCF_PREF_ISIM:I = 0x1

.field public static final PCSCF_PREF_MANUAL:I = 0x2

.field public static final PCSCF_PREF_OMADM:I = 0x5

.field public static final PCSCF_PREF_PCO:I = 0x0

.field public static final PDN_BT_HS:Ljava/lang/String; = "p2p-bt"

.field public static final PDN_DEFAULT:Ljava/lang/String; = "default"

.field public static final PDN_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final PDN_IMS:Ljava/lang/String; = "ims"

.field public static final PDN_INTERNET:Ljava/lang/String; = "internet"

.field public static final PDN_WIFI:Ljava/lang/String; = "wifi"

.field public static final PDN_WIFI_DIRECT:Ljava/lang/String; = "p2p-wlan"

.field public static final PDN_WIFI_HS:Ljava/lang/String; = "swlan"

.field public static final PDN_XCAP:Ljava/lang/String; = "xcap"

.field public static final PIDF_INVITE:I = 0x4

.field public static final PIDF_INVITE_RESPONSE:I = 0x10

.field public static final PIDF_LTE:I = 0x2

.field public static final PIDF_MESSAGE:I = 0x40

.field public static final PIDF_REGISTER:I = 0x1

.field public static final PIDF_REINVITE:I = 0x8

.field public static final PIDF_REREGISTER:I = 0x2

.field public static final PIDF_UPDATE:I = 0x20

.field public static final PIDF_WIFI:I = 0x1

.field public static final RCS_CHAT_SERVICE:Ljava/lang/String; = "chat"

.field public static final RCS_PROFILE_BB:Ljava/lang/String; = "joyn_blackbird"

.field public static final RCS_PROFILE_CPR:Ljava/lang/String; = "joyn_cpr"

.field public static final RCS_PROFILE_NAGUIDELINES:Ljava/lang/String; = "NAGuidelines"

.field public static final RCS_PROFILE_UP:Ljava/lang/String; = "UP"

.field public static final RCS_PROFILE_UP10:Ljava/lang/String; = "UP_1.0"

.field public static final RCS_PROFILE_UP20:Ljava/lang/String; = "UP_2.0"

.field public static final RCS_PROFILE_UP2_2:Ljava/lang/String; = "UP_2.2"

.field public static final RCS_PROFILE_UP2_3:Ljava/lang/String; = "UP_2.3"

.field public static final RCS_PROFILE_UP2_4:Ljava/lang/String; = "UP_2.4"

.field public static final RCS_PROFILE_UP2_5:Ljava/lang/String; = "UP_2.5"

.field public static final RCS_PROFILE_UP2_PREFIX:Ljava/lang/String; = "UP_2"

.field public static final RCS_PROFILE_UP_T:Ljava/lang/String; = "UP_T"

.field public static final RCS_SERVICE:Ljava/lang/String; = "rcs"

.field public static final REREGI_FORCE_ON_NR:I = 0x2

.field public static final REREGI_OFF:I = 0x0

.field public static final REREGI_OFF_ON_RAT_CHANGE:I = 0x1

.field public static final REREGI_ON:I = 0x3

.field public static final SERVICE_ACCOUNT_AUTH:Ljava/lang/String; = "scab_account_authenticator"

.field public static final SERVICE_CAB:Ljava/lang/String; = "cab"

.field public static final SERVICE_CAPABILITY:Ljava/lang/String; = "capability_tapi"

.field public static final SERVICE_CDPN:Ljava/lang/String; = "cdpn"

.field public static final SERVICE_CHAT:Ljava/lang/String; = "chat_tapi"

.field public static final SERVICE_CHATBOT_COMMUNICATION:Ljava/lang/String; = "chatbot-communication"

.field public static final SERVICE_CMS:Ljava/lang/String; = "cms"

.field public static final SERVICE_CONTACT:Ljava/lang/String; = "contact_tapi"

.field public static final SERVICE_DATACHANNEL:Ljava/lang/String; = "datachannel"

.field public static final SERVICE_EC:Ljava/lang/String; = "ec"

.field public static final SERVICE_EUC:Ljava/lang/String; = "euc"

.field public static final SERVICE_FILEUPLOAD:Ljava/lang/String; = "fileupload_tapi"

.field public static final SERVICE_FT:Ljava/lang/String; = "ft"

.field public static final SERVICE_FT_HTTP:Ljava/lang/String; = "ft_http"

.field public static final SERVICE_FT_TAPI:Ljava/lang/String; = "ft_tapi"

.field public static final SERVICE_GLS:Ljava/lang/String; = "gls"

.field public static final SERVICE_GLS_TAPI:Ljava/lang/String; = "gls_tapi"

.field public static final SERVICE_GROUP_NONE:I = 0x0

.field public static final SERVICE_GROUP_RCS:I = 0x2

.field public static final SERVICE_GROUP_VOLTE:I = 0x1

.field public static final SERVICE_GROUP_VOLTE_RCS:I = 0x3

.field public static final SERVICE_HISTORYLOG:Ljava/lang/String; = "historylog_tapi"

.field public static final SERVICE_IM:Ljava/lang/String; = "im"

.field public static final SERVICE_IS:Ljava/lang/String; = "is"

.field public static final SERVICE_ISH:Ljava/lang/String; = "ish_tapi"

.field public static final SERVICE_LASTSEEN:Ljava/lang/String; = "lastseen"

.field public static final SERVICE_MDMI:Ljava/lang/String; = "mdmi"

.field public static final SERVICE_MMTEL_CALL_COMPOSER:Ljava/lang/String; = "mmtel-call-composer"

.field public static final SERVICE_MMTEL_VOICE:Ljava/lang/String; = "mmtel"

.field public static final SERVICE_MMTEL_VOICE_VIDEO:Ljava/lang/String; = "mmtel-video"

.field public static final SERVICE_MULTIMEDIASESSION:Ljava/lang/String; = "multimediasession_tapi"

.field public static final SERVICE_OPTIONS:Ljava/lang/String; = "options"

.field public static final SERVICE_PLUG_IN:Ljava/lang/String; = "plug-in"

.field public static final SERVICE_PRESENCE:Ljava/lang/String; = "presence"

.field public static final SERVICE_PROFILE:Ljava/lang/String; = "profile"

.field public static final SERVICE_SLM:Ljava/lang/String; = "slm"

.field public static final SERVICE_SMSIP:Ljava/lang/String; = "smsip"

.field public static final SERVICE_SS:Ljava/lang/String; = "ss"

.field public static final SERVICE_VS:Ljava/lang/String; = "vs"

.field public static final SERVICE_VSH:Ljava/lang/String; = "vsh_tapi"

.field public static final SERVICE_XDM:Ljava/lang/String; = "xdm"

.field public static final TIMER_NAME_1:Ljava/lang/String; = "1"

.field public static final TIMER_NAME_2:Ljava/lang/String; = "2"

.field public static final TIMER_NAME_4:Ljava/lang/String; = "4"

.field public static final TIMER_NAME_A:Ljava/lang/String; = "A"

.field public static final TIMER_NAME_B:Ljava/lang/String; = "B"

.field public static final TIMER_NAME_C:Ljava/lang/String; = "C"

.field public static final TIMER_NAME_D:Ljava/lang/String; = "D"

.field public static final TIMER_NAME_E:Ljava/lang/String; = "E"

.field public static final TIMER_NAME_F:Ljava/lang/String; = "F"

.field public static final TIMER_NAME_G:Ljava/lang/String; = "G"

.field public static final TIMER_NAME_H:Ljava/lang/String; = "H"

.field public static final TIMER_NAME_I:Ljava/lang/String; = "I"

.field public static final TIMER_NAME_J:Ljava/lang/String; = "J"

.field public static final TIMER_NAME_K:Ljava/lang/String; = "K"

.field public static final TRANSPORT_TCP:I = 0x3

.field public static final TRANSPORT_TLS:I = 0x4

.field public static final TRANSPORT_UDP:I = 0x2

.field public static final TRANSPORT_UDP_PREFERRED:I = 0x1

.field public static final TTY_TYPE_CS:I = 0x1

.field public static final TTY_TYPE_CS_RTT:I = 0x3

.field public static final TTY_TYPE_NONE:I = 0x0

.field public static final TTY_TYPE_PS:I = 0x2

.field public static final TTY_TYPE_PS_RTT:I = 0x4

.field public static final VCRBT_DTMF:I = 0x4

.field public static final VCRBT_MO:I = 0x1

.field public static final VCRBT_MT:I = 0x2

.field public static final VCRBT_NONE:I = 0x0

.field public static final VOLTE_SERVICE:Ljava/lang/String; = "volte"

.field protected static final chatServices:[Ljava/lang/String;

.field protected static final rcsServices:[Ljava/lang/String;

.field protected static final tapiServices:[Ljava/lang/String;

.field protected static final volteServices:[Ljava/lang/String;


# instance fields
.field private mBody:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v5, "cdpn"

    const-string v6, "datachannel"

    const-string v0, "mmtel"

    const-string v1, "mmtel-video"

    const-string v2, "mmtel-call-composer"

    const-string/jumbo v3, "smsip"

    const-string/jumbo v4, "ss"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    const-string v14, "plug-in"

    const-string v15, "lastseen"

    const-string v1, "options"

    const-string v2, "presence"

    const-string v3, "im"

    const-string v4, "ft"

    const-string v5, "ft_http"

    const-string/jumbo v6, "slm"

    const-string v7, "is"

    const-string/jumbo v8, "vs"

    const-string v9, "euc"

    const-string v10, "gls"

    const-string v11, "profile"

    const-string v12, "ec"

    const-string v13, "chatbot-communication"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    const-string v7, "gls_tapi"

    const-string v8, "multimediasession_tapi"

    const-string v1, "ft_tapi"

    const-string v2, "ish_tapi"

    const-string/jumbo v3, "vsh_tapi"

    const-string v4, "capability_tapi"

    const-string v5, "chat_tapi"

    const-string v6, "fileupload_tapi"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->tapiServices:[Ljava/lang/String;

    const-string v6, "plug-in"

    const-string v7, "gls"

    const-string v1, "im"

    const-string v2, "ft"

    const-string/jumbo v3, "slm"

    const-string v4, "ft_http"

    const-string v5, "chatbot-communication"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/settings/ImsProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->update(Landroid/content/ContentValues;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method private fromJson(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->splitNetwork()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getAllNetworkNameSet()[Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    sget-object v5, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v6, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    filled-new-array {v5, v6}, [Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->isOneOf([Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getChatServiceList()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    return-object v0
.end method

.method private getNetwork(I)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->-$$Nest$fgetmType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I

    move-result p0

    return p0
.end method

.method public static getNetworkType(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(Ljava/lang/String;)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->-$$Nest$fgetmType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I

    move-result p0

    return p0
.end method

.method public static getRcsProfileType(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->getProfileType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getRcsServiceList()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    return-object v0
.end method

.method public static getTapiServiceList()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->tapiServices:[Ljava/lang/String;

    return-object v0
.end method

.method private getTimer(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/ims/settings/ImsProfile;->getTimerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTimerMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v1, "timer"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, ":"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getVoLteServiceList()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    return-object v0
.end method

.method public static hasChatService(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasChatService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result p0

    return p0
.end method

.method public static hasChatService(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasChatService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result p0

    return p0
.end method

.method public static hasChatService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result p0

    return p0
.end method

.method public static hasRcsService(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result p0

    return p0
.end method

.method public static hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result p0

    return p0
.end method

.method public static hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result p0

    return p0
.end method

.method public static hasVolteService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isRcsService(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isRcsUp10Profile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UP_1.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRcsUp23AndUp24Profile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UP_2.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UP_2.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRcsUp24Profile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UP_2.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRcsUp2Profile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UP_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRcsUpProfile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRcsUpTransitionProfile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UP_T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRttSupported(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v0, "CarrierFeature_VoiceCall_SupportRTT"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    const-string/jumbo p1, "ro.boot.carrierid"

    const-string v0, "DEFAULT"

    invoke-static {p1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "carrierId : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isRttSupportByCallApp "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsProfile"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string p0, "EUX"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "EUY"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "EEX"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "EEY"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static trimAudioCodec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 22

    const-string v0, "DTMFWB"

    const-string v1, "AMR-WB"

    const-string v2, "AMRBE"

    const-string v3, "DTMF"

    const-string v5, "AMR"

    const-string v7, "AMROPEN"

    const-string v8, "AMRBE-WB"

    const-string v11, "ImsProfile"

    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v15, v14

    move v14, v13

    move v13, v12

    move/from16 v12, p4

    goto :goto_0

    :catch_0
    const-string/jumbo v12, "trimAudioCodec: Invalid values. Use default."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const-string/jumbo v9, "trimAudioCodec : audioCodecMode="

    const-string v10, " audioCapabilities="

    const-string v4, " dtmfCodecMode="

    invoke-static {v9, v10, v13, v14, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isEnableEvs="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v9, ","

    move-object/from16 v10, p0

    invoke-direct {v4, v10, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, ""

    move-object/from16 p0, v10

    move-object/from16 p1, p0

    move-object/from16 v6, p1

    move-object/from16 v18, v6

    move-object/from16 v17, v11

    move/from16 v16, v12

    move/from16 p4, v13

    move/from16 p3, v14

    move/from16 p2, v15

    move-object/from16 v11, v18

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v19, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    move-object/from16 v21, v12

    goto/16 :goto_3

    :sswitch_0
    move-object/from16 v21, v12

    const-string v12, "EVS_B2"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v12, 0xc

    goto/16 :goto_2

    :sswitch_1
    move-object/from16 v21, v12

    const-string v12, "EVS_B1"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v12, 0xb

    goto/16 :goto_2

    :sswitch_2
    move-object/from16 v21, v12

    const-string v12, "EVS_B0"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v12, 0xa

    goto :goto_2

    :sswitch_3
    move-object/from16 v21, v12

    const-string v12, "EVS_A2"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v12, 0x9

    goto :goto_2

    :sswitch_4
    move-object/from16 v21, v12

    const-string v12, "EVS_A1"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v12, 0x8

    goto :goto_2

    :sswitch_5
    move-object/from16 v21, v12

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto/16 :goto_3

    :cond_5
    const/4 v12, 0x7

    goto :goto_2

    :sswitch_6
    move-object/from16 v21, v12

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_3

    :cond_6
    const/4 v12, 0x6

    goto :goto_2

    :sswitch_7
    move-object/from16 v21, v12

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_3

    :cond_7
    const/4 v12, 0x5

    goto :goto_2

    :sswitch_8
    move-object/from16 v21, v12

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_3

    :cond_8
    const/4 v12, 0x4

    :goto_2
    move/from16 v19, v12

    goto :goto_3

    :sswitch_9
    move-object/from16 v21, v12

    const-string v12, "EVS"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_3

    :cond_9
    const/16 v19, 0x3

    goto :goto_3

    :sswitch_a
    move-object/from16 v21, v12

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_3

    :cond_a
    const/16 v19, 0x2

    goto :goto_3

    :sswitch_b
    move-object/from16 v21, v12

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_3

    :cond_b
    const/16 v19, 0x1

    goto :goto_3

    :sswitch_c
    move-object/from16 v21, v12

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_3

    :cond_c
    const/16 v19, 0x0

    :goto_3
    packed-switch v19, :pswitch_data_0

    invoke-static {v11, v9, v4}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v0

    :goto_4
    move-object/from16 v12, v21

    :goto_5
    move-object/from16 v0, p0

    goto :goto_8

    :pswitch_0
    move-object v13, v0

    move-object/from16 v19, v13

    goto :goto_4

    :pswitch_1
    move-object/from16 v19, v0

    move-object v15, v1

    goto :goto_4

    :pswitch_2
    move-object/from16 v19, v0

    move-object v10, v2

    goto :goto_4

    :pswitch_3
    move-object/from16 v19, v0

    move-object v12, v3

    goto :goto_5

    :pswitch_4
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_d

    move-object/from16 v19, v0

    move-object v0, v9

    goto :goto_6

    :cond_d
    move-object/from16 v19, v0

    move-object/from16 v0, p1

    :goto_6
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object/from16 v12, v21

    goto :goto_8

    :pswitch_5
    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v14, v5

    goto :goto_7

    :pswitch_6
    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v18, v7

    goto :goto_7

    :pswitch_7
    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v6, v8

    goto :goto_7

    :goto_8
    move-object/from16 p0, v0

    move-object/from16 v0, v19

    move-object/from16 v4, v20

    goto/16 :goto_1

    :cond_e
    move-object/from16 v21, v12

    const-string/jumbo v0, "trimAudioCodec : EVS="

    const-string v1, " AMRBE_WB="

    const-string v2, " AMRBE="

    move-object/from16 v3, p0

    invoke-static {v0, v3, v1, v6, v2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AMR-WB="

    const-string v2, " AMR="

    invoke-static {v0, v10, v1, v15, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " DTMFWB="

    const-string v2, " DTMF="

    invoke-static {v0, v14, v1, v13, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OTHERS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v16

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    move-object/from16 v3, p1

    :goto_9
    if-eqz p4, :cond_39

    move/from16 v0, p4

    if-eq v0, v2, :cond_2f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1f

    move/from16 v0, p3

    if-eq v0, v2, :cond_1a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    if-eq v0, v4, :cond_14

    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object v3, v9

    goto :goto_a

    :cond_10
    move-object/from16 v3, p1

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object v2, v9

    goto :goto_b

    :cond_11
    move-object/from16 v2, p1

    :goto_b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object v2, v9

    goto :goto_c

    :cond_12
    move-object/from16 v2, p1

    :goto_c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object v2, v9

    goto :goto_d

    :cond_13
    move-object/from16 v2, p1

    :goto_d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_14
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    move-object v3, v9

    goto :goto_e

    :cond_15
    move-object/from16 v3, p1

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object v2, v9

    goto :goto_f

    :cond_16
    move-object/from16 v2, p1

    :goto_f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_17
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object v3, v9

    goto :goto_10

    :cond_18
    move-object/from16 v3, p1

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object v2, v9

    goto :goto_11

    :cond_19
    move-object/from16 v2, p1

    :goto_11
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_1a
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    move-object v3, v9

    goto :goto_12

    :cond_1b
    move-object/from16 v3, p1

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object v2, v9

    goto :goto_13

    :cond_1c
    move-object/from16 v2, p1

    :goto_13
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    move-object v2, v9

    goto :goto_14

    :cond_1d
    move-object/from16 v2, p1

    :goto_14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object v2, v9

    goto :goto_15

    :cond_1e
    move-object/from16 v2, p1

    :goto_15
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_1f
    move/from16 v0, p3

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    move-object v3, v9

    goto :goto_16

    :cond_20
    move-object/from16 v3, p1

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    move-object v2, v9

    goto :goto_17

    :cond_21
    move-object/from16 v2, p1

    :goto_17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    move-object v2, v9

    goto :goto_18

    :cond_22
    move-object/from16 v2, p1

    :goto_18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    move-object v2, v9

    goto :goto_19

    :cond_23
    move-object/from16 v2, p1

    :goto_19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_24
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    move-object v3, v9

    goto :goto_1a

    :cond_25
    move-object/from16 v3, p1

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    move-object v2, v9

    goto :goto_1b

    :cond_26
    move-object/from16 v2, p1

    :goto_1b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_27
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    move-object v3, v9

    goto :goto_1c

    :cond_28
    move-object/from16 v3, p1

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    move-object v2, v9

    goto :goto_1d

    :cond_29
    move-object/from16 v2, p1

    :goto_1d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_2a
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    move-object v3, v9

    goto :goto_1e

    :cond_2b
    move-object/from16 v3, p1

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    move-object v2, v9

    goto :goto_1f

    :cond_2c
    move-object/from16 v2, p1

    :goto_1f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    move-object v2, v9

    goto :goto_20

    :cond_2d
    move-object/from16 v2, p1

    :goto_20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    move-object v2, v9

    goto :goto_21

    :cond_2e
    move-object/from16 v2, p1

    :goto_21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_2f
    move/from16 v0, p3

    if-eq v0, v2, :cond_36

    const/4 v2, 0x2

    if-eq v0, v2, :cond_34

    const/4 v2, 0x3

    if-eq v0, v2, :cond_32

    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    move-object v3, v9

    goto :goto_22

    :cond_30
    move-object/from16 v3, p1

    :goto_22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    move-object v2, v9

    goto :goto_23

    :cond_31
    move-object/from16 v2, p1

    :goto_23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_32
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    move-object v3, v9

    goto :goto_24

    :cond_33
    move-object/from16 v3, p1

    :goto_24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_34
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    move-object v3, v9

    goto :goto_25

    :cond_35
    move-object/from16 v3, p1

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_36
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    move-object v3, v9

    goto :goto_26

    :cond_37
    move-object/from16 v3, p1

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    move-object v2, v9

    goto :goto_27

    :cond_38
    move-object/from16 v2, p1

    :goto_27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_39
    move/from16 v0, p3

    if-eq v0, v2, :cond_40

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3c

    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    move-object v3, v9

    goto :goto_28

    :cond_3a
    move-object/from16 v3, p1

    :goto_28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    move-object v2, v9

    goto :goto_29

    :cond_3b
    move-object/from16 v2, p1

    :goto_29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2e

    :cond_3c
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    move-object v3, v9

    goto :goto_2a

    :cond_3d
    move-object/from16 v3, p1

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    :cond_3e
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    move-object v3, v9

    goto :goto_2b

    :cond_3f
    move-object/from16 v3, p1

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    :cond_40
    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    move-object v3, v9

    goto :goto_2c

    :cond_41
    move-object/from16 v3, p1

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    move-object v2, v9

    goto :goto_2d

    :cond_42
    move-object/from16 v2, p1

    :goto_2d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "Add AMROPEN"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v10, v18

    invoke-static {v2, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_43
    if-eqz p2, :cond_44

    const-string/jumbo v0, "trimAudioCodec : DTMF is disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    :cond_44
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_49

    const/4 v1, 0x3

    if-eq v0, v1, :cond_47

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    move-object v1, v9

    goto :goto_2f

    :cond_45
    move-object/from16 v1, p1

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_30

    :cond_46
    move-object/from16 v9, p1

    :goto_30
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_35

    :cond_47
    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_31

    :cond_48
    move-object/from16 v9, p1

    :goto_31
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    :cond_49
    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_32

    :cond_4a
    move-object/from16 v9, p1

    :goto_32
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    :cond_4b
    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    move-object v1, v9

    goto :goto_33

    :cond_4c
    move-object/from16 v1, p1

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_34

    :cond_4d
    move-object/from16 v9, p1

    :goto_34
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_35
    invoke-static {v2, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x26e44551 -> :sswitch_c
        -0x97d2710 -> :sswitch_b
        0xfda6 -> :sswitch_a
        0x10dc2 -> :sswitch_9
        0x202e29 -> :sswitch_8
        0x3b83469 -> :sswitch_7
        0x734e0c52 -> :sswitch_6
        0x78cd52b4 -> :sswitch_5
        0x7aa16fad -> :sswitch_4
        0x7aa16fae -> :sswitch_3
        0x7aa16fcb -> :sswitch_2
        0x7aa16fcc -> :sswitch_1
        0x7aa16fcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addImpu(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    return-void
.end method

.method public clone()Lcom/sec/ims/settings/ImsProfile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->clone()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dump()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public enable(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "enabled"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public get100tryingTimer()I
    .locals 1

    const-string/jumbo v0, "timer_100trying"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAcb()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "acb"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    const-string v0, "accessToken"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAddHistinfo()Z
    .locals 1

    const-string v0, "add_histinfo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getAllServiceSet()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v1, "network"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "services"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllServiceSet: No services array in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsProfile"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move v6, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllServiceSetFromAllNetwork()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAmrnbMode()Ljava/lang/String;
    .locals 1

    const-string v0, "amrnb_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAmrnbbeMaxRed()I
    .locals 1

    const-string v0, "amrnbbe_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAmrnbbePayload()I
    .locals 1

    const-string v0, "amrnbbe_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAmrnboaMaxRed()I
    .locals 1

    const-string v0, "amrnboa_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAmrnboaPayload()I
    .locals 1

    const-string v0, "amrnboa_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAmropenPayload()I
    .locals 1

    const-string v0, "amropen_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAmrwbMode()Ljava/lang/String;
    .locals 1

    const-string v0, "amrwb_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAmrwbbeMaxRed()I
    .locals 1

    const-string v0, "amrwbbe_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAmrwbbePayload()I
    .locals 1

    const-string v0, "amrwbbe_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAmrwboaMaxRed()I
    .locals 1

    const-string v0, "amrwboa_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAmrwboaPayload()I
    .locals 1

    const-string v0, "amrwboa_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    const-string v0, "app_id"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getAsContentValues()Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getAsJSONObjectList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAsStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAudioAS()I
    .locals 1

    const-string v0, "audio_as"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAudioAvpf()I
    .locals 1

    const-string v0, "audio_avpf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAudioCapabilities()Ljava/lang/String;
    .locals 1

    const-string v0, "audio_capabilities"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 4

    const-string v0, "audio_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAudioCodecMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAudioCapabilities()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getDtmfCodecMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getEnableEvsCodec()I

    move-result p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/ims/settings/ImsProfile;->trimAudioCodec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAudioCodecMode()Ljava/lang/String;
    .locals 1

    const-string v0, "audio_codec_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAudioDscp()I
    .locals 1

    const-string v0, "audio_dscp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAudioPortEnd()I
    .locals 1

    const-string v0, "audio_port_end"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAudioPortStart()I
    .locals 1

    const-string v0, "audio_port_start"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAudioRR()I
    .locals 1

    const-string v0, "audio_rr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAudioRS()I
    .locals 1

    const-string v0, "audio_rs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAudioRtcpXr()I
    .locals 1

    const-string v0, "audio_rtcpxr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAudioSrtp()I
    .locals 1

    const-string v0, "audio_srtp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAuthAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "auth_algo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAuthName()Ljava/lang/String;
    .locals 1

    const-string v0, "authname"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailCacheExpiry()I
    .locals 1

    const-string v0, "avail_cache_exp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getBadEventExpiry()I
    .locals 1

    const-string v0, "bad_event_expiry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getBlockDeregiOnSrvcc()Z
    .locals 1

    const-string v0, "block_deregi_on_srvcc"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getCapCacheExp()I
    .locals 1

    const-string v0, "cap_cache_exp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCapPollInterval()I
    .locals 1

    const-string v0, "cap_poll_interval"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCmcExtendedContentFeaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "cmc_ext_content_features_list"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCmcType()I
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v7, 0x0

    if-eqz p0, :cond_9

    const/4 v8, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v9, "SamsungCMC_BT_HS_SD"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v8, v0

    goto/16 :goto_0

    :sswitch_1
    const-string v9, "SamsungCMC_BT_HS_PD"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    move v8, v1

    goto :goto_0

    :sswitch_2
    const-string v9, "SamsungCMC_WIFI_HS_PD"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x6

    goto :goto_0

    :sswitch_3
    const-string v9, "SamsungCMC_WIFI_P2P_SD"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v8, v2

    goto :goto_0

    :sswitch_4
    const-string v9, "SamsungCMC_WIFI_P2P_PD"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v8, v3

    goto :goto_0

    :sswitch_5
    const-string v9, "SamsungCMC_WIFI_SD"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v8, v4

    goto :goto_0

    :sswitch_6
    const-string v9, "SamsungCMC_WIFI_PD"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v8, v5

    goto :goto_0

    :sswitch_7
    const-string v9, "SamsungCMC_SD"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v8, v6

    goto :goto_0

    :sswitch_8
    const-string v9, "SamsungCMC_PD"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v8, v7

    :goto_0
    packed-switch v8, :pswitch_data_0

    return v7

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    return v0

    :pswitch_4
    return v1

    :pswitch_5
    return v3

    :pswitch_6
    return v4

    :pswitch_7
    return v5

    :pswitch_8
    return v6

    :cond_9
    return v7

    :sswitch_data_0
    .sparse-switch
        -0x797bcccc -> :sswitch_8
        -0x797bcc6f -> :sswitch_7
        -0x354f6de2 -> :sswitch_6
        -0x354f6d85 -> :sswitch_5
        -0x31987b1 -> :sswitch_4
        -0x3198754 -> :sswitch_3
        0x3953553e -> :sswitch_2
        0x766364bb -> :sswitch_1
        0x76636518 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConferenceDialogType()Ljava/lang/String;
    .locals 1

    const-string v0, "conference_dialog_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConferenceReferUriAsserted()Ljava/lang/String;
    .locals 1

    const-string v0, "conference_referuri_asserted"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConferenceReferUriType()Ljava/lang/String;
    .locals 1

    const-string v0, "conference_referuri_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConferenceRemoveReferUriType()Ljava/lang/String;
    .locals 1

    const-string v0, "conference_remove_referuri_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConferenceSubscribe()Ljava/lang/String;
    .locals 1

    const-string v0, "conference_subscribe"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConferenceSupportPrematureEnd()Z
    .locals 1

    const-string v0, "conference_support_premature_end"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getConferenceUri()Ljava/lang/String;
    .locals 1

    const-string v0, "conference_uri"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConferenceUriMccmncType()I
    .locals 1

    const-string v0, "conference_uri_mccmnc_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getConferenceUseAnonymousUpdate()Ljava/lang/String;
    .locals 1

    const-string v0, "conference_use_anonymous_update"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfidenceLevel()I
    .locals 1

    const-string v0, "confidence_level"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getControlDscp()I
    .locals 1

    const-string v0, "control_dscp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDbrTimer()I
    .locals 1

    const-string v0, "dbr_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDefaultMcc()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMnc()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDelayPcscfChangeDuringCall()Z
    .locals 1

    const-string v0, "delay_pcscf_change_during_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getDeregTimeout(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object p0

    const/16 p1, 0xfa0

    if-eqz p0, :cond_0

    const-string v0, "dereg_timeout"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public getDisallowReregi()Z
    .locals 1

    const-string v0, "disallow_reregi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getDisplayFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "display_format"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayFormatHevc()Ljava/lang/String;
    .locals 1

    const-string v0, "display_format_hevc"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDmPollingPeriod()I
    .locals 1

    const-string v0, "dm_polling_period"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    const-string v0, "domain"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDtmfCodecMode()Ljava/lang/String;
    .locals 1

    const-string v0, "dtmf_codec_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDtmfMode()I
    .locals 1

    const-string v0, "dtmf_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDtmfNbPayload()I
    .locals 1

    const-string v0, "dtmf_nb_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDtmfWbPayload()I
    .locals 1

    const-string v0, "dtmf_wb_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDuid()Ljava/lang/String;
    .locals 1

    const-string v0, "duid"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getE911InviteTo18x()I
    .locals 1

    const-string/jumbo v0, "t_e911_invite_to_18x"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getE911PdnSelectionVowifi()I
    .locals 1

    const-string v0, "e911_pdn_selection_vowifi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getE911PermFail()I
    .locals 1

    const-string v0, "e911_perm_fail"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getE911RegiTime()I
    .locals 1

    const-string/jumbo v0, "t_e911_regi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEarlyMediaRtpTimeoutTimer()I
    .locals 1

    const-string v0, "early_media_rtp_timeout_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEcallCsfbWithoutActionTag()Z
    .locals 1

    const-string v0, "ecall_csfb_without_action_tag"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEctNoHoldForActiveCall()Z
    .locals 1

    const-string v0, "ect_no_hold_for_active_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEmm()I
    .locals 1

    const-string v0, "emm"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEnableAvSync()Z
    .locals 1

    const-string v0, "enable_av_sync"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnableEvsCodec()I
    .locals 7

    const-string v0, "gcf_vonr_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ImsProfile"

    if-eqz v0, :cond_0

    const-string p0, "getEnableEvsCodec(enable): force enable EVS for GCF VoNR mode by ImsSettings APP"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_IMS_CONFIG_EVS_MAX_HW_BANDWIDTH"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "swb"

    if-eqz v3, :cond_1

    move-object v0, v4

    :cond_1
    const-string v3, "evs_default_bandwidth"

    invoke-virtual {p0, v3}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const-string v5, "nb-swb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string p0, "getEnableEvsCodec(disable): evsHwBW("

    const-string v1, ") + evsSwBW("

    const-string v4, ")"

    invoke-static {p0, v0, v1, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EVS"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "enable_evs_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v6

    :goto_0
    return v1
.end method

.method public getEnableRcs()Z
    .locals 1

    const-string v0, "enable_rcs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnableRcsChat()Z
    .locals 1

    const-string v0, "enable_rcs_chat"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnableRtcpOnActiveCall()Z
    .locals 1

    const-string v0, "enable_rtcp_on_active_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnableScr()Z
    .locals 1

    const-string v0, "enable_scr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnableStatus()I
    .locals 1

    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEnableVerstat()Z
    .locals 1

    const-string v0, "enable_verstat"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnabledNetwork()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v1, "network"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEncAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "enc_algo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncrNullRoaming()Z
    .locals 1

    const-string v0, "encr_null_roaming"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEvs2ndPayload()I
    .locals 1

    const-string v0, "evs_2nd_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEvsBandwidthReceive()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_bandwidth_receive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsBandwidthReceiveExt()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_bandwidth_receive_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsBandwidthSend()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_bandwidth_send"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsBandwidthSendExt()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_bandwidth_send_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsBitRateReceive()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_bit_rate_receive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsBitRateReceiveExt()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_bit_rate_receive_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsBitRateSend()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_bit_rate_send"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsBitRateSendExt()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_bit_rate_send_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsChannelAwareReceive()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_channel_aware_receive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsChannelRecv()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_channel_recv"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsChannelSend()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_channel_send"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsCodecModeRequest()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_codec_mode_request"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsDefaultBandwidth()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_default_bandwidth"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsDefaultBitrate()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_default_bitrate"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsDiscontinuousTransmission()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_discontinuous_transmission"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsDtxRecv()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_dtx_recv"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsHeaderFull()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_header_full"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsLimitedCodec()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_limited_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsMaxRed()I
    .locals 1

    const-string v0, "evs_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEvsModeSwitch()Ljava/lang/String;
    .locals 1

    const-string v0, "evs_mode_switch"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvsPayload()I
    .locals 1

    const-string v0, "evs_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEvsPayloadExt()I
    .locals 1

    const-string v0, "evs_payload_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEvsUseDefaultRtcpBw()Z
    .locals 1

    const-string v0, "evs_use_default_rtcp_bw"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getExcludePaniVowifiInitialRegi()Z
    .locals 1

    const-string v0, "exclude_pani_vowifi_initial_regi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getExtImpuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ext_impu"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExtendedPublishTimer()I
    .locals 1

    const-string v0, "extended_publish_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getFramerate()I
    .locals 1

    const-string v0, "framerate"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getFullCodecOfferRequired()Z
    .locals 1

    const-string v0, "is_full_codec_offer_required"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getH263QcifPayload()I
    .locals 1

    const-string v0, "h263_qcif_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH264720pPayload()I
    .locals 1

    const-string v0, "h264_720p_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH264720plPayload()I
    .locals 1

    const-string v0, "h264_720pl_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH264CifPayload()I
    .locals 1

    const-string v0, "h264_cif_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH264CiflPayload()I
    .locals 1

    const-string v0, "h264_cifl_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH264QvgaPayload()I
    .locals 1

    const-string v0, "h264_qvga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH264QvgalPayload()I
    .locals 1

    const-string v0, "h264_qvgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH264VgaPayload()I
    .locals 1

    const-string v0, "h264_vga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH264VgalPayload()I
    .locals 1

    const-string v0, "h264_vgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH265Hd720pPayload()I
    .locals 1

    const-string v0, "h265_hd720p_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH265Hd720plPayload()I
    .locals 1

    const-string v0, "h265_hd720pl_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH265QvgaPayload()I
    .locals 1

    const-string v0, "h265_qvga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH265QvgalPayload()I
    .locals 1

    const-string v0, "h265_qvgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH265VgaPayload()I
    .locals 1

    const-string v0, "h265_vga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getH265VgalPayload()I
    .locals 1

    const-string v0, "h265_vgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getHashAlgoType()I
    .locals 1

    const-string v0, "hash_algo_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getId()I
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getIgnoreRtcpTimeoutOnHoldCall()Z
    .locals 1

    const-string v0, "ignore_rtcp_timeout_on_hold_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 1

    const-string v0, "impi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "impu"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInviteTimeout()I
    .locals 1

    const-string v0, "invite_timeout"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getIpVer()I
    .locals 2

    const-string v0, "ipver"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "ipv4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ipv6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "ipv4v6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    return v1
.end method

.method public getIpVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "ipver"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsTransportNeeded()Z
    .locals 1

    const-string v0, "need_transport_in_contact"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getLastPaniHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "last_pani_header"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLboPcscfAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "lbo_pcscf_address"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLboPcscfPort()I
    .locals 1

    const-string v0, "lbo_pcscf_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLocationAcquireFail()I
    .locals 1

    const-string/jumbo v0, "t_location_acquire_fail"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLocationAcquireFailIncall()I
    .locals 1

    const-string/jumbo v0, "t_location_acquire_fail_incall"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLocationAcquireFailSMS()I
    .locals 1

    const-string/jumbo v0, "t_location_acquire_fail_sms"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLocationAcquireFailVolte()I
    .locals 1

    const-string/jumbo v0, "t_location_acquire_fail_volte"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLte911Fail()I
    .locals 1

    const-string/jumbo v0, "t_lte_911_fail"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMaxPTime()I
    .locals 1

    const-string v0, "maxptime"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    const-string v0, "mcc"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getMdmnType()Ljava/lang/String;
    .locals 1

    const-string v0, "mdmn_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediaTypeRestrictionPolicy()Ljava/lang/String;
    .locals 1

    const-string v0, "media_type_restriction_policy"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinSe()I
    .locals 1

    const-string v0, "min_se"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    const-string v0, "mnc"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getMnoName()Ljava/lang/String;
    .locals 1

    const-string v0, "mnoname"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMssSize()I
    .locals 1

    const-string v0, "mss_size"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNeedAutoconfig()Z
    .locals 1

    const-string v0, "need_autoconfig"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNeedCheckAllowedMethodForRefresh()Z
    .locals 1

    const-string v0, "need_check_allowed_method_for_refresh"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNeedIpv4Dns()Z
    .locals 1

    const-string v0, "need_ipv4_dns"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNeedNaptrDns()Z
    .locals 1

    const-string v0, "need_naptr_dns"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNeedOmadmConfig()Z
    .locals 1

    const-string v0, "need_omadm_config"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNeedPidfRat()I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "need_pidf_rat"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pidfRatType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    const-string/jumbo v4, "wifi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "lte"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :cond_4
    return v2
.end method

.method public getNeedPidfSipMsg()I
    .locals 5

    const-string v0, "need_pidf_sip_msg"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    return v2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getNeedPidfSipMsg : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImsProfile"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, " "

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v3, p0, v2

    const-string/jumbo v4, "register"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "reregister"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    const-string v4, "invite"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "reinvite"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_4
    const-string v4, "invite_response"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v1, v1, 0x10

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "update"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v1, v1, 0x20

    goto :goto_1

    :cond_6
    const-string v4, "message"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v1, v1, 0x40

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    move v2, v1

    :cond_9
    return v2
.end method

.method public getNeedRemoveE911TimerOn18x()Z
    .locals 1

    const-string v0, "need_remove_e911_timer_on_18x"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNeedStartE911TimerOnAlerting()Z
    .locals 1

    const-string v0, "need_start_e911_timer_on_alerting"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNeedVoLteRetryInNr()Z
    .locals 1

    const-string v0, "need_volte_retry_in_nr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v0, "network"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsProfile"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetworkNameSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v1, "network"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNetworkSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v1, "network"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNotifyCallDowngraded()I
    .locals 1

    const-string v0, "notify_call_downgraded"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getNotifyCodecOnEstablished()Z
    .locals 1

    const-string v0, "notify_codec_on_established"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNotifyHistoryInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "notify_history_info"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOipFromPreferred()Ljava/lang/String;
    .locals 1

    const-string v0, "oip_from_preferred"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "representative_plmn"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getPTime()I
    .locals 1

    const-string v0, "ptime"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPacketizationMode()Ljava/lang/String;
    .locals 1

    const-string v0, "packetization_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPcscfList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pcscf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPcscfPreference()I
    .locals 1

    const-string v0, "pcscf_pref"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPdn()Ljava/lang/String;
    .locals 1

    const-string v0, "pdn"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPdnType()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p0

    const/4 v2, -0x1

    if-eqz p0, :cond_8

    const-string v3, "ImsProfile"

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v4, v2

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "emergency"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_1
    const-string v4, "default"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_2
    const-string v4, "internet"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "swlan"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_5
    const-string v4, "ims"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_6
    const-string v4, "p2p-bt"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    move v4, v0

    goto :goto_1

    :sswitch_7
    const-string v4, "p2p-wlan"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    const-string v0, "PDN not null and not matched, value is "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_1
    return v2

    :pswitch_2
    return v1

    :pswitch_3
    return v0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    const-string p0, "PDN_WIFI_DIRECT or PDN_WIFI_HS or PDN_BT_HS"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    return p0

    :cond_8
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76b42abf -> :sswitch_7
        -0x3ded046f -> :sswitch_6
        0x197cf -> :sswitch_5
        0x37af15 -> :sswitch_4
        0x68c48b5 -> :sswitch_3
        0x21ffc741 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPolicyOnLocalNumbers()Ljava/lang/String;
    .locals 1

    const-string v0, "policy_on_local_numbers"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPollListSubExp()I
    .locals 1

    const-string v0, "poll_list_sub_exp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPrecondtionInitialSendrecv()Z
    .locals 1

    const-string v0, "precondtion_initial_sendrecv"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPriDeviceIdWithURN()Ljava/lang/String;
    .locals 1

    const-string v0, "priDeviceIdWithURN"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPriority()I
    .locals 1

    const-string v0, "priority"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPrivacyHeaderRestricted()Ljava/lang/String;
    .locals 1

    const-string v0, "privacy_header_restricted"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPublishErrRetryTimer()I
    .locals 1

    const-string v0, "publish_err_retry_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPublishExpiry()I
    .locals 1

    const-string v0, "publish_expiry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPublishTimer()I
    .locals 1

    const-string v0, "publish_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPullingServerUri()Ljava/lang/String;
    .locals 1

    const-string v0, "pulling_server_uri"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQValue()I
    .locals 1

    const-string v0, "qvalue"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRPort()I
    .locals 1

    const-string/jumbo v0, "rport"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRTCPTimeout()I
    .locals 1

    const-string/jumbo v0, "rtcp_timeout"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRTPTimeout()I
    .locals 1

    const-string/jumbo v0, "rtp_timeout"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRcsConfigMark()Ljava/lang/String;
    .locals 1

    const-string v0, "config_version_mark"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .locals 1

    const-string v0, "rcs_profile"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRcsProfileType()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->getProfileType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRcsTelephonyFeatureTagRequired()Z
    .locals 1

    const-string v0, "is_rcs_telephony_feature_tag_required"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getRegExpire()I
    .locals 1

    const-string/jumbo v0, "reg_expires"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRegRetryBaseTime()I
    .locals 1

    const-string/jumbo v0, "reg_retry_base_time"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRegRetryMaxTime()I
    .locals 1

    const-string/jumbo v0, "reg_retry_max_time"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRegRetryPcscfPolicyOn403()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "reg_retry_pcscf_policy_on_403"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationAlgorithm()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "regi_algo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteUriType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "remote_uri_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReplaceCFNL()Z
    .locals 1

    const-string v0, "gcf_cfnl_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ImsProfile"

    const-string v0, "getReplaceCFNL(enable): force replace CFNL for GCF by ImsSettings APP"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRequestLocationTiming()I
    .locals 5

    const-string/jumbo v0, "request_location_timing"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRequestLocationTiming : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p0, v1

    const-string v4, "emergency_call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string v4, "epdg_available_user_agreement"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    const-string v4, "periodic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x4

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public getReregiOnRatChange()I
    .locals 1

    const-string/jumbo v0, "reregi_on_ratchange"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off_rat_change"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "force_nr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRetryInviteOnTcpReset()Z
    .locals 1

    const-string/jumbo v0, "retry_invite_on_tcp_reset"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getRingbackTimer()I
    .locals 1

    const-string/jumbo v0, "ringback_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRingingTimer()I
    .locals 1

    const-string/jumbo v0, "ringing_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSaClientPort()I
    .locals 1

    const-string/jumbo v0, "secure_client_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSaServerPort()I
    .locals 1

    const-string/jumbo v0, "secure_server_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getScmVersion()I
    .locals 2

    const-string/jumbo v0, "scm_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSelectTransportAfterTcpReset()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "select_transport_after_tcp_reset"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelfPort()I
    .locals 2

    const-string/jumbo v0, "self_port"

    const/16 v1, 0x13c4

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSend18xReliably()Z
    .locals 1

    const-string/jumbo v0, "send_18x_reliable"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSendByeForUssi()Z
    .locals 1

    const-string/jumbo v0, "send_bye_for_ussi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getServiceSet(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getServiceSet(Ljava/lang/Integer;Z)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "enabled"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo p2, "services"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSessionExpire()I
    .locals 1

    const-string/jumbo v0, "session_expires"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSessionRefreshMethod()I
    .locals 1

    const-string/jumbo v0, "session_refresh_method"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSessionRefresher()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "session_refresher"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimMobility()Z
    .locals 1

    const-string/jumbo v0, "simmobility"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSimMobilityForRcs()Z
    .locals 1

    const-string/jumbo v0, "simmobilityForRcs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSimMobilityUpdate()Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v0, "simmobility_update"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsProfile"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSipMobility()I
    .locals 1

    const-string/jumbo v0, "sip_mobility"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSipPort()I
    .locals 1

    const-string v0, "port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSipUserAgent()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "useragent"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmsPsi()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sms_psi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmscSet()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "smsc_set"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmsoipUsagePolicy()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "smsoip_usage_policy"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSosUrnRequired()Z
    .locals 1

    const-string/jumbo v0, "sos_urn_required"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSslType()I
    .locals 1

    const-string/jumbo v0, "ssl_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSubscribeForReg()I
    .locals 1

    const-string/jumbo v0, "subscribe_for_reg"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSubscribeMaxEntry()I
    .locals 1

    const-string/jumbo v0, "subscribe_max_entry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSubscriberTimer()I
    .locals 1

    const-string/jumbo v0, "subscriber_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSupport183ForIr92v9Precondition()Z
    .locals 1

    const-string/jumbo v0, "support_183_for_ir92v9_precondition"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupport199ProvisionalResponse()Z
    .locals 1

    const-string/jumbo v0, "support_199_provisional_response"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupport380PolicyByEmcbs()Z
    .locals 1

    const-string/jumbo v0, "support_380_policy_by_emcbs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupport3gppUssi()Z
    .locals 1

    const-string/jumbo v0, "support_3gpp_ussi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportAccessType()Z
    .locals 1

    const-string/jumbo v0, "support_access_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportAltitude()Z
    .locals 1

    const-string/jumbo v0, "support_altitude"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportB2cCallcomposerWithoutFeaturetag()I
    .locals 1

    const-string/jumbo v0, "support_b2c_callcomposer_without_featuretag"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSupportClir()Z
    .locals 1

    const-string/jumbo v0, "support_clir"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportDatachannelWithFeatureCaps()Z
    .locals 1

    const-string/jumbo v0, "support_datachannel_with_feature_caps"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportEct()Z
    .locals 1

    const-string/jumbo v0, "support_ect"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportImsNotAvailable()Z
    .locals 1

    const-string/jumbo v0, "support_ims_not_available"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportLtePreferred()Z
    .locals 1

    const-string/jumbo v0, "support_lte_preferred"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportMergeVideoConference()Z
    .locals 1

    const-string/jumbo v0, "support_merge_video_conference"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportNetworkInitUssi()Z
    .locals 1

    const-string/jumbo v0, "support_network_init_ussi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportRcsAcrossSalesCode()Z
    .locals 1

    const-string/jumbo v0, "support_rcs_across_sales_code"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportReplaceMerge()Z
    .locals 1

    const-string/jumbo v0, "support_replace_merge"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportRfc6337ForDelayedOffer()Z
    .locals 1

    const-string/jumbo v0, "support_rfc6337_for_delayed_offer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportUpgradeVideoConference()Z
    .locals 1

    const-string/jumbo v0, "support_upgrade_video_conference"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportedGeolocationPhase()I
    .locals 1

    const-string/jumbo v0, "supported_geolocation_phase"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTcpRstUacErrorcode()I
    .locals 1

    const-string/jumbo v0, "tcprst_uac_errorcode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTcpRstUasErrorcode()I
    .locals 1

    const-string/jumbo v0, "tcprst_uas_errorcode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTextAS()I
    .locals 1

    const-string/jumbo v0, "text_as"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTextAvpf()I
    .locals 1

    const-string/jumbo v0, "text_avpf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTextPort()I
    .locals 1

    const-string/jumbo v0, "text_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTextRR()I
    .locals 1

    const-string/jumbo v0, "text_rr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTextRS()I
    .locals 1

    const-string/jumbo v0, "text_rs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTextSrtp()I
    .locals 1

    const-string/jumbo v0, "text_srtp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTimer1()I
    .locals 1

    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimer2()I
    .locals 1

    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimer4()I
    .locals 1

    const-string v0, "4"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerA()I
    .locals 1

    const-string v0, "A"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerB()I
    .locals 1

    const-string v0, "B"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerC()I
    .locals 1

    const-string v0, "C"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerD()I
    .locals 1

    const-string v0, "D"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerE()I
    .locals 1

    const-string v0, "E"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerEpsFbWatchdog()I
    .locals 1

    const-string/jumbo v0, "t_eps_fb_watchdog"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTimerF()I
    .locals 1

    const-string v0, "F"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerG()I
    .locals 1

    const-string v0, "G"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerH()I
    .locals 1

    const-string v0, "H"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerI()I
    .locals 1

    const-string v0, "I"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerJ()I
    .locals 1

    const-string v0, "J"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimerK()I
    .locals 1

    const-string v0, "K"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTransport()I
    .locals 1

    const-string/jumbo v0, "transport"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string/jumbo v0, "udp-preferred"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v0, "udp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string/jumbo v0, "tcp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string/jumbo v0, "tls"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "transport"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTryReregisterFromKeepalive()Z
    .locals 1

    const-string/jumbo v0, "try_reregister_from_keepalive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getTtyType(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->isRttSupported(I)Z

    move-result p1

    const-string/jumbo v0, "tty_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string/jumbo v0, "ttyType : "

    const-string v1, "ImsProfile"

    invoke-static {p0, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    add-int/2addr p0, v0

    return p0

    :cond_1
    if-nez p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_3

    :cond_2
    sub-int/2addr p0, v0

    :cond_3
    return p0
.end method

.method public getUacList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "uac_sip_list"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUiccMobilityVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uicc_mobility_ver"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUse183OnProgressIncoming()Z
    .locals 1

    const-string/jumbo v0, "use_183_on_progress_incoming"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getUse200offerWhenRemoteNotSupport100rel()Z
    .locals 1

    const-string/jumbo v0, "use_200offer_when_remote_not_support_100rel"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getUsePemHeader()Z
    .locals 1

    const-string/jumbo v0, "use_pem_header"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getUsePrecondition()I
    .locals 1

    const-string/jumbo v0, "use_precondition"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getUseProvisionalResponse100rel()Z
    .locals 1

    const-string/jumbo v0, "use_provisional_response_100rel"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getUseQ850causeOn480()Z
    .locals 1

    const-string/jumbo v0, "use_q850cause_on_480"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getUseSpsForH264Hd()Z
    .locals 1

    const-string/jumbo v0, "use_sps_for_h264_hd"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getUseSubcontactWhenResub()Z
    .locals 1

    const-string/jumbo v0, "use_subcontact_when_resub"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getValidLocationAccuracy()I
    .locals 1

    const-string/jumbo v0, "valid_location_accuracy"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getValidLocationTime()I
    .locals 1

    const-string/jumbo v0, "t_valid_location_time"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoAS()I
    .locals 1

    const-string/jumbo v0, "video_as"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoAvpf()I
    .locals 1

    const-string/jumbo v0, "video_avpf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoCodec()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "video_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoCrbtSupportType()I
    .locals 2

    const-string/jumbo v0, "video_crbt_support_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_VoiceCall_SupportCallerRingBackTone"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "supportCallerRBT="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoCrbtSupportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method public getVideoPortEnd()I
    .locals 1

    const-string/jumbo v0, "video_port_end"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoPortStart()I
    .locals 1

    const-string/jumbo v0, "video_port_start"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoRR()I
    .locals 1

    const-string/jumbo v0, "video_rr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoRS()I
    .locals 1

    const-string/jumbo v0, "video_rs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoRtcpXr()I
    .locals 1

    const-string/jumbo v0, "video_rtcpxr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoSrtp()I
    .locals 1

    const-string/jumbo v0, "video_srtp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public hasEmergencySupport()Z
    .locals 1

    const-string v0, "emergency_support"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasService(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasService(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public isAllowedOnRoaming()Z
    .locals 1

    const-string/jumbo v0, "support_roaming"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isAllowedRegiWhenLocationUnavailable()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v0, "allow_regi_when_location_unavailable"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAnonymousFetch()Z
    .locals 1

    const-string v0, "anonymous_fetch"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isCmcExtendedContentSupport()Z
    .locals 1

    const-string v0, "cmc_ext_content_support"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnableGruu()Z
    .locals 1

    const-string v0, "enable_gruu"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnableSessionId()Z
    .locals 1

    const-string v0, "enable_session_id"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnableVcid()Z
    .locals 4

    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "persist.omc.sales_code"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "K0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const-string/jumbo v0, "ro.build.version.oneui"

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0xc3b4

    if-ge v0, v1, :cond_4

    const-string v0, "enable_vcid_aux"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    const-string v0, "enable_vcid"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEpdgSupported()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object p0

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGzipEnabled()Z
    .locals 1

    const-string v0, "enable_gzip"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isIpSecEnabled()Z
    .locals 1

    const-string/jumbo v0, "support_ipsec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isMmtelVideoExempt()Z
    .locals 1

    const-string v0, "mmtel_video_exempt"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMmtelVoiceExempt()Z
    .locals 1

    const-string v0, "mmtel_voice_exempt"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMsrpBearerUsed()Z
    .locals 1

    const-string/jumbo v0, "use_msrp_bearer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isNeedPidfSipMsg(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNeedPidfSipMsg()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNetworkEnabled(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "enabled"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProper()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPublishGzipEnabled()Z
    .locals 1

    const-string v0, "enable_gzip_for_publish"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSamsungMdmnEnabled()Z
    .locals 1

    const-string v0, "mdmn_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Samsung"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSipUriOnly()Z
    .locals 1

    const-string/jumbo v0, "sip_uri_only"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSmsIpExempt()Z
    .locals 1

    const-string/jumbo v0, "smsoip_exempt"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSoftphoneEnabled()Z
    .locals 1

    const-string v0, "mdmn_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Softphone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSupportSmsOverIms()Z
    .locals 1

    const-string/jumbo v0, "support_sms_over_ims"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSupportVideoCapabilities()Z
    .locals 1

    const-string/jumbo v0, "video_capabilities"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isTcpGracefulShutdownEnabled()Z
    .locals 1

    const-string v0, "enable_tcp_graceful_shutdown"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isUicclessEmergency()Z
    .locals 1

    const-string/jumbo v0, "uiccless_emergency"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isVceConfigEnabled()Z
    .locals 1

    const-string/jumbo v0, "vce_config_enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isVolteServiceStatus()Z
    .locals 1

    const-string/jumbo v0, "volte_service_status"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isWifiPreConditionEnabled()Z
    .locals 1

    const-string/jumbo v0, "wifi_precondition_enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public removeImpu(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p1, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "app_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAudioPortEnd(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "audio_port_end"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setAudioPortStart(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "audio_port_start"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setAudioSrtp(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "audio_srtp"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setAuthAlgorithm(Ljava/lang/String;)V
    .locals 1

    const-string v0, "auth_algo"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "authname"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConferenceSupportPrematureEnd(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "conference_support_premature_end"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setDelayPcscfChangeDuringCall(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "delay_pcscf_change_during_call"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setDeregTimeout(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string p1, "dereg_timeout"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "display_name"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    const-string v0, "domain"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDuid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "duid"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEctNoHoldForActiveCall(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "ect_no_hold_for_active_call"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setEmergencySupport(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "emergency_support"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setEnableEvsCodec(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enable_evs_codec"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setEnableScr(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enable_scr"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setEnableVerstat(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enable_verstat"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setEncAlgorithm(Ljava/lang/String;)V
    .locals 1

    const-string v0, "enc_algo"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvs2ndPayload(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "evs_2nd_payload"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setEvsBandwidthReceive(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_bandwidth_receive"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBandwidthReceiveExt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_bandwidth_receive_ext"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBandwidthSend(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_bandwidth_send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBandwidthSendExt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_bandwidth_send_ext"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBitRateReceive(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_bit_rate_receive"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBitRateReceiveExt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_bit_rate_receive_ext"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBitRateSend(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_bit_rate_send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsBitRateSendExt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_bit_rate_send_ext"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsChannelAwareReceive(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_channel_aware_receive"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsChannelRecv(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_channel_recv"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsChannelSend(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_channel_send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsCodecModeRequest(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_codec_mode_request"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsDefaultBandwidth(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_default_bandwidth"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsDefaultBitrate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_default_bitrate"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsDiscontinuousTransmission(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_discontinuous_transmission"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsDtxRecv(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_dtx_recv"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsHeaderFull(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_header_full"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsLimitedCodec(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_limited_codec"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsModeSwitch(Ljava/lang/String;)V
    .locals 1

    const-string v0, "evs_mode_switch"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEvsPayload(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "evs_payload"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setEvsPayloadExt(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "evs_payload_ext"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setEvsUseDefaultRtcpBw(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "evs_use_default_rtcp_bw"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setExcludePaniVowifiInitialRegi(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "exclude_pani_vowifi_initial_regi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setExtImpuList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ext_impu"

    if-nez p1, :cond_0

    const-string p1, "ImsProfile"

    const-string/jumbo v1, "setExtImpuList: impuList is null."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setId(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setImpi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "impi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImpuList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "impu"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIpSpecEnabled(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_ipsec"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setIpVer(I)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "ipver"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p1, "ipv4v6"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong ipVer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "ipv6"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "ipv4"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setIsSipUriOnly(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "sip_uri_only"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setLboPcscfAddressList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lbo_pcscf_address"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLboPcscfPort(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lbo_pcscf_port"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mcc"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMediaTypeRestrictionPolicy(Ljava/lang/String;)V
    .locals 1

    const-string v0, "media_type_restriction_policy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mnc"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMnoName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mnoname"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMsrpBearerUsed(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "use_msrp_bearer"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setMssSize(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "mss_size"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNeedAutoconfig(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "need_autoconfig"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNeedCheckAllowedMethodForRefresh(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "need_check_allowed_method_for_refresh"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNeedNaptrDns(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "need_naptr_dns"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNeedOmadmConfig(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "need_omadm_config"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNeedPidfRat(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "need_pidf_rat"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNeedPidfSipMsg(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "need_pidf_sip_msg"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNetworkEnabled(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "services"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string p1, "network"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string p0, "enabled"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setNetworkEnabled(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    return-void
.end method

.method public setNetworkList(Ljava/lang/String;)V
    .locals 8

    const-string v0, "\\s*,\\s*"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, ","

    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string/jumbo v5, "type"

    if-ge v4, v2, :cond_1

    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v3, p0, :cond_3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    add-int/lit8 p0, v3, -0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    move v3, p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setNotifyCallDowngraded(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "notify_call_downgraded"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setNotifyCodecOnEstablished(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "notify_codec_on_established"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setNotifyHistoryInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "notify_history_info"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOipFromPreferred(Ljava/lang/String;)V
    .locals 1

    const-string v0, "oip_from_preferred"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPcscfList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pcscf"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPcscfPreference(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pcscf_pref"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setPdn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pdn"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPolicyOnLocalNumbers(Ljava/lang/String;)V
    .locals 1

    const-string v0, "policy_on_local_numbers"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPriDeviceIdWithURN(Ljava/lang/String;)V
    .locals 1

    const-string v0, "priDeviceIdWithURN"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPriority(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "priority"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setRPort(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "rport"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setRcsProfile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "rcs_profile"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRegistrationAlgorithm(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "regi_algo"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestLocationTiming(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "request_location_timing"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReregiOnRatChange(I)V
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "reregi_on_ratchange"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "off"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "on"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "off_rat_change"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSaClientPort(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "secure_client_port"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setSaServerPort(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "secure_server_port"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setSend18xReliably(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "send_18x_reliable"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSendByeForUssi(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "send_bye_for_ussi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setServiceSet(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo p1, "services"

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "ImsProfile"

    const-string/jumbo p1, "setServiceSet: getNetwork return null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSimMobility(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSimMobility: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "simmobility"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSimMobilityForRcs(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSimMobilityForRcs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "simmobilityForRcs"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSipPort(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "port"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setSipUserAgent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "useragent"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSmsPsi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sms_psi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSmsoipUsagePolicy(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "smsoip_usage_policy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSoftphoneEnabled(Ljava/lang/String;)V
    .locals 1

    const-string p1, "mdmn_type"

    const-string v0, "Softphone"

    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSosUrnRequired(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "sos_urn_required"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSslType(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "ssl_type"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setSupport199ProvisionalResponse(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_199_provisional_response"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupport380PolicyByEmcbs(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_380_policy_by_emcbs"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupport3gppUssi(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_3gpp_ussi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportAltitude(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_altitude"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportClir(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_clir"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportNetworkInitUssi(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_network_init_ussi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportRcsAcrossSalesCode(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_rcs_across_sales_code"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportRfc6337ForDelayedOffer(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_rfc6337_for_delayed_offer"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportSmsOverIms(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "support_sms_over_ims"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSupportedGeolocationPhase(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "supported_geolocation_phase"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setTcpGracefulShutdownEnabled(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enable_tcp_graceful_shutdown"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setTimer(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/ims/settings/ImsProfile;->getTimerMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, ","

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "timer"

    invoke-virtual {p0, p2, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTimer1(I)V
    .locals 1

    const-string v0, "1"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimer2(I)V
    .locals 1

    const-string v0, "2"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimer4(I)V
    .locals 1

    const-string v0, "4"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerA(I)V
    .locals 1

    const-string v0, "A"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerB(I)V
    .locals 1

    const-string v0, "B"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerC(I)V
    .locals 1

    const-string v0, "C"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerD(I)V
    .locals 1

    const-string v0, "D"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerE(I)V
    .locals 1

    const-string v0, "E"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerF(I)V
    .locals 1

    const-string v0, "F"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerG(I)V
    .locals 1

    const-string v0, "G"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerH(I)V
    .locals 1

    const-string v0, "H"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerI(I)V
    .locals 1

    const-string v0, "I"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerJ(I)V
    .locals 1

    const-string v0, "J"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimerK(I)V
    .locals 1

    const-string v0, "K"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    return-void
.end method

.method public setTransport(I)V
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "transport"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "tls"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong transport type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string/jumbo p1, "tcp"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "udp"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "udp-preferred"

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUicclessEmergency(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "uiccless_emergency"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setUse200offerWhenRemoteNotSupport100rel(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "use_200offer_when_remote_not_support_100rel"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setUseQ850causeOn480(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "use_q850cause_on_480"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setVceConfigEnabled(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "vce_config_enabled"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setVideoPortEnd(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "video_port_end"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setVideoPortStart(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "video_port_start"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setVideoSrtp(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "video_srtp"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public shouldUseCompactHeader()Z
    .locals 1

    const-string/jumbo v0, "sip_compact_header"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public splitNetwork()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-static {v7, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    new-instance v11, Lorg/json/JSONObject;

    const-string v12, "enabled"

    const-string v13, "dereg_timeout"

    const-string/jumbo v14, "services"

    filled-new-array {v14, v12, v13}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v5, v12}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    invoke-virtual {v11, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Name : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pdn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scmversion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getScmVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selfport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSelfPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emergency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hashAlgoType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getHashAlgoType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/content/ContentValues;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "useragent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\\[.*\\]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
