.class public Lcom/samsung/android/wifi/SemMobileWipsDef;
.super Ljava/lang/Object;
.source "SemMobileWipsDef.java"


# static fields
.field protected static final blacklist ATTACK_TYPE:[Ljava/lang/String;

.field public static final blacklist A_DBG:Z = false

.field public static final blacklist BEACON_DRIVER:Z = true

.field public static final blacklist BUNDLE_PACKETS:Ljava/lang/String; = "bundle_packets"

.field public static final blacklist COMMAND:Ljava/lang/String; = "command"

.field public static final blacklist COMMAND_IP_FILTERING:I = 0x1

.field public static final blacklist COMMAND_MAC_FILTERING:I = 0x2

.field public static final blacklist COMMAND_PORT_FILTERING:I = 0x0

.field public static final blacklist COMMAND_TIMEOUT:I = 0x3

.field public static final blacklist DBG:Z = true

.field protected static final blacklist DETECION_TYPE:[Ljava/lang/String;

.field public static final blacklist DET_DETECTED:I = 0x2

.field public static final blacklist DET_DETECTING:I = 0x3

.field public static final blacklist DET_MAX:I = 0x6

.field public static final blacklist DET_NONE:I = 0x0

.field public static final blacklist DET_NOT_DETECTED:I = 0x1

.field public static final blacklist DET_SUSPECT:I = 0x4

.field public static final blacklist DET_UNKNOWN:I = 0x5

.field public static final blacklist ENABLE_CP_DUMP:Z = true

.field public static final blacklist ENABLE_DNS_DUMP:Z = true

.field public static final blacklist ENABLE_IE_DUMP:Z = false

.field public static final blacklist ENABLE_IE_DUMP_FORCE_SCAN:Z = false

.field public static final blacklist EVENT_ASSOCIATED:I = 0x8

.field public static final blacklist EVENT_BEACON_INTERVAL:I = 0x1e

.field public static final blacklist EVENT_CAPTIVE_PORTAL:I = 0xe

.field public static final blacklist EVENT_CONNECTED:I = 0x7

.field public static final blacklist EVENT_CONNECTION_COMPLETED:I = 0x11

.field public static final blacklist EVENT_DISABLE_EPHEMERAL_NETWORK:I = 0x37

.field public static final blacklist EVENT_DISCONNECTED:I = 0xa

.field public static final blacklist EVENT_DNS_QUERY_RESPONSES:I = 0x36

.field public static final blacklist EVENT_GET_SUPPORTED_CHARACTERSET:I = 0x29

.field public static final blacklist EVENT_HAS_METERED_HINT_IN_SCANRESULT:I = 0x2a

.field public static final blacklist EVENT_IS_ANDROID_HOTSPOT:I = 0x33

.field public static final blacklist EVENT_IS_ENTERPRISE_AP:I = 0x31

.field public static final blacklist EVENT_IS_SCANNING_ENTERED:I = 0x38

.field public static final blacklist EVENT_IS_WIFI_AP_ENABLED:I = 0x39

.field public static final blacklist EVENT_NETD_CONNECT:I = 0x26

.field public static final blacklist EVENT_NETD_DISABLED_CALLBACK:I = 0x30

.field public static final blacklist EVENT_NETD_DNS:I = 0x25

.field public static final blacklist EVENT_NETD_ENABLED_CALLBACK:I = 0x2f

.field public static final blacklist EVENT_NETD_PAUSE_CALLBACK:I = 0x2d

.field public static final blacklist EVENT_NETD_REGISTER_CALLBACK:I = 0x2b

.field public static final blacklist EVENT_NETD_RESUME_CALLBACK:I = 0x2e

.field public static final blacklist EVENT_NETD_STATUS:I = 0x27

.field public static final blacklist EVENT_NETD_UNREGISTER_CALLBACK:I = 0x2c

.field public static final blacklist EVENT_P2P_CONNECTED:I = 0x16

.field public static final blacklist EVENT_P2P_DISCONNECTED:I = 0x17

.field public static final blacklist EVENT_PARTIAL_SCAN_FAILURE:I = 0x23

.field public static final blacklist EVENT_PARTIAL_SCAN_RESULTS:I = 0x24

.field public static final blacklist EVENT_PROVISION_COMPLETED:I = 0x13

.field public static final blacklist EVENT_REQ_BEACON_START:I = 0x1a

.field public static final blacklist EVENT_REQ_BEACON_STOP:I = 0x1b

.field public static final blacklist EVENT_REQ_BSS_INFO:I = 0x20

.field public static final blacklist EVENT_REQ_WIFI_CHIP_INFO:I = 0x1f

.field public static final blacklist EVENT_ROAMING:I = 0x9

.field public static final blacklist EVENT_ROAMING_COMPLTED:I = 0x12

.field public static final blacklist EVENT_ROAMING_SAME_NETWORK:I = 0x14

.field public static final blacklist EVENT_ROAMING_STARTED:I = 0x18

.field public static final blacklist EVENT_SCAN_ENABLE:I = 0xb

.field public static final blacklist EVENT_SCAN_STARTED:I = 0xc

.field public static final blacklist EVENT_START_PARTIAL_SCAN:I = 0x22

.field public static final blacklist EVENT_TRACKER_PORT_SCANNED:I = 0x21

.field public static final blacklist EVENT_WIPS_DISABLE:I = 0x10

.field public static final blacklist EVENT_WIPS_DISABLED:I = 0x35

.field public static final blacklist EVENT_WIPS_ENABLE:I = 0xf

.field public static final blacklist EVENT_WIPS_ENABLED:I = 0x34

.field public static final blacklist ML_DBG:Z = false

.field public static final blacklist MOD_ARPSPOOFING:I = 0x0

.field public static final blacklist MOD_BIGDATA:I = 0x6

.field public static final blacklist MOD_DISABLED:I = 0x0

.field public static final blacklist MOD_DNSSPOOFING:I = 0x5

.field public static final blacklist MOD_ENABLED:I = 0x2

.field public static final blacklist MOD_ENABLED_ONLY_LOG:I = 0x1

.field public static final blacklist MOD_EVILCAPTIVEPORTAL:I = 0x8

.field public static final blacklist MOD_EVILTWIN:I = 0x4

.field public static final blacklist MOD_FAKEAP:I = 0x2

.field public static final blacklist MOD_KARMAAP:I = 0x1

.field public static final blacklist MOD_MAX:I = 0x9

.field public static final blacklist MOD_PORTSCAN:I = 0x7

.field public static final blacklist MOD_SOFTAP:I = 0x3

.field protected static final blacklist STR_MODULE:[Ljava/lang/String;

.field public static final blacklist STUS_ADVANCED_KARMAAP:I = 0x3

.field public static final blacklist STUS_ARPSPOOFING:I = 0x1

.field public static final blacklist STUS_DNSSPOOFING:I = 0x6

.field public static final blacklist STUS_EVILCAPTIVEPORTAL:I = 0x9

.field public static final blacklist STUS_EVILTWIN:I = 0x0

.field public static final blacklist STUS_EVILTWIN_BASE:I = 0x10

.field public static final blacklist STUS_EVILTWIN_IE:I = 0xb

.field public static final blacklist STUS_FAKEAP:I = 0xd

.field public static final blacklist STUS_FAKEAP_AIRCRACKNG:I = 0x5

.field public static final blacklist STUS_FAKEAP_BEACON_TIMING:I = 0x8

.field public static final blacklist STUS_FAKEAP_HOSTAP:I = 0xf

.field public static final blacklist STUS_FAKEAP_HOTSPOT_ANDROID:I = 0x11

.field public static final blacklist STUS_FAKEAP_HOTSPOT_IOS:I = 0x12

.field public static final blacklist STUS_FILTERING_KARMAAP:I = 0x4

.field public static final blacklist STUS_KARMAAP:I = 0x2

.field public static final blacklist STUS_MAX:I = 0x13

.field public static final blacklist STUS_NEED_ALERT_MAX:I = 0xc

.field public static final blacklist STUS_PORTSCAN:I = 0xa

.field public static final blacklist STUS_SOFTAP:I = 0xe

.field public static final blacklist STUS_SSLSTRIP:I = 0x7

.field public static final blacklist UR_CANCEL:I = 0x3

.field public static final blacklist UR_COLLECTTS:I = 0x5

.field public static final blacklist UR_DISCONNECT:I = 0x1

.field public static final blacklist UR_DISMISS:I = 0x2

.field public static final blacklist UR_EXCEPTION:I = 0x0

.field public static final blacklist UR_MAX:I = 0x8

.field public static final blacklist UR_NOALERT:I = 0x4

.field public static final blacklist UR_NOALERT_ENTERPRISEAP:I = 0x7

.field public static final blacklist UR_NOALERT_EXCEPTIONLIST:I = 0x6

.field protected static final blacklist USER_RESPONSE:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 21

    .line 139
    const-string v0, "arpspoofing"

    const-string v1, "karmaap"

    const-string v2, "fakeap"

    const-string/jumbo v3, "softap"

    const-string v4, "eviltwin"

    const-string v5, "dnsspoofing"

    const-string v6, "bigdata"

    const-string/jumbo v7, "portscan"

    const-string v8, "evilcaptiveportal"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsDef;->STR_MODULE:[Ljava/lang/String;

    .line 142
    const-string v1, "NONE"

    const-string v2, "NOT_DETECTED"

    const-string v3, "DETECTED"

    const-string v4, "DETECTING"

    const-string v5, "SUSPECT"

    const-string v6, "UNKNOWN"

    const-string v7, "N/A"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsDef;->DETECION_TYPE:[Ljava/lang/String;

    .line 146
    const-string v1, "eviltwin"

    const-string v2, "arpspoofing"

    const-string v3, "karma"

    const-string v4, "advkarma"

    const-string v5, "filterkarma"

    const-string v6, "aircrackng"

    const-string v7, "dnsspoofing"

    const-string/jumbo v8, "sslstrip"

    const-string v9, "beacontiming"

    const-string v10, "evilcaptiveportal"

    const-string/jumbo v11, "portscan"

    const-string v12, "eveiltwinie"

    const-string v13, "N/A"

    const-string v14, "fakeap"

    const-string/jumbo v15, "softap"

    const-string v16, "hostap"

    const-string v17, "eviltwinbase"

    const-string v18, "hotspotandroid"

    const-string v19, "hotspotios"

    const-string v20, "N/A"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsDef;->ATTACK_TYPE:[Ljava/lang/String;

    .line 152
    const-string v1, "Exception"

    const-string v2, "Disconnect"

    const-string v3, "Dismiss"

    const-string v4, "Cancel"

    const-string v5, "NoAlert"

    const-string v6, "collectTS"

    const-string v7, "NoAlert_Exception_list"

    const-string v8, "NoAlert_Enterpise_AP"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsDef;->USER_RESPONSE:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
