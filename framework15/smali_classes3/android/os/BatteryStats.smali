.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$BatteryStatsDumpHelper;,
        Landroid/os/BatteryStats$ProportionalAttributionCalculator;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$UidMobileRadioStats;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$RadioAccessTechnology;,
        Landroid/os/BatteryStats$ProcessStateChange;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$ModemActivityCounter;,
        Landroid/os/BatteryStats$ModemTxRxCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$StatName;
    }
.end annotation


# static fields
.field private static final greylist-max-o AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final greylist-max-o AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final greylist-max-o APK_DATA:Ljava/lang/String; = "apk"

.field private static final greylist-max-o AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final greylist-max-o AUDIO_TURNED_ON:I = 0xf

.field private static final greylist-max-o BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final greylist-max-o BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final blacklist BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field private static final blacklist BATTERY_HEALTH_UNDER_VOLTAGE:I = 0x9

.field private static final greylist-max-o BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final greylist-max-o BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final greylist-max-o BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field public static final blacklist BLUETOOTH_DUTY_SCAN_ON:I = 0x18

.field private static final greylist-max-o BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final greylist-max-o BLUETOOTH_SCAN_ON:I = 0x13

.field public static final greylist-max-o BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final greylist-max-o BYTES_PER_GB:J = 0x40000000L

.field private static final greylist-max-o BYTES_PER_KB:J = 0x400L

.field private static final greylist-max-o BYTES_PER_MB:J = 0x100000L

.field private static final greylist-max-o CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final greylist-max-o CAMERA_TURNED_ON:I = 0x11

.field private static final greylist-max-o CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final greylist-max-o CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final greylist-max-o CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field private static final blacklist CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

.field static final greylist-max-o CHECKIN_VERSION:I = 0x24

.field private static final greylist-max-o CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final greylist-max-o CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final greylist-max-o DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final blacklist DATA_CONNECTION_EMERGENCY_SERVICE:I

.field static final greylist-max-o DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o DATA_CONNECTION_OTHER:I

.field public static final blacklist DATA_CONNECTION_OUT_OF_SERVICE:I = 0x0

.field private static final greylist-max-o DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final greylist-max-o DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final greylist-max-o DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final greylist-max-o DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final greylist-max-o DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final greylist-max-o DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field private static final blacklist DISPLAY_TRANSPORT_PRIORITIES:[I

.field public static final greylist-max-o DUMP_CHARGED_ONLY:I = 0x2

.field public static final greylist-max-o DUMP_DAILY_ONLY:I = 0x4

.field public static final greylist-max-o DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final greylist-max-o DUMP_HISTORY_ONLY:I = 0x8

.field public static final greylist-max-o DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final greylist-max-o DUMP_VERBOSE:I = 0x20

.field public static final blacklist DURATION_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final greylist-max-o FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final greylist-max-o FOREGROUND_ACTIVITY:I = 0xa

.field private static final greylist-max-o FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final greylist-max-o FOREGROUND_SERVICE:I = 0x16

.field private static final greylist-max-o FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final greylist-max-o FULL_WIFI_LOCK:I = 0x5

.field private static final greylist-max-o GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final greylist-max-o GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final greylist-max-o GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final greylist-max-o GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final greylist-max-o GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final greylist-max-o GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final greylist-max-o HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final greylist-max-o HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final greylist-max-o HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final greylist-max-o HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final greylist-max-o HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final greylist-max-o JOB:I = 0xe

.field private static final greylist-max-o JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final greylist-max-o JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final greylist-max-o JOB_DATA:Ljava/lang/String; = "jb"

.field public static final greylist-max-o JOB_FRESHNESS_BUCKETS:[J

.field private static final greylist-max-o KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field public static final greylist-max-o MAX_TRACKED_SCREEN_STATE:I = 0x4

.field public static final blacklist MILLISECONDS_IN_HOUR:D = 3600000.0

.field private static final greylist-max-o MISC_DATA:Ljava/lang/String; = "m"

.field private static final greylist-max-o MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final blacklist MODEM_TX_POWER_LEVELS:I = 0x5

.field public static final greylist-max-o NETWORK_BT_RX_DATA:I = 0x4

.field public static final greylist-max-o NETWORK_BT_TX_DATA:I = 0x5

.field private static final greylist-max-o NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final greylist-max-o NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final greylist-max-o NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final greylist-max-o NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final greylist-max-o NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final greylist-max-o NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final greylist-max-o NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final greylist-max-o NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final greylist-max-o NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final blacklist NUM_ALL_NETWORK_TYPES:I

.field public static final greylist NUM_DATA_CONNECTION_TYPES:I

.field public static final blacklist NUM_HIGH_REFRESH_RATE_BINS:I = 0x4

.field public static final greylist-max-o NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final blacklist NUM_PROTECT_BATTERY_MODE_TYPES:I

.field public static final greylist NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final greylist-max-o NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final blacklist POWER_DATA_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final greylist-max-o POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final greylist-max-o PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final greylist-max-o PROCESS_STATE:I = 0xc

.field private static final blacklist PROTECT_BATTERY_MODE_TYPES:[Ljava/lang/String;

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_COUNT:I = 0x3

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_LTE:I = 0x1

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NR:I = 0x2

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_OTHER:I = 0x0

.field private static final greylist-max-o RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final greylist-max-o RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final greylist-max-o SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final greylist-max-o SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final greylist-max-o SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final greylist-max-o SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final greylist-max-o SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final greylist-max-o SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final greylist-max-o SENSOR:I = 0x3

.field private static final greylist-max-o SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final greylist-max-o SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final greylist-max-o SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final greylist-max-o SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final greylist-max-o SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final greylist-max-o STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final greylist STATS_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STATS_SINCE_CHARGED:I = 0x0

.field public static final greylist-max-o STATS_SINCE_UNPLUGGED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STAT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final greylist-max-o STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final greylist-max-o STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final greylist-max-o STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final greylist-max-o STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final greylist-max-o STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final greylist-max-o STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final greylist-max-o STEP_LEVEL_MODE_VALUES:[I

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final greylist-max-o STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final greylist-max-o SYNC:I = 0xd

.field private static final greylist-max-o SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BatteryStats"

.field private static final greylist-max-o UID_DATA:Ljava/lang/String; = "uid"

.field public static final greylist-max-o UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"

.field private static final greylist-max-o USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final greylist-max-o VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final greylist-max-o VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final greylist-max-o VIBRATOR_ON:I = 0x9

.field private static final greylist-max-o VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final greylist-max-o VIDEO_TURNED_ON:I = 0x8

.field private static final greylist-max-o WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final greylist-max-o WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final greylist-max-o WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final greylist-max-o WAKE_TYPE_DRAW:I = 0x12

.field public static final greylist-max-o WAKE_TYPE_FULL:I = 0x1

.field public static final greylist-max-r WAKE_TYPE_PARTIAL:I = 0x0

.field public static final greylist-max-o WAKE_TYPE_WINDOW:I = 0x2

.field public static final greylist-max-o WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final greylist-max-o WIFI_BATCHED_SCAN:I = 0xb

.field private static final greylist-max-o WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final greylist-max-o WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final greylist-max-o WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final greylist-max-o WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final greylist-max-o WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final greylist-max-o WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final greylist-max-o WIFI_RUNNING:I = 0x4

.field public static final greylist-max-o WIFI_SCAN:I = 0x6

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final greylist-max-o WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final greylist-max-o WIFI_STATE_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field private static final greylist-max-o WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field static final greylist-max-o WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field static final greylist-max-o WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field private static final greylist-max-o sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final greylist-max-o sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field private final greylist-max-o mFormatter:Ljava/util/Formatter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPROTECT_BATTERY_MODE_TYPES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/BatteryStats;->PROTECT_BATTERY_MODE_TYPES:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUidToString()Landroid/os/BatteryStats$IntToString;
    .locals 1

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 54

    const-string v0, "c"

    const-string/jumbo v1, "u"

    const-string/jumbo v2, "l"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    const-string v1, "basic"

    const-string v2, "adaptive"

    const-string/jumbo v3, "off"

    const-string/jumbo v4, "max"

    const-string/jumbo v5, "longTerm"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->PROTECT_BATTERY_MODE_TYPES:[Ljava/lang/String;

    sget-object v1, Landroid/os/BatteryStats;->PROTECT_BATTERY_MODE_TYPES:[Ljava/lang/String;

    array-length v1, v1

    sput v1, Landroid/os/BatteryStats;->NUM_PROTECT_BATTERY_MODE_TYPES:I

    const-string/jumbo v1, "light"

    const-string v2, "bright"

    const-string v4, "dark"

    const-string v5, "dim"

    const-string/jumbo v6, "medium"

    filled-new-array {v4, v5, v6, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const-string v29, "emngcy"

    const-string/jumbo v30, "other"

    const-string/jumbo v8, "oos"

    const-string v9, "gprs"

    const-string v10, "edge"

    const-string/jumbo v11, "umts"

    const-string v12, "cdma"

    const-string v13, "evdo_0"

    const-string v14, "evdo_A"

    const-string v15, "1xrtt"

    const-string v16, "hsdpa"

    const-string v17, "hsupa"

    const-string v18, "hspa"

    const-string v19, "iden"

    const-string v20, "evdo_b"

    const-string/jumbo v21, "lte"

    const-string v22, "ehrpd"

    const-string v23, "hspap"

    const-string v24, "gsm"

    const-string/jumbo v25, "td_scdma"

    const-string/jumbo v26, "iwlan"

    const-string/jumbo v27, "lte_ca"

    const-string/jumbo v28, "nr"

    filled-new-array/range {v8 .. v30}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    invoke-static {}, Landroid/os/BatteryStats;->getAllNetworkTypesCount()I

    move-result v7

    sput v7, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    sget v7, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    sput v7, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    sget v7, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v9, 0x2

    add-int/2addr v7, v9

    sput v7, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    sget v7, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v10, 0x3

    add-int/2addr v7, v10

    sput v7, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const-string v7, "LTE"

    const-string v11, "NR"

    const-string v12, "Other"

    filled-new-array {v12, v7, v11}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    const-string v22, "dormant"

    const-string/jumbo v23, "uninit"

    const-string/jumbo v11, "invalid"

    const-string v12, "disconn"

    const-string v13, "disabled"

    const-string v14, "inactive"

    const-string/jumbo v15, "scanning"

    const-string v16, "authenticating"

    const-string v17, "associating"

    const-string v18, "associated"

    const-string v19, "4-way-handshake"

    const-string v20, "group-handshake"

    const-string v21, "completed"

    filled-new-array/range {v11 .. v23}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    const-string v22, "dorm"

    const-string/jumbo v23, "uninit"

    const-string/jumbo v11, "inv"

    const-string v12, "dsc"

    const-string v13, "dis"

    const-string v14, "inact"

    const-string/jumbo v15, "scan"

    const-string v16, "auth"

    const-string v17, "ascing"

    const-string v18, "asced"

    const-string v19, "4-way"

    const-string v20, "group"

    const-string v21, "compl"

    filled-new-array/range {v11 .. v23}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v7, 0x12

    new-array v7, v7, [Landroid/os/BatteryStats$BitDescription;

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "running"

    const-string/jumbo v13, "r"

    const/high16 v14, -0x80000000

    invoke-direct {v11, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v11, v7, v12

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "wake_lock"

    const-string/jumbo v14, "w"

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v11, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v11, v7, v8

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "sensor"

    const-string/jumbo v14, "s"

    const/high16 v15, 0x800000

    invoke-direct {v11, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v11, v7, v9

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string v13, "gps"

    const-string v14, "g"

    const/high16 v15, 0x20000000

    invoke-direct {v11, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v11, v7, v10

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "wifi_full_lock"

    const-string v14, "Wl"

    const/high16 v15, 0x10000000

    invoke-direct {v11, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x4

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "wifi_scan"

    const-string v15, "Ws"

    const/high16 v13, 0x8000000

    invoke-direct {v11, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v11, v7, v0

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "wifi_multicast"

    const-string v14, "Wm"

    const/high16 v15, 0x10000

    invoke-direct {v11, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x6

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "wifi_radio"

    const-string v15, "Wr"

    const/high16 v13, 0x4000000

    invoke-direct {v11, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x7

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "mobile_radio"

    const-string v15, "Pr"

    const/high16 v13, 0x2000000

    invoke-direct {v11, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x8

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "phone_scanning"

    const-string v15, "Psc"

    const/high16 v13, 0x200000

    invoke-direct {v11, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x9

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "audio"

    const-string v15, "a"

    const/high16 v13, 0x400000

    invoke-direct {v11, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xa

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "screen"

    const-string v15, "S"

    const/high16 v13, 0x100000

    invoke-direct {v11, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xb

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "plugged"

    const-string v15, "BP"

    const/high16 v13, 0x80000

    invoke-direct {v11, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xc

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "screen_doze"

    const-string v14, "Sd"

    const/high16 v15, 0x40000

    invoke-direct {v11, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xd

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    sget-object v28, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v29, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v24, 0x3e00

    const/16 v25, 0x9

    const-string v26, "data_conn"

    const-string v27, "Pcn"

    move-object/from16 v23, v11

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v11, v7, v14

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v15, "out"

    const-string v14, "emergency"

    const-string v13, "in"

    filled-new-array {v13, v15, v14, v3}, [Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v13, "out"

    const-string v14, "em"

    const-string v15, "in"

    filled-new-array {v15, v13, v14, v3}, [Ljava/lang/String;

    move-result-object v29

    const/16 v24, 0x1c0

    const/16 v25, 0x6

    const-string/jumbo v26, "phone_state"

    const-string v27, "Pst"

    move-object/from16 v23, v11

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v13, 0xf

    aput-object v11, v7, v13

    new-instance v11, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "good"

    const-string v15, "great"

    const-string/jumbo v13, "none"

    const-string/jumbo v0, "poor"

    const-string/jumbo v10, "moderate"

    filled-new-array {v13, v0, v10, v14, v15}, [Ljava/lang/String;

    move-result-object v28

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v29

    const/16 v24, 0x38

    const/16 v25, 0x3

    const-string/jumbo v26, "phone_signal_strength"

    const-string v27, "Pss"

    move-object/from16 v23, v11

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v0, 0x10

    aput-object v11, v7, v0

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    sget-object v28, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v29, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/16 v24, 0x7

    const/16 v25, 0x0

    const-string v26, "brightness"

    const-string v27, "Sb"

    move-object/from16 v23, v10

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v11, 0x11

    aput-object v10, v7, v11

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const/16 v7, 0x11

    new-array v7, v7, [Landroid/os/BatteryStats$BitDescription;

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "power_save"

    const-string/jumbo v13, "ps"

    const/high16 v14, -0x80000000

    invoke-direct {v10, v14, v11, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v7, v12

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "video"

    const-string/jumbo v13, "v"

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v10, v14, v11, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v7, v8

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi_running"

    const-string v13, "Ww"

    const/high16 v14, 0x20000000

    invoke-direct {v10, v14, v11, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v7, v9

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi"

    const-string v13, "W"

    const/high16 v14, 0x10000000

    invoke-direct {v10, v14, v11, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x3

    aput-object v10, v7, v11

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "flashlight"

    const-string v13, "fl"

    const/high16 v14, 0x8000000

    invoke-direct {v10, v14, v11, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x4

    aput-object v10, v7, v11

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "full"

    const-string v13, "???"

    const-string/jumbo v14, "light"

    filled-new-array {v3, v14, v11, v13}, [Ljava/lang/String;

    move-result-object v28

    const-string v11, "full"

    const-string v13, "???"

    const-string/jumbo v14, "light"

    filled-new-array {v3, v14, v11, v13}, [Ljava/lang/String;

    move-result-object v29

    const/high16 v24, 0x6000000

    const/16 v25, 0x19

    const-string v26, "device_idle"

    const-string v27, "di"

    move-object/from16 v23, v10

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v10, v7, v3

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "charging"

    const-string v11, "ch"

    const/high16 v13, 0x1000000

    invoke-direct {v3, v13, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x6

    aput-object v3, v7, v10

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "usb_data"

    const-string v11, "Ud"

    const/high16 v13, 0x40000

    invoke-direct {v3, v13, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x7

    aput-object v3, v7, v10

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "phone_in_call"

    const-string v11, "Pcl"

    const/high16 v13, 0x800000

    invoke-direct {v3, v13, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x8

    aput-object v3, v7, v10

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "bluetooth"

    const-string v11, "b"

    const/high16 v13, 0x400000

    invoke-direct {v3, v13, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x9

    aput-object v3, v7, v10

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v28

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v29

    const/16 v24, 0x70

    const/16 v25, 0x4

    const-string/jumbo v26, "wifi_signal_strength"

    const-string v27, "Wss"

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v6, 0xa

    aput-object v3, v7, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    sget-object v28, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v29, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v24, 0xf

    const/16 v25, 0x0

    const-string/jumbo v26, "wifi_suppl"

    const-string v27, "Wsp"

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v6, 0xb

    aput-object v3, v7, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v6, "camera"

    const-string v10, "ca"

    const/high16 v11, 0x200000

    invoke-direct {v3, v11, v6, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xc

    aput-object v3, v7, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v6, "ble_scan"

    const-string v10, "bles"

    const/high16 v11, 0x100000

    invoke-direct {v3, v11, v6, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xd

    aput-object v3, v7, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v6, "cellular_high_tx_power"

    const-string v10, "Chtp"

    const/high16 v11, 0x80000

    invoke-direct {v3, v11, v6, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xe

    aput-object v3, v7, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v6, "good"

    const-string/jumbo v10, "none"

    const-string/jumbo v11, "poor"

    filled-new-array {v11, v6, v10}, [Ljava/lang/String;

    move-result-object v28

    const-string v6, "good"

    const-string/jumbo v10, "none"

    const-string/jumbo v11, "poor"

    filled-new-array {v11, v6, v10}, [Ljava/lang/String;

    move-result-object v29

    const/16 v24, 0x180

    const/16 v25, 0x7

    const-string v26, "gps_signal_quality"

    const-string v27, "Gss"

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v6, 0xf

    aput-object v3, v7, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v6, "not_restricted"

    const-string v10, "connected"

    const-string/jumbo v11, "none"

    const-string/jumbo v13, "restricted"

    filled-new-array {v11, v13, v6, v10}, [Ljava/lang/String;

    move-result-object v28

    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v29

    const/16 v24, 0x600

    const/16 v25, 0x9

    const-string/jumbo v26, "nr_state"

    const-string/jumbo v27, "nrs"

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v7, v0

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const-string v52, "est_capacity"

    const-string/jumbo v53, "state"

    const-string/jumbo v31, "null"

    const-string/jumbo v32, "proc"

    const-string v33, "fg"

    const-string/jumbo v34, "top"

    const-string/jumbo v35, "sync"

    const-string/jumbo v36, "wake_lock_in"

    const-string/jumbo v37, "job"

    const-string/jumbo v38, "user"

    const-string/jumbo v39, "userfg"

    const-string v40, "conn"

    const-string v41, "active"

    const-string/jumbo v42, "pkginst"

    const-string/jumbo v43, "pkgunin"

    const-string v44, "alarm"

    const-string/jumbo v45, "stats"

    const-string/jumbo v46, "pkginactive"

    const-string/jumbo v47, "pkgactive"

    const-string/jumbo v48, "tmpwhitelist"

    const-string/jumbo v49, "screenwake"

    const-string/jumbo v50, "wakeupap"

    const-string/jumbo v51, "longwake"

    filled-new-array/range {v31 .. v53}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    const-string v52, "Eec"

    const-string v53, "Esc"

    const-string v31, "Enl"

    const-string v32, "Epr"

    const-string v33, "Efg"

    const-string v34, "Etp"

    const-string v35, "Esy"

    const-string v36, "Ewl"

    const-string v37, "Ejb"

    const-string v38, "Eur"

    const-string v39, "Euf"

    const-string v40, "Ecn"

    const-string v41, "Eac"

    const-string v42, "Epi"

    const-string v43, "Epu"

    const-string v44, "Eal"

    const-string v45, "Est"

    const-string v46, "Eai"

    const-string v47, "Eaa"

    const-string v48, "Etw"

    const-string v49, "Esw"

    const-string v50, "Ewa"

    const-string v51, "Elw"

    filled-new-array/range {v31 .. v53}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v1, 0x17

    new-array v1, v1, [Landroid/os/BatteryStats$IntToString;

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v12

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v8

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v9

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/16 v2, 0xc

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v0

    const/16 v2, 0x11

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    const-string/jumbo v37, "sta_p2p"

    const-string/jumbo v38, "soft_ap"

    const-string/jumbo v31, "off"

    const-string/jumbo v32, "scanning"

    const-string/jumbo v33, "no_net"

    const-string v34, "disconn"

    const-string/jumbo v35, "sta"

    const-string/jumbo v36, "p2p"

    filled-new-array/range {v31 .. v38}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    const-string/jumbo v39, "screen doze-suspend power save"

    const-string/jumbo v40, "screen doze-suspend device idle"

    const-string/jumbo v31, "screen off"

    const-string/jumbo v32, "screen off power save"

    const-string/jumbo v33, "screen off device idle"

    const-string/jumbo v34, "screen on"

    const-string/jumbo v35, "screen on power save"

    const-string/jumbo v36, "screen doze"

    const-string/jumbo v37, "screen doze power save"

    const-string/jumbo v38, "screen doze-suspend"

    filled-new-array/range {v31 .. v40}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "scrn"

    aput-object v2, v1, v12

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "cpu"

    aput-object v2, v1, v8

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "blue"

    aput-object v2, v1, v9

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "camera"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "audio"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "video"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "flashlight"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "cell"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "sensors"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "gnss"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "wifi"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "memory"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "phone"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "ambi"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "idle"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    return-void

    :array_0
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_1
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
    .end array-data
.end method

.method public constructor greylist-max-p <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public static blacklist checkWifiOnly(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static greylist-max-o computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static greylist-max-o controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v5, v1

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_2

    return v2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method private blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "i"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v9, :cond_3

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-nez v6, :cond_0

    new-instance v10, Landroid/util/Pair;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/util/MutableBoolean;

    invoke-direct {v12, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v10

    iget v10, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-virtual {v3, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_3

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    if-eqz v12, :cond_2

    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/MutableBoolean;

    iget-boolean v13, v13, Landroid/util/MutableBoolean;->value:Z

    if-nez v13, :cond_2

    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/MutableBoolean;

    iput-boolean v2, v13, Landroid/util/MutableBoolean;->value:Z

    const/4 v13, 0x0

    :goto_2
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v1

    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v6, v2

    const-string/jumbo v14, "uid"

    move-object v15, v6

    check-cast v15, [Ljava/lang/Object;

    invoke-static {v8, v1, v0, v14, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_7

    const-string v3, "dsd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const-string v5, ""

    invoke-static {v8, v5, v3, v4, v2}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    new-array v10, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    mul-long/2addr v3, v11

    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v3

    const-wide/16 v13, 0x0

    cmp-long v6, v3, v13

    if-ltz v6, :cond_4

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v1

    const-string v6, "dtr"

    move-object v15, v10

    check-cast v15, [Ljava/lang/Object;

    invoke-static {v8, v1, v0, v6, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const-string v6, "csd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v15

    invoke-static {v8, v5, v6, v15, v2}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-long/2addr v5, v11

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v11

    cmp-long v3, v11, v13

    if-ltz v3, :cond_5

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v1

    const-string v3, "ctr"

    move-object v4, v10

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v8, v1, v0, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    and-int/lit8 v0, p4, 0x40

    if-eqz v0, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    :cond_7
    return-void
.end method

.method private static final greylist-max-o dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 7

    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static greylist-max-o dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 11

    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    nop

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    const-wide v4, 0x10300000001L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v6

    const-wide v8, 0x10300000003L

    invoke-virtual {p0, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    nop

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    const-wide v6, 0x10100000005L

    invoke-virtual {p0, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_1

    aget-object v6, v2, v3

    const-wide v7, 0x20b00000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10500000001L

    invoke-virtual {p0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {p0, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private greylist-max-o dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    const-string v13, " steps)"

    const-string v14, " (from "

    const/4 v15, 0x0

    if-ltz v3, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v15

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    move v8, v3

    :goto_0
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v3, v3

    if-ge v8, v3, :cond_3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v3, v3, v8

    int-to-long v4, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v8

    int-to-long v6, v3

    move-object/from16 v3, p4

    move/from16 v16, v8

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-lez v5, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v5, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, v16

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " time: "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v5, p6, v15

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v8, v16, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private greylist-max-o dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package changes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static greylist-max-o dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10300000001L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000002L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x0

    const-wide/16 v11, 0x3

    and-long v13, v8, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x1

    if-nez v13, :cond_1

    and-long/2addr v11, v6

    long-to-int v11, v11

    add-int/2addr v11, v14

    packed-switch v11, :pswitch_data_0

    const/4 v10, 0x5

    goto :goto_1

    :pswitch_0
    const/4 v10, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v10, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v10, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v10, 0x2

    nop

    :cond_1
    :goto_1
    const-wide v11, 0x10e00000003L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v11, 0x0

    const-wide/16 v12, 0x4

    and-long v17, v8, v12

    cmp-long v17, v17, v15

    const/16 v18, 0x2

    if-nez v17, :cond_3

    and-long/2addr v12, v6

    cmp-long v12, v12, v15

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v14, v18

    :goto_2
    move v11, v14

    :cond_3
    const-wide v12, 0x10e00000004L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v12, 0x0

    const-wide/16 v13, 0x8

    and-long v19, v8, v13

    cmp-long v17, v19, v15

    if-nez v17, :cond_5

    and-long/2addr v13, v6

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    const/16 v18, 0x3

    :goto_3
    move/from16 v12, v18

    :cond_5
    const-wide v13, 0x10e00000005L

    invoke-virtual {v0, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v4, :cond_1

    return v3

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_11

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x3

    const-wide/16 v21, 0x0

    if-eqz p4, :cond_8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v7

    and-long v23, v13, v19

    cmp-long v23, v23, v21

    const-string v24, ""

    const/16 v25, 0x2

    if-nez v23, :cond_3

    move/from16 v26, v4

    and-long v3, v11, v19

    long-to-int v3, v3

    add-int/2addr v3, v7

    packed-switch v3, :pswitch_data_0

    const-string v3, "?"

    aput-object v3, v5, v25

    goto :goto_1

    :pswitch_0
    const-string/jumbo v3, "sds"

    aput-object v3, v5, v25

    goto :goto_1

    :pswitch_1
    const-string/jumbo v3, "sd"

    aput-object v3, v5, v25

    goto :goto_1

    :pswitch_2
    const-string/jumbo v3, "s+"

    aput-object v3, v5, v25

    goto :goto_1

    :pswitch_3
    const-string/jumbo v3, "s-"

    aput-object v3, v5, v25

    goto :goto_1

    :cond_3
    move/from16 v26, v4

    aput-object v24, v5, v25

    :goto_1
    and-long v3, v13, v17

    cmp-long v3, v3, v21

    const/4 v4, 0x3

    if-nez v3, :cond_5

    and-long v17, v11, v17

    cmp-long v3, v17, v21

    if-eqz v3, :cond_4

    const-string/jumbo v3, "p+"

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "p-"

    :goto_2
    aput-object v3, v5, v4

    goto :goto_3

    :cond_5
    aput-object v24, v5, v4

    :goto_3
    and-long v3, v13, v15

    cmp-long v3, v3, v21

    const/4 v4, 0x4

    if-nez v3, :cond_7

    and-long/2addr v15, v11

    cmp-long v3, v15, v21

    if-eqz v3, :cond_6

    const-string v3, "i+"

    goto :goto_4

    :cond_6
    const-string v3, "i-"

    :goto_4
    aput-object v3, v5, v4

    goto :goto_5

    :cond_7
    aput-object v24, v5, v4

    :goto_5
    const-string v3, "i"

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v7, v3, v1, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_8
    move/from16 v26, v4

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const/4 v4, 0x0

    and-long v23, v13, v19

    cmp-long v23, v23, v21

    const-string v3, " ("

    if-nez v23, :cond_9

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v1, v11, v19

    long-to-int v1, v1

    add-int/2addr v1, v7

    packed-switch v1, :pswitch_data_1

    const-string/jumbo v1, "screen-?"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_4
    const-string/jumbo v1, "screen-doze-suspend"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_5
    const-string/jumbo v1, "screen-doze"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_6
    const-string/jumbo v1, "screen-on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_7
    const-string/jumbo v1, "screen-off"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    const/4 v4, 0x1

    :cond_9
    and-long v1, v13, v17

    cmp-long v1, v1, v21

    const-string v2, ", "

    if-nez v1, :cond_c

    if-eqz v4, :cond_a

    move-object v1, v2

    goto :goto_7

    :cond_a
    move-object v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v17, v11, v17

    cmp-long v1, v17, v21

    if-eqz v1, :cond_b

    const-string/jumbo v1, "power-save-on"

    goto :goto_8

    :cond_b
    const-string/jumbo v1, "power-save-off"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_c
    and-long v17, v13, v15

    cmp-long v1, v17, v21

    if-nez v1, :cond_f

    if-eqz v4, :cond_d

    move-object v3, v2

    :cond_d
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v1, v11, v15

    cmp-long v1, v1, v21

    if-eqz v1, :cond_e

    const-string v1, "device-idle-on"

    goto :goto_9

    :cond_e
    const-string v1, "device-idle-off"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_f
    if-eqz v4, :cond_10

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v4, v26

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist dumpHistory(Ljava/io/PrintWriter;IJZ)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p5

    monitor-enter p0

    :try_start_0
    invoke-direct {v1, v10, v11}, Landroid/os/BatteryStats;->dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    nop

    const-wide/16 v12, 0x0

    const-wide/16 v8, -0x1

    invoke-virtual {v1, v12, v13, v8, v9}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v14

    move-object v15, v7

    move-wide v6, v5

    move-wide v4, v3

    move v3, v0

    :goto_0
    :try_start_1
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v9, v0

    if-eqz v0, :cond_11

    :try_start_2
    iget-wide v12, v9, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    move-wide v4, v12

    move-wide/from16 v18, v4

    goto :goto_1

    :cond_0
    move-wide/from16 v18, v6

    :goto_1
    :try_start_3
    iget-wide v4, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v0, v4, p3

    if-ltz v0, :cond_10

    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    const/16 v20, 0x1

    const/4 v8, 0x0

    if-ltz v0, :cond_d

    if-nez v3, :cond_d

    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    :try_start_4
    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v0, v5, :cond_4

    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    move-wide/from16 v23, v12

    move v12, v8

    goto/16 :goto_3

    :cond_1
    iget-wide v5, v9, Landroid/os/BatteryStats$HistoryItem;->currentTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-wide/16 v16, 0x0

    cmp-long v0, v5, v16

    if-eqz v0, :cond_3

    const/16 v21, 0x1

    :try_start_5
    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v4, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_2

    move/from16 v22, v20

    goto :goto_2

    :cond_2
    move/from16 v22, v8

    :goto_2
    move-object/from16 v3, p1

    move-object v4, v9

    move-wide/from16 v5, v18

    move/from16 v7, p5

    move-wide/from16 v23, v12

    move v12, v8

    move/from16 v8, v22

    :try_start_6
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v13, v9

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v13, v9

    move-wide/from16 v6, v18

    move/from16 v3, v21

    move-wide/from16 v4, v23

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-wide/from16 v23, v12

    move-object v13, v9

    move-wide/from16 v6, v18

    move/from16 v3, v21

    move-wide/from16 v4, v23

    goto/16 :goto_f

    :cond_3
    move-wide/from16 v23, v12

    move v12, v8

    move/from16 v21, v3

    move-object v13, v9

    goto :goto_5

    :catchall_2
    move-exception v0

    move-wide/from16 v23, v12

    move-object v13, v9

    move-wide/from16 v6, v18

    move-wide/from16 v4, v23

    goto/16 :goto_f

    :cond_4
    move-wide/from16 v23, v12

    move v12, v8

    :goto_3
    const/4 v13, 0x1

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_5

    move/from16 v0, v20

    goto :goto_4

    :cond_5
    move v0, v12

    :goto_4
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v9

    move-wide/from16 v6, v18

    move/from16 v8, p5

    move/from16 v21, v13

    move-object v13, v9

    move v9, v0

    :try_start_7
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v12, v13, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_5
    if-eqz v15, :cond_e

    iget-byte v0, v13, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v0, :cond_7

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_6

    move/from16 v9, v20

    goto :goto_6

    :cond_6
    move v9, v12

    :goto_6
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v13

    move-wide/from16 v6, v18

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v12, v13, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_7
    iget v0, v13, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v3, v13, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v9, v3

    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v13, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v3, 0x0

    move v8, v3

    :goto_7
    const/16 v3, 0x16

    if-ge v8, v3, :cond_c

    nop

    invoke-virtual {v15, v8}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v22, v3

    if-nez v22, :cond_8

    move/from16 v30, v8

    move-object v12, v9

    goto/16 :goto_b

    :cond_8
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object/from16 v26, v3

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    move-object v6, v3

    const/4 v3, 0x0

    move v7, v3

    :goto_9
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v7, v3, :cond_a

    iput v8, v13, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v3, v13, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v3, v13, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v3, v13, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_9

    move/from16 v27, v20

    goto :goto_a

    :cond_9
    move/from16 v27, v12

    :goto_a
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v13

    move-object/from16 v28, v6

    move/from16 v29, v7

    move-wide/from16 v6, v18

    move/from16 v30, v8

    move/from16 v8, p5

    move-object v12, v9

    move/from16 v9, v27

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v3, 0x0

    iput-object v3, v13, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v13, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v7, v29, 0x1

    move-object v9, v12

    move-object/from16 v6, v28

    move/from16 v8, v30

    const/4 v12, 0x0

    goto :goto_9

    :cond_a
    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    move-object v12, v9

    const/4 v12, 0x0

    goto :goto_8

    :cond_b
    move/from16 v30, v8

    move-object v12, v9

    :goto_b
    add-int/lit8 v8, v30, 0x1

    move-object v9, v12

    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_c
    move/from16 v30, v8

    move-object v12, v9

    iput v0, v13, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v12, v13, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v15, 0x0

    goto :goto_c

    :cond_d
    move-wide/from16 v23, v12

    move-object v13, v9

    move/from16 v21, v3

    :cond_e
    :goto_c
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_f

    move/from16 v9, v20

    goto :goto_d

    :cond_f
    const/4 v9, 0x0

    :goto_d
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v13

    move-wide/from16 v6, v18

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v3, v21

    goto :goto_e

    :catchall_3
    move-exception v0

    move-wide/from16 v6, v18

    move/from16 v3, v21

    move-wide/from16 v4, v23

    goto :goto_f

    :cond_10
    move-wide/from16 v23, v12

    move-object v13, v9

    :goto_e
    move-wide/from16 v6, v18

    move-wide/from16 v4, v23

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-wide/from16 v23, v12

    move-object v13, v9

    move-wide/from16 v6, v18

    move-wide/from16 v4, v23

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v13, v9

    :goto_f
    :try_start_8
    invoke-virtual {v0, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v8, "BatteryStats"

    const-string v9, "Corrupted battery history"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_10

    :cond_11
    move-object v13, v9

    :goto_10
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    :cond_12
    const-wide/16 v8, 0x0

    cmp-long v0, p3, v8

    if-ltz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    if-eqz v11, :cond_13

    const-string v0, "NEXT: "

    goto :goto_11

    :cond_13
    const-string v0, "  NEXT: "

    :goto_11
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    invoke-virtual {v10, v8, v9}, Ljava/io/PrintWriter;->println(J)V

    :cond_14
    return-void

    :catchall_6
    move-exception v0

    move-object v8, v0

    if-eqz v14, :cond_15

    :try_start_9
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_12

    :catchall_7
    move-exception v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_12
    throw v8

    :catchall_8
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    throw v0
.end method

.method private blacklist dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V
    .locals 6

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v2, "hsp"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ",\""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    if-eqz v1, :cond_0

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "Battery History ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v4, 0x64

    mul-long/2addr v4, v2

    div-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, "% used, "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v4, " used of "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " strings using "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v4, "):"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static final varargs greylist dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static final greylist-max-o dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 22

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    if-nez p5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v2, :cond_0

    const-string v12, "Per-PID Stats:"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_0
    iget-wide v6, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v12, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v12, :cond_1

    move-object v12, v0

    move/from16 v16, v1

    iget-wide v0, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v0, v3, v0

    goto :goto_2

    :cond_1
    move-object v12, v0

    move/from16 v16, v1

    const-wide/16 v0, 0x0

    :goto_2
    add-long/2addr v6, v0

    const-string v0, "  PID "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " wake time: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6, v7, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    move-object v0, v12

    move/from16 v1, v16

    goto :goto_1

    :cond_2
    move-object v12, v0

    move/from16 v16, v1

    goto :goto_3

    :cond_3
    move-object v12, v0

    move/from16 v16, v1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object v0, v12

    move/from16 v1, v16

    goto :goto_0

    :cond_4
    move-object v12, v0

    move/from16 v16, v1

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_5
    const/4 v12, 0x0

    if-eqz p5, :cond_6

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_b

    :cond_6
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const-string v6, "  "

    const-string v1, "Discharge step durations:"

    invoke-static {v14, v6, v1, v0, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_9

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v7

    invoke-virtual {v13, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v9

    const-wide/16 v0, 0x0

    cmp-long v2, v9, v0

    if-ltz v2, :cond_7

    const-string v0, "  Estimated discharge time remaining: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long v0, v9, v7

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v11

    const/4 v0, 0x0

    move v4, v0

    :goto_4
    sget-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v0, v0

    if-ge v4, v0, :cond_8

    sget-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v2, v0, v4

    sget-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v0, v0, v4

    int-to-long v0, v0

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v4

    int-to-long v7, v3

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-wide/from16 v17, v0

    move-wide/from16 v19, v7

    invoke-virtual/range {v16 .. v21}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v7

    const-string v1, "  Estimated "

    const-string v3, " time: "

    move-object/from16 v0, p2

    move/from16 v16, v4

    move-wide v4, v7

    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v4, v16, 0x1

    const-wide/16 v7, 0x3e8

    goto :goto_4

    :cond_8
    move/from16 v16, v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_9
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const-string v1, "Charge step durations:"

    invoke-static {v14, v6, v1, v0, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {v13, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_a

    const-string v4, "  Estimated charge time remaining: "

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long v2, v0, v2

    invoke-static {v2, v3, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_b
    const/4 v15, 0x1

    if-eqz p5, :cond_d

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    move v0, v12

    goto/16 :goto_e

    :cond_d
    :goto_5
    const-string v0, "Daily stats:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Current start time: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v0

    const-string/jumbo v11, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v11, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Next min deadline: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Next max deadline: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v10, v15, [I

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v7

    iget v0, v9, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-string v6, "    "

    if-gtz v0, :cond_f

    iget v0, v8, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v0, :cond_f

    if-eqz v7, :cond_e

    goto :goto_6

    :cond_e
    move-object v15, v6

    move-object v2, v7

    move-object v3, v8

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v16, v11

    move v4, v12

    goto/16 :goto_8

    :cond_f
    :goto_6
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_11

    if-nez p5, :cond_10

    move-object v15, v6

    move-object v2, v7

    move-object v3, v8

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v16, v11

    move v4, v12

    goto :goto_7

    :cond_10
    const-string v0, "  Current daily steps:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    "

    const-string v3, "Discharge"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v9

    move-object v15, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v0, "    "

    const-string v1, "Charge"

    move-object/from16 v6, p0

    move-object v2, v7

    move-object/from16 v7, p2

    move-object v3, v8

    move-object v8, v0

    move-object v0, v9

    move-object v9, v1

    move-object v1, v10

    move-object v10, v3

    move-object v4, v11

    move-object v11, v5

    move-object/from16 v16, v4

    move v4, v12

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_8

    :cond_11
    move-object v15, v6

    move-object v2, v7

    move-object v3, v8

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v16, v11

    move v4, v12

    :goto_7
    const-string v6, "  Current daily discharge step durations:"

    invoke-static {v14, v15, v6, v0, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v8, "      "

    const-string v9, "Discharge"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object v10, v0

    move-object v11, v5

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_12
    const-string v6, "  Current daily charge step durations:"

    invoke-static {v14, v15, v6, v3, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v8, "      "

    const-string v9, "Charge"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object v10, v3

    move-object v11, v5

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_13
    invoke-direct {v13, v14, v15, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_8
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v7

    move-object v12, v7

    if-eqz v7, :cond_19

    add-int/lit8 v17, v6, 0x1

    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_14

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_14
    const-string v6, "  Daily from "

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v12, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    move-object/from16 v11, v16

    invoke-static {v11, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " to "

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v12, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v11, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_16

    if-nez p5, :cond_15

    move-object/from16 v16, v11

    move-object v4, v12

    goto :goto_a

    :cond_15
    const-string v9, "Discharge"

    iget-object v10, v12, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v8, "    "

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v16, v11

    move-object v11, v5

    move-object v4, v12

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v9, "Charge"

    iget-object v10, v4, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v8, "    "

    invoke-direct/range {v6 .. v12}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    move-object/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_d

    :cond_16
    move-object/from16 v16, v11

    move-object v4, v12

    :goto_a
    const-string v6, "    Discharge step durations:"

    iget-object v7, v4, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v12, "      "

    const/4 v8, 0x0

    invoke-static {v14, v12, v6, v7, v8}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v9, "Discharge"

    iget-object v10, v4, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v8, "        "

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object v11, v5

    move-object/from16 v19, v0

    move-object v0, v12

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_b

    :cond_17
    move-object/from16 v19, v0

    move-object v0, v12

    :goto_b
    const-string v6, "    Charge step durations:"

    iget-object v7, v4, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v12, 0x0

    invoke-static {v14, v0, v6, v7, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v9, "Charge"

    iget-object v10, v4, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v8, "        "

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object v11, v5

    move v0, v12

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_c

    :cond_18
    move v0, v12

    :goto_c
    iget-object v6, v4, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v13, v14, v15, v6}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_d
    move v4, v0

    move/from16 v6, v17

    move-object/from16 v0, v19

    goto/16 :goto_9

    :cond_19
    move-object/from16 v19, v0

    move v0, v4

    move-object v4, v12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_e
    if-eqz p5, :cond_1a

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1b

    :cond_1a
    const-string v1, "Feature status:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Can read \'charging remaining time\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->canReadTimeToFullNow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Can trust power_profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->canTrustSecPowerProfile()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1b
    if-eqz p5, :cond_1c

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1e

    :cond_1c
    const-string v1, "Statistics since last charge:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  System starts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currently on battery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0x40

    if-eqz v1, :cond_1d

    const/4 v6, 0x1

    goto :goto_f

    :cond_1d
    move v6, v0

    :goto_f
    const-string v3, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1e
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_1f

    invoke-virtual {v13, v14}, Landroid/os/BatteryStats;->printLatestBackupData(Ljava/io/PrintWriter;)V

    :cond_1f
    return-void
.end method

.method private blacklist dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V
    .locals 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Landroid/os/BatteryStats$ProportionalAttributionCalculator;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v11, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long v4, v13, v2

    move-object/from16 v15, p0

    invoke-virtual {v15, v11, v12}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    if-eqz v8, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    move-wide/from16 v16, v4

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v18

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    move/from16 v18, v4

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v4, v16

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v4

    goto :goto_1

    :cond_2
    move-wide/from16 v16, v4

    :goto_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v4, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Landroid/os/UidBatteryConsumer;

    move-object/from16 v18, v5

    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v5, v18

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v18, v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_2a

    move/from16 v21, v3

    move-object/from16 v20, v4

    const-wide v3, 0x20b00000005L

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v8, v22

    check-cast v8, Landroid/os/BatteryStats$Uid;

    move/from16 v22, v10

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move-wide/from16 v23, v11

    const-wide v11, 0x10500000001L

    invoke-virtual {v7, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    :cond_4
    nop

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v27

    const/16 v19, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v28, v0

    move/from16 v0, v27

    :goto_4
    move-object/from16 v27, v6

    if-ltz v0, :cond_8

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    nop

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual/range {v35 .. v35}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v35

    if-nez v35, :cond_5

    move-object/from16 v9, p1

    move-wide/from16 v41, v1

    move-wide/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v43, v8

    move/from16 v35, v10

    move-object v8, v11

    move-object/from16 v46, v12

    move-wide/from16 v39, v13

    goto/16 :goto_7

    :cond_5
    move-object/from16 v9, p1

    move-wide/from16 v37, v3

    move/from16 v35, v10

    move-object v10, v12

    move-wide/from16 v39, v13

    const-wide v3, 0x20b00000002L

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const-wide v3, 0x10900000001L

    invoke-virtual {v9, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_5
    if-ltz v3, :cond_7

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object/from16 v19, v7

    const/4 v7, 0x0

    invoke-virtual {v14, v1, v2, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v41

    move-object/from16 v36, v5

    invoke-static/range {v41 .. v42}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v4

    move-wide/from16 v41, v1

    invoke-virtual {v14, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v1

    invoke-virtual {v14, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v2

    const-wide/16 v29, 0x0

    cmp-long v43, v4, v29

    if-nez v43, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    move-object/from16 v43, v8

    move-object/from16 v46, v10

    move-object v8, v11

    goto :goto_6

    :cond_6
    move-object/from16 v43, v8

    move-object/from16 v45, v14

    const-wide v7, 0x20b00000002L

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v46, v10

    move-object v8, v11

    const-wide v10, 0x10900000001L

    invoke-virtual {v9, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v10, 0x10300000002L

    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10500000003L

    invoke-virtual {v9, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v10, 0x10500000004L

    invoke-virtual {v9, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v15, p0

    move-object v11, v8

    move-object/from16 v7, v19

    move-object/from16 v5, v36

    move-wide/from16 v1, v41

    move-object/from16 v8, v43

    move-object/from16 v10, v46

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    move-wide/from16 v41, v1

    move-object/from16 v36, v5

    move-object/from16 v19, v7

    move-object/from16 v43, v8

    move-object/from16 v46, v10

    move-object v8, v11

    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_7
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v15, p0

    move-object v11, v8

    move-object v7, v9

    move-object/from16 v6, v27

    move/from16 v10, v35

    move-object/from16 v5, v36

    move-wide/from16 v3, v37

    move-wide/from16 v13, v39

    move-wide/from16 v1, v41

    move-object/from16 v8, v43

    move-object/from16 v12, v46

    move-object/from16 v9, p4

    goto/16 :goto_4

    :cond_8
    move-object/from16 v9, p1

    move-wide/from16 v41, v1

    move-wide/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v43, v8

    move/from16 v35, v10

    move-object v8, v11

    move-object/from16 v46, v12

    move-wide/from16 v39, v13

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v6, 0x20b00000002L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v10, 0x10900000001L

    invoke-virtual {v9, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8

    :cond_9
    const-wide v6, 0x20b00000002L

    const-wide v10, 0x10900000001L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    const-wide v12, 0x10300000001L

    if-eqz v0, :cond_b

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    move-wide/from16 v14, v39

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    goto :goto_9

    :cond_a
    const-wide/16 v4, 0x0

    :goto_9
    const-wide v6, 0x10b00000018L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v9, v12, v13, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10300000002L

    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_a

    :cond_b
    move-wide/from16 v14, v39

    const-wide v10, 0x10300000002L

    :goto_a
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000008L

    move/from16 v7, v28

    move-object/from16 v0, p1

    move-wide/from16 v33, v41

    move/from16 v19, v21

    move-wide/from16 v4, v37

    const/4 v10, 0x1

    move-wide/from16 v47, v4

    move-wide/from16 v39, v16

    move-object/from16 v16, v18

    move-object/from16 v11, v20

    move-object/from16 v17, v36

    move-wide/from16 v4, v39

    move-object/from16 v18, v27

    const/4 v10, 0x0

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    const-wide v1, 0x10b00000003L

    invoke-static {v9, v1, v2, v0, v10}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v20

    const-wide v4, 0x10500000006L

    if-eqz v20, :cond_e

    const-wide v1, 0x10b00000006L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v31, 0x10b00000001L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v12, v1

    move-wide/from16 v1, v31

    move-object/from16 v3, v20

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000002L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000003L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_b

    :cond_c
    move v6, v10

    :goto_b
    const-wide v4, 0x10500000005L

    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_c

    :cond_d
    move v6, v10

    :goto_c
    const-wide v1, 0x10500000006L

    invoke-virtual {v9, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_d

    :cond_e
    move-wide v1, v4

    const-wide v4, 0x10500000005L

    :goto_d
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v12, 0x10b00000009L

    move-object/from16 v0, p1

    move-wide v1, v12

    move-wide v12, v4

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10b00000007L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-object/from16 v6, v43

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v21

    if-eqz v21, :cond_13

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v12

    if-eqz v12, :cond_12

    array-length v13, v12

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    if-ne v13, v0, :cond_11

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v0

    if-nez v0, :cond_f

    array-length v1, v12

    new-array v0, v1, [J

    :cond_f
    const/4 v1, 0x0

    :goto_e
    array-length v13, v12

    if-ge v1, v13, :cond_10

    move-object v13, v11

    const-wide v10, 0x20b00000003L

    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    add-int/lit8 v2, v1, 0x1

    move-wide/from16 v31, v14

    move-object v15, v13

    const-wide v13, 0x10500000001L

    invoke-virtual {v9, v13, v14, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v2, v12, v1

    const-wide v13, 0x10300000002L

    invoke-virtual {v9, v13, v14, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v2, v0, v1

    const-wide v13, 0x10300000003L

    invoke-virtual {v9, v13, v14, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    move-object v11, v15

    move-wide/from16 v14, v31

    const-wide v2, 0x10300000002L

    const/4 v10, 0x0

    goto :goto_e

    :cond_10
    move-wide/from16 v31, v14

    move-object v15, v11

    goto :goto_f

    :cond_11
    move-wide/from16 v31, v14

    move-object v15, v11

    goto :goto_f

    :cond_12
    move-wide/from16 v31, v14

    move-object v15, v11

    goto :goto_f

    :cond_13
    move-wide/from16 v31, v14

    move-object v15, v11

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v10

    new-array v11, v10, [J

    new-array v12, v10, [J

    const/4 v0, 0x0

    :goto_10
    const-wide v13, 0x10e00000001L

    const/4 v3, 0x7

    if-ge v0, v3, :cond_17

    invoke-virtual {v6, v11, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v6, v12, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v1

    if-nez v1, :cond_14

    const-wide/16 v1, 0x0

    invoke-static {v12, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_11

    :cond_14
    const-wide/16 v1, 0x0

    :goto_11
    const-wide v1, 0x20b00000004L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v9, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v3, 0x0

    :goto_12
    array-length v13, v11

    if-ge v3, v13, :cond_15

    move/from16 v38, v7

    move-object/from16 v37, v8

    const-wide v13, 0x20b00000002L

    invoke-virtual {v9, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    add-int/lit8 v13, v3, 0x1

    move-object/from16 v41, v15

    const-wide v14, 0x10500000001L

    invoke-virtual {v9, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v13, v11, v3

    move v15, v10

    move-object/from16 v42, v11

    const-wide v10, 0x10300000002L

    invoke-virtual {v9, v10, v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v13, v12, v3

    const-wide v10, 0x10300000003L

    invoke-virtual {v9, v10, v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    move v10, v15

    move-object/from16 v8, v37

    move/from16 v7, v38

    move-object/from16 v15, v41

    move-object/from16 v11, v42

    goto :goto_12

    :cond_15
    move/from16 v38, v7

    move-object/from16 v37, v8

    move-object/from16 v42, v11

    move-object/from16 v41, v15

    move v15, v10

    const-wide v10, 0x10300000003L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_13

    :cond_16
    move/from16 v38, v7

    move-object/from16 v37, v8

    move-object/from16 v42, v11

    move-object/from16 v41, v15

    move v15, v10

    const-wide v10, 0x10300000003L

    :goto_13
    add-int/lit8 v0, v0, 0x1

    move v10, v15

    move-object/from16 v8, v37

    move/from16 v7, v38

    move-object/from16 v15, v41

    move-object/from16 v11, v42

    goto/16 :goto_10

    :cond_17
    move/from16 v38, v7

    move-object/from16 v37, v8

    move-object/from16 v42, v11

    move-object/from16 v41, v15

    const-wide v7, 0x20b00000002L

    move v15, v10

    const-wide v10, 0x10300000003L

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    const/16 v28, 0x0

    const-wide v1, 0x10b0000000aL

    move-object/from16 v0, p1

    const-wide v10, 0x10300000002L

    const-wide/16 v29, 0x0

    move-object/from16 v3, v27

    move-wide/from16 v49, v4

    move-wide/from16 v4, v39

    move-object/from16 v27, v6

    move/from16 v6, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000000bL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000cL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v6

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-eqz v1, :cond_19

    const-wide v2, 0x20b00000010L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v10, v28

    check-cast v10, Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {v9, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v10

    array-length v11, v10

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v11, :cond_18

    aget v5, v10, v4

    move-object/from16 v28, v10

    move/from16 v45, v11

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    invoke-virtual {v9, v13, v14, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    const-wide v13, 0x10500000002L

    invoke-virtual {v9, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v28

    move/from16 v11, v45

    const-wide v7, 0x20b00000002L

    const-wide v13, 0x10e00000001L

    goto :goto_15

    :cond_18
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    const-wide v7, 0x20b00000002L

    const-wide v10, 0x10300000002L

    const-wide v13, 0x10e00000001L

    goto :goto_14

    :cond_1a
    const-wide v13, 0x10500000002L

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v8, v0

    :goto_16
    if-ltz v8, :cond_1b

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    const-wide v0, 0x20b0000000fL

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {v9, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v51, 0x10b00000002L

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v55, v1

    move-wide/from16 v1, v51

    move-object v3, v10

    move-wide v13, v4

    move-wide/from16 v4, v39

    move-object/from16 v45, v6

    move/from16 v6, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object v3, v11

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v9, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v6, v45

    const-wide v13, 0x10500000002L

    goto :goto_16

    :cond_1b
    move-object/from16 v45, v6

    nop

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    const-wide v1, 0x10b00000004L

    const/4 v3, 0x0

    invoke-static {v9, v1, v2, v0, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b00000011L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    nop

    move-object/from16 v8, v27

    invoke-virtual {v8, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000001L

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v0, 0x1

    invoke-virtual {v8, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x10300000002L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v13, 0x2

    invoke-virtual {v8, v13, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000003L

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v0, 0x3

    invoke-virtual {v8, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x10300000004L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x4

    invoke-virtual {v8, v1, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x10300000005L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x5

    invoke-virtual {v8, v1, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x10300000006L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v8, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v4, 0x10300000007L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x1

    invoke-virtual {v8, v1, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    const-wide v1, 0x10300000008L

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v8, v13, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v4, 0x10300000009L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v8, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    const-wide v4, 0x1030000000aL

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v8, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v4, 0x1030000000bL

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v8, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v0

    const-wide v1, 0x1050000000cL

    invoke-virtual {v9, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v8, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v0

    const-wide v4, 0x1050000000dL

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v8, v3}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v0

    const-wide v4, 0x1050000000eL

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v0, 0x6

    invoke-virtual {v8, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x1030000000fL

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v14, 0x7

    invoke-virtual {v8, v14, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x10300000010L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/16 v1, 0x8

    invoke-virtual {v8, v1, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    const-wide v1, 0x10300000011L

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/16 v1, 0x9

    invoke-virtual {v8, v1, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    move-object/from16 v51, v7

    const-wide v6, 0x10300000012L

    invoke-virtual {v9, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v8, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    const-wide v6, 0x10300000013L

    invoke-virtual {v9, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v8, v14, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    const-wide v6, 0x10300000014L

    invoke-virtual {v9, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/16 v0, 0x8

    invoke-virtual {v8, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    const-wide v6, 0x10300000015L

    invoke-virtual {v9, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v8, v1, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    const-wide v2, 0x10300000016L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move/from16 v6, v35

    move-object/from16 v7, v41

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/UidBatteryConsumer;

    if-eqz v4, :cond_1c

    const-wide v0, 0x10b00000012L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10100000001L

    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v13

    invoke-virtual {v9, v2, v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    nop

    move-object/from16 v13, p4

    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v2

    move v14, v6

    const-wide v5, 0x10800000002L

    invoke-virtual {v9, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    nop

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v5

    const-wide v2, 0x10100000003L

    invoke-virtual {v9, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    nop

    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v2

    const-wide v5, 0x10100000004L

    invoke-virtual {v9, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_17

    :cond_1c
    move-object/from16 v13, p4

    move v14, v6

    :goto_17
    nop

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_18
    if-ltz v0, :cond_1d

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Proc;

    const-wide v2, 0x20b00000013L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v52, v6

    move-object/from16 v41, v7

    const-wide v6, 0x10900000001L

    invoke-virtual {v9, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v6

    move-wide/from16 v55, v10

    const-wide v10, 0x10300000002L

    invoke-virtual {v9, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v6

    const-wide v10, 0x10300000003L

    invoke-virtual {v9, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v6

    const-wide v10, 0x10300000004L

    invoke-virtual {v9, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v6

    const-wide v10, 0x10500000005L

    invoke-virtual {v9, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v6

    const-wide v10, 0x10500000006L

    invoke-virtual {v9, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000007L

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v10

    invoke-virtual {v9, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v7, v41

    move-object/from16 v6, v52

    move-wide/from16 v10, v55

    goto :goto_18

    :cond_1d
    move-object/from16 v52, v6

    move-object/from16 v41, v7

    move-wide/from16 v55, v10

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    const/4 v0, 0x0

    move v10, v0

    :goto_19
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_1f

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    if-nez v27, :cond_1e

    move-object/from16 v25, v4

    move-object/from16 v54, v12

    move-object/from16 v26, v52

    const-wide v11, 0x10900000001L

    const-wide v43, 0x10500000001L

    goto :goto_1a

    :cond_1e
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v28

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    const-wide v0, 0x20b00000015L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide/from16 v43, v1

    const-wide v1, 0x10500000001L

    invoke-virtual {v9, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v25, 0x10b00000002L

    const/16 v53, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v58, v43

    move-wide/from16 v43, v1

    move-wide/from16 v1, v25

    move-object/from16 v3, v27

    move-object/from16 v25, v4

    move-wide/from16 v4, v39

    move-object/from16 v57, v11

    move-object/from16 v54, v12

    move-object/from16 v26, v52

    const-wide v11, 0x10900000001L

    move/from16 v52, v6

    move/from16 v6, v53

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v3, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v58

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v25

    move-object/from16 v52, v26

    move-object/from16 v12, v54

    goto :goto_19

    :cond_1f
    move-object/from16 v25, v4

    move-object/from16 v54, v12

    move-object/from16 v26, v52

    const-wide v11, 0x10900000001L

    const/4 v0, 0x0

    :goto_1b
    const/4 v1, 0x7

    if-ge v0, v1, :cond_21

    move-wide/from16 v4, v39

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v4, v5, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    cmp-long v6, v2, v29

    if-nez v6, :cond_20

    move-wide/from16 v39, v4

    goto :goto_1c

    :cond_20
    const-wide v11, 0x20b00000014L

    invoke-virtual {v9, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    move-wide/from16 v27, v2

    const-wide v1, 0x10e00000001L

    invoke-virtual {v9, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v39, v4

    move-wide/from16 v1, v27

    const-wide v3, 0x10300000002L

    invoke-virtual {v9, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    const-wide v11, 0x10900000001L

    goto :goto_1b

    :cond_21
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v11, v0

    :goto_1d
    if-ltz v11, :cond_22

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v12}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    const-wide v0, 0x20b00000016L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {v9, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v3, v12

    move-wide/from16 v60, v4

    move-wide/from16 v28, v39

    move-wide/from16 v4, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object/from16 v3, v27

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v60

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v11, v11, -0x1

    goto :goto_1d

    :cond_22
    move-wide/from16 v28, v39

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    :goto_1e
    sget v1, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v0, v1, :cond_24

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    if-eqz v2, :cond_23

    const-wide v3, 0x20b00000017L

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10e00000001L

    invoke-virtual {v9, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000002L

    invoke-virtual {v9, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1f

    :cond_23
    const-wide v5, 0x10e00000001L

    const-wide v11, 0x10500000002L

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_24
    const-wide v11, 0x10500000002L

    goto :goto_20

    :cond_25
    const-wide v11, 0x10500000002L

    :goto_20
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000000dL

    move-object/from16 v0, p1

    move-wide/from16 v4, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000eL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v0

    :goto_21
    if-ltz v4, :cond_27

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    const-wide v0, 0x20b00000019L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v11, 0x10900000001L

    invoke-virtual {v9, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v11, 0x0

    const-wide v39, 0x10b00000002L

    move-object/from16 v0, p1

    move-wide/from16 v62, v1

    move-wide/from16 v1, v39

    move v12, v4

    move-object/from16 v64, v5

    move-wide/from16 v4, v28

    move-object/from16 v27, v6

    move v6, v11

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-object/from16 v11, v64

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v30

    if-eqz v30, :cond_26

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, v30

    move-wide/from16 v4, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    :cond_26
    const/4 v6, 0x2

    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/16 v35, 0x0

    const-wide v1, 0x10b00000005L

    move-object/from16 v0, p1

    move-wide/from16 v4, v28

    move/from16 v39, v6

    move/from16 v6, v35

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v62

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v12, -0x1

    move-object/from16 v6, v27

    const-wide v11, 0x10500000002L

    goto/16 :goto_21

    :cond_27
    move v12, v4

    move-object/from16 v27, v6

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000001cL

    move-object/from16 v0, p1

    move-wide/from16 v4, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v46 .. v46}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    :goto_22
    if-ltz v0, :cond_29

    move-object/from16 v12, v46

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_23
    if-ltz v3, :cond_28

    const-wide v4, 0x20b0000001aL

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v46, v12

    const-wide v11, 0x10900000001L

    invoke-virtual {v9, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    nop

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    const-wide v11, 0x10500000002L

    invoke-virtual {v9, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v12, v46

    const/4 v11, 0x1

    goto :goto_23

    :cond_28
    move-object/from16 v46, v12

    const-wide v11, 0x10500000002L

    add-int/lit8 v0, v0, -0x1

    const/4 v11, 0x1

    goto :goto_22

    :cond_29
    nop

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    const-wide v1, 0x10b00000005L

    const/4 v3, 0x0

    invoke-static {v9, v1, v2, v0, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b0000001bL

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    nop

    move-wide/from16 v4, v28

    invoke-virtual {v8, v4, v5, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-wide/from16 v39, v4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    const/4 v0, 0x0

    invoke-virtual {v8, v4, v5, v0}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v9, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v0, v47

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v38, 0x1

    move-object/from16 v15, p0

    move-object/from16 v8, p3

    move-object v7, v9

    move-object v9, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v3, v19

    move/from16 v10, v22

    move-wide/from16 v11, v23

    move-wide/from16 v13, v31

    move-wide/from16 v1, v33

    move-object/from16 v4, v41

    move-object/from16 v18, v16

    move-wide/from16 v16, v28

    goto/16 :goto_3

    :cond_2a
    return-void
.end method

.method private greylist-max-o dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    const/16 v0, 0x24

    const-wide v2, 0x10500000001L

    invoke-virtual {v9, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000002L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v0

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-wide v4, 0x10900000003L

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-wide v6, 0x10900000004L

    invoke-virtual {v9, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    if-ge v0, v6, :cond_0

    const-wide v6, 0x20b00000005L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v9, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v8

    invoke-virtual {v9, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    nop

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v12

    move-object v13, v7

    move-wide v6, v5

    move-wide v4, v3

    move v3, v0

    :goto_1
    :try_start_0
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0

    move-object v14, v0

    if-eqz v0, :cond_12

    iget-wide v10, v14, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    move-wide v4, v10

    move-wide/from16 v17, v4

    goto :goto_2

    :cond_1
    move-wide/from16 v17, v6

    :goto_2
    :try_start_1
    iget-wide v4, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v0, v4, p3

    if-ltz v0, :cond_11

    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    const/4 v8, 0x0

    const/16 v19, 0x1

    if-ltz v0, :cond_e

    if-nez v3, :cond_e

    iget-byte v0, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-eq v0, v4, :cond_5

    iget-byte v0, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v0, v5, :cond_5

    iget-byte v0, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x4

    if-eq v0, v5, :cond_5

    iget-byte v0, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v5, 0x8

    if-ne v0, v5, :cond_2

    goto :goto_4

    :cond_2
    iget-wide v5, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v15, 0x0

    cmp-long v0, v5, v15

    if-eqz v0, :cond_4

    const/16 v20, 0x1

    :try_start_2
    iget-byte v0, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v4, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_3

    move/from16 v7, v19

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    move-object/from16 v3, p1

    move-object v4, v14

    move-wide/from16 v5, v17

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v0, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v15, v8

    goto :goto_6

    :cond_4
    move/from16 v20, v3

    move v15, v8

    goto :goto_6

    :cond_5
    :goto_4
    const/16 v20, 0x1

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_6

    move/from16 v0, v19

    goto :goto_5

    :cond_6
    move v0, v8

    :goto_5
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v14

    move-wide/from16 v6, v17

    move v15, v8

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v15, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_6
    if-eqz v13, :cond_f

    iget-byte v0, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v0, :cond_8

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_7

    move/from16 v8, v19

    goto :goto_7

    :cond_7
    move v8, v15

    :goto_7
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v14

    move-wide/from16 v6, v17

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v15, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_8
    iget v0, v14, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v3, v14, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v8, v3

    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v14, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v3, 0x0

    move v6, v3

    :goto_8
    const/16 v3, 0x16

    if-ge v6, v3, :cond_d

    nop

    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v16, v3

    if-nez v16, :cond_9

    move/from16 v25, v6

    move-object v15, v8

    goto/16 :goto_c

    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object/from16 v22, v3

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    move-object v7, v3

    const/4 v3, 0x0

    move v5, v3

    :goto_a
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_b

    iput v6, v14, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v3, v14, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v3, v14, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v3, v14, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_a

    move/from16 v23, v19

    goto :goto_b

    :cond_a
    move/from16 v23, v15

    :goto_b
    move-object v3, v2

    move-object/from16 v4, p1

    move/from16 v24, v5

    move-object v5, v14

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-wide/from16 v6, v17

    move-object v15, v8

    move/from16 v8, v23

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v3, 0x0

    iput-object v3, v14, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v14, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v5, v24, 0x1

    move-object v8, v15

    move/from16 v6, v25

    move-object/from16 v7, v26

    const/4 v15, 0x0

    goto :goto_a

    :cond_b
    move/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object v15, v8

    const/4 v15, 0x0

    goto :goto_9

    :cond_c
    move/from16 v25, v6

    move-object v15, v8

    :goto_c
    add-int/lit8 v6, v25, 0x1

    move-object v8, v15

    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_d
    move/from16 v25, v6

    move-object v15, v8

    iput v0, v14, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v15, v14, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v3, 0x0

    move-object v13, v3

    goto :goto_d

    :cond_e
    move/from16 v20, v3

    :cond_f
    :goto_d
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_10

    move/from16 v8, v19

    goto :goto_e

    :cond_10
    const/4 v8, 0x0

    :goto_e
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v14

    move-wide/from16 v6, v17

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v4, v10

    move-wide/from16 v6, v17

    move/from16 v3, v20

    const-wide/16 v10, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-wide v4, v10

    move-wide/from16 v6, v17

    move/from16 v3, v20

    goto :goto_f

    :cond_11
    move-wide v4, v10

    move-wide/from16 v6, v17

    const-wide/16 v10, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v0

    move-wide v4, v10

    move-wide/from16 v6, v17

    goto :goto_f

    :cond_12
    const-wide/16 v10, 0x0

    cmp-long v0, p3, v10

    if-ltz v0, :cond_13

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NEXT: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v10, 0x1

    add-long/2addr v10, v4

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v10, 0x20900000006L

    invoke-virtual {v9, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_13
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    :cond_14
    return-void

    :catchall_2
    move-exception v0

    move-object v8, v0

    :goto_f
    if-eqz v12, :cond_15

    :try_start_4
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v10, v0

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_10
    throw v8
.end method

.method private blacklist dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V
    .locals 78

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-wide v1, 0x10b00000006L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    mul-long v13, v1, v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    mul-long v5, v15, v11

    const/16 v17, 0x0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v11

    move-wide/from16 v20, v9

    const-wide v9, 0x10300000001L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v1

    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v22

    const-wide/16 v18, 0x3e8

    div-long v11, v22, v18

    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000004L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000005L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000006L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000007L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000008L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000009L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000bL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000cL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v11, 0x10b00000002L

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000001L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000002L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000003L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000004L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000005L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    move-wide/from16 v42, v2

    const-wide v1, 0x10300000006L

    invoke-virtual {v8, v1, v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000007L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000008L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000009L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x1030000000aL

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v9, v1, v3

    if-ltz v9, :cond_0

    const-wide/16 v9, 0x3e8

    div-long v3, v1, v9

    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide v9, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    const-wide/16 v3, 0x3e8

    div-long v9, v1, v3

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    :cond_1
    const-wide v3, 0x10300000004L

    const/4 v9, -0x1

    invoke-virtual {v8, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_0
    move-wide v9, v1

    :goto_1
    const-wide v1, 0x20b00000005L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    const/4 v1, 0x0

    move v4, v1

    :goto_2
    sget v1, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v4, v1, :cond_6

    if-nez v4, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    move v1, v4

    sget v2, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    if-eq v4, v2, :cond_4

    sget v2, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    if-ne v4, v2, :cond_3

    goto :goto_4

    :cond_3
    move v2, v1

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    move-wide/from16 v47, v5

    const-wide v5, 0x20b00000008L

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    if-eqz v7, :cond_5

    move-wide/from16 v49, v5

    const-wide v5, 0x10800000002L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_6

    :cond_5
    move-wide/from16 v49, v5

    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_6
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const/16 v45, 0x0

    const-wide v51, 0x10b00000003L

    move-object/from16 v1, p1

    move/from16 v46, v2

    move-wide/from16 v2, v51

    move/from16 v51, v4

    move-object v4, v5

    move-wide/from16 v52, v47

    move-wide/from16 v54, v49

    move-wide/from16 v5, v52

    move-wide/from16 v47, v9

    const/4 v9, 0x0

    move v10, v7

    move/from16 v7, v45

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v54

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v51, 0x1

    move v7, v9

    move-wide/from16 v9, v47

    goto :goto_2

    :cond_6
    move/from16 v51, v4

    move-wide/from16 v52, v5

    move-wide/from16 v47, v9

    const-wide v5, 0x10e00000001L

    const/4 v9, 0x0

    const-wide v1, 0x20b00000006L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v2, v1

    move v3, v9

    :goto_7
    if-ge v3, v2, :cond_8

    aget v4, v1, v3

    invoke-virtual {v10, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v5

    array-length v6, v5

    move v7, v9

    :goto_8
    if-ge v7, v6, :cond_7

    aget v9, v5, v7

    move-object/from16 v50, v1

    move/from16 v51, v2

    const-wide v1, 0x20300000007L

    invoke-virtual {v8, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v50

    move/from16 v2, v51

    const/4 v9, 0x0

    goto :goto_8

    :cond_7
    move-object/from16 v50, v1

    move/from16 v51, v2

    add-int/lit8 v3, v3, 0x1

    const-wide v5, 0x10e00000001L

    const/4 v9, 0x0

    goto :goto_7

    :cond_8
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    const-wide v2, 0x10b00000009L

    const/4 v4, 0x0

    invoke-static {v8, v2, v3, v1, v4}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    const-wide v2, 0x10b0000000aL

    invoke-static {v8, v2, v3, v1, v4}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    nop

    invoke-virtual {v0, v4, v4}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    move-wide/from16 v50, v5

    const-wide v4, 0x10300000001L

    invoke-virtual {v8, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    const-wide v4, 0x10300000005L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    const-wide v4, 0x10300000006L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v9, 0x2

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    const-wide v4, 0x10300000003L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const-wide v5, 0x10300000004L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v3

    const-wide v5, 0x10300000007L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    const-wide v4, 0x10300000008L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    const-wide v4, 0x10300000009L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    const-wide v5, 0x1030000000aL

    invoke-virtual {v8, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v5, v50

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const-wide v3, 0x10b0000000bL

    invoke-static {v8, v3, v4, v2, v1}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v2, 0x10b0000000dL

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    nop

    move-object/from16 v35, v10

    move-wide/from16 v9, v52

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v49

    move-wide/from16 v51, v2

    const-wide/16 v18, 0x3e8

    div-long v1, v49, v18

    const-wide v3, 0x10300000001L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    move-wide/from16 v53, v5

    const-wide v4, 0x10300000002L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v2, v51

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :goto_9
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v50, v1

    check-cast v50, Ljava/util/Map$Entry;

    const-wide v5, 0x20b0000000eL

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v55, v2

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v51, 0x0

    const-wide v2, 0x10b00000002L

    move-object/from16 v1, p1

    move-wide/from16 v45, v55

    move-wide/from16 v57, v5

    move-wide v5, v9

    move-wide/from16 v55, v11

    move v11, v7

    move/from16 v7, v51

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v57

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move v7, v11

    move-wide/from16 v2, v45

    move-wide/from16 v11, v55

    goto :goto_9

    :cond_9
    move-wide/from16 v45, v2

    move-wide/from16 v55, v11

    move v11, v7

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v12

    const/4 v5, 0x0

    move-wide/from16 v57, v1

    move-wide/from16 v59, v3

    :goto_a
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_d

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid;

    nop

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_b
    if-ltz v3, :cond_c

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v4, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_a

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v10, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v49

    add-long v57, v57, v49

    goto :goto_c

    :cond_a
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v11, v9, v10, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v61

    add-long v59, v59, v61

    :cond_b
    add-int/lit8 v3, v3, -0x1

    const/4 v11, 0x1

    goto :goto_b

    :cond_c
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    goto :goto_a

    :cond_d
    const-wide v1, 0x10b0000000fL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v2, v2, v18

    move-object/from16 v34, v12

    const-wide v11, 0x10300000001L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v1, v57, v18

    const-wide v3, 0x10300000003L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v1, v59, v18

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000005L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000006L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v2

    const-wide v3, 0x10500000007L

    invoke-virtual {v8, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v2

    const-wide/16 v11, 0x3e8

    div-long/2addr v2, v11

    const-wide v11, 0x10500000008L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v2

    const-wide/16 v11, 0x3e8

    div-long/2addr v2, v11

    const-wide v11, 0x10300000009L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v2

    const-wide/16 v11, 0x3e8

    div-long/2addr v2, v11

    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v2

    const-wide v3, 0x1050000000bL

    invoke-virtual {v8, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v9, v10, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    const-wide v11, 0x1030000000cL

    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    const-wide v11, 0x1050000000dL

    invoke-virtual {v8, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v0, v2, v9, v10, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    const-wide v11, 0x1030000000eL

    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    const-wide v11, 0x1050000000fL

    invoke-virtual {v8, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    const-wide v3, 0x10300000010L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v10, v2}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    const-wide v11, 0x10300000011L

    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    const-wide v11, 0x10500000012L

    invoke-virtual {v8, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v0, v1, v9, v10, v2}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    const-wide v11, 0x10300000013L

    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    const-wide v11, 0x10500000014L

    invoke-virtual {v8, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    const-wide v3, 0x10300000015L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v11

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v7

    const-wide v1, 0x10b00000017L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v24, v5

    const-wide/16 v18, 0x3e8

    div-long v4, v11, v18

    move-wide/from16 v18, v11

    const-wide v11, 0x10300000001L

    invoke-virtual {v8, v11, v12, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10500000002L

    invoke-virtual {v8, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v11, p2

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v12

    const/4 v1, 0x0

    :goto_d
    const/16 v4, 0x13

    if-ge v1, v4, :cond_e

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_e

    :pswitch_1
    const/4 v4, 0x1

    goto :goto_e

    :pswitch_2
    const/16 v4, 0xd

    goto :goto_e

    :pswitch_3
    const/4 v4, 0x3

    goto :goto_e

    :pswitch_4
    const/16 v4, 0xc

    goto :goto_e

    :pswitch_5
    const/4 v4, 0x4

    goto :goto_e

    :pswitch_6
    const/4 v4, 0x2

    goto :goto_e

    :pswitch_7
    const/4 v4, 0x6

    goto :goto_e

    :pswitch_8
    const/16 v4, 0xb

    goto :goto_e

    :pswitch_9
    const/4 v4, 0x5

    goto :goto_e

    :pswitch_a
    const/4 v4, 0x7

    nop

    :goto_e
    const-wide v5, 0x20b00000011L

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    move-wide/from16 v22, v2

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move/from16 v26, v4

    const/4 v2, 0x0

    const-wide v3, 0x10500000002L

    invoke-virtual {v8, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v12, v1}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    move-object/from16 v27, v12

    const-wide v11, 0x10100000003L

    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    nop

    invoke-direct {v0, v1}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v2

    const-wide v3, 0x10800000004L

    invoke-virtual {v8, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10100000005L

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10100000006L

    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, p2

    move-wide/from16 v2, v22

    move-object/from16 v12, v27

    goto :goto_d

    :cond_e
    move-wide/from16 v22, v2

    move-object/from16 v27, v12

    const-wide v1, 0x10b00000012L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v1

    const-wide v3, 0x10100000001L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000002L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x10100000003L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x10100000004L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_f
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Ljava/util/Map$Entry;

    const-wide v1, 0x20b00000013L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v30, v2

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    nop

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const-wide v32, 0x10b00000002L

    const/16 v36, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v63, v30

    move-wide/from16 v30, v2

    move-wide/from16 v2, v32

    move-object/from16 v65, v5

    move-wide v5, v9

    move/from16 v30, v7

    move/from16 v7, v36

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, v65

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const-wide v2, 0x10b00000003L

    const/16 v31, 0x0

    move-object/from16 v1, p1

    move-object/from16 v32, v7

    move/from16 v7, v31

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v63

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move/from16 v7, v30

    move-object/from16 v5, v32

    goto :goto_f

    :cond_f
    move-object/from16 v32, v5

    move/from16 v30, v7

    const/4 v1, 0x0

    move v7, v1

    :goto_10
    const/4 v5, 0x5

    if-ge v7, v5, :cond_10

    const-wide v1, 0x20b00000014L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v28, v2

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v31, 0x0

    const-wide v38, 0x10b00000002L

    move-object/from16 v1, p1

    move-wide/from16 v66, v28

    move-wide/from16 v2, v38

    move-wide v5, v9

    move/from16 v28, v7

    move/from16 v7, v31

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v66

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v28, 0x1

    goto :goto_10

    :cond_10
    move/from16 v28, v7

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000015L

    move-object/from16 v1, p1

    move-wide v5, v9

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v1, 0x0

    move v7, v1

    :goto_11
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v7, v1, :cond_11

    const-wide v1, 0x20b00000010L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v28, 0x0

    const-wide v38, 0x10b00000002L

    move-object/from16 v1, p1

    move-wide/from16 v2, v38

    move-wide/from16 v68, v5

    move-wide v5, v9

    move/from16 v29, v7

    move/from16 v7, v28

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v68

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v29, 0x1

    goto :goto_11

    :cond_11
    move/from16 v29, v7

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_12
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Ljava/util/Map$Entry;

    const-wide v1, 0x20b00000016L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    const-wide v38, 0x10b00000002L

    move-object/from16 v1, p1

    move-wide/from16 v40, v2

    move-wide/from16 v2, v38

    move-wide/from16 v70, v5

    move-wide v5, v9

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v70

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_12

    :cond_12
    const/4 v1, 0x0

    move v7, v1

    :goto_13
    const/4 v5, 0x5

    if-ge v7, v5, :cond_13

    const-wide v1, 0x20b00000018L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v38, v2

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v29, 0x0

    const-wide v40, 0x10b00000002L

    move-object/from16 v1, p1

    move-wide/from16 v72, v38

    move-wide/from16 v2, v40

    move/from16 v31, v5

    move-wide v5, v9

    move/from16 v33, v7

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v72

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v33, 0x1

    goto :goto_13

    :cond_13
    move/from16 v33, v7

    const/4 v1, 0x0

    move v7, v1

    :goto_14
    const/16 v1, 0x8

    if-ge v7, v1, :cond_14

    const-wide v1, 0x20b00000019L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v29, 0x0

    const-wide v38, 0x10b00000002L

    move-object/from16 v1, p1

    move-wide/from16 v2, v38

    move-wide/from16 v74, v5

    move-wide v5, v9

    move/from16 v31, v7

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v74

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v31, 0x1

    goto :goto_14

    :cond_14
    move/from16 v31, v7

    const/4 v1, 0x0

    move v7, v1

    :goto_15
    const/16 v1, 0xd

    if-ge v7, v1, :cond_15

    const-wide v1, 0x20b0000001aL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v29, 0x0

    const-wide v38, 0x10b00000002L

    move-object/from16 v1, p1

    move-wide/from16 v40, v2

    move-wide/from16 v2, v38

    move-wide/from16 v76, v5

    move-wide v5, v9

    move/from16 v31, v7

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v76

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v31, 0x1

    goto :goto_15

    :cond_15
    move-wide/from16 v1, v20

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x1

    return v1
.end method

.method private static greylist-max-o dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    move/from16 v4, p6

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    const-wide/16 v6, 0x3e8

    div-long v8, p4, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    div-long v10, p4, v6

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v10

    div-long v6, p4, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    const-wide/16 v13, -0x1

    if-nez v12, :cond_1

    if-nez v5, :cond_1

    cmp-long v12, v8, v13

    if-nez v12, :cond_1

    cmp-long v12, v10, v13

    if-nez v12, :cond_1

    cmp-long v12, v6, v13

    if-eqz v12, :cond_5

    :cond_1
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    move-wide/from16 v16, v13

    const-wide v12, 0x10300000001L

    invoke-virtual {v0, v12, v13, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v12, 0x10300000002L

    invoke-virtual {v0, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide/16 v12, -0x1

    cmp-long v14, v8, v12

    if-eqz v14, :cond_2

    const-wide v14, 0x10300000003L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_2
    cmp-long v14, v10, v12

    if-eqz v14, :cond_3

    const-wide v14, 0x10300000004L

    invoke-virtual {v0, v14, v15, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_3
    cmp-long v12, v6, v12

    if-eqz v12, :cond_4

    const-wide v12, 0x10300000005L

    invoke-virtual {v0, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_4
    move-wide/from16 v12, v16

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_5
    return-void
.end method

.method private static final greylist-max-o dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 5

    if-eqz p4, :cond_1

    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static blacklist formatCharge(D)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist-max-o formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final greylist-max-o formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final greylist-max-o formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13

    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v4, 0x3c

    mul-long v6, v0, v4

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    cmp-long v10, v8, v2

    if-nez v10, :cond_1

    cmp-long v10, v6, v2

    if-eqz v10, :cond_2

    :cond_1
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "h "

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-long v10, v8, v4

    mul-long/2addr v10, v4

    add-long/2addr v6, v10

    sub-long v10, p1, v6

    div-long/2addr v10, v4

    cmp-long v12, v10, v2

    if-nez v12, :cond_3

    cmp-long v12, v6, v2

    if-eqz v12, :cond_4

    :cond_3
    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "m "

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    mul-long/2addr v4, v10

    add-long/2addr v6, v4

    cmp-long v4, p1, v2

    if-nez v4, :cond_5

    cmp-long v2, v6, v2

    if-eqz v2, :cond_6

    :cond_5
    sub-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method private static blacklist formatValue(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.8f"

    goto :goto_0

    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.7f"

    goto :goto_0

    :cond_2
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.6f"

    goto :goto_0

    :cond_3
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.5f"

    goto :goto_0

    :cond_4
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.4f"

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.3f"

    goto :goto_0

    :cond_6
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    const-string v0, "%.2f"

    goto :goto_0

    :cond_7
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_8

    const-string v0, "%.1f"

    goto :goto_0

    :cond_8
    const-string v0, "%.0f"

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getAllNetworkTypesCount()I
    .locals 4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    array-length v0, v0

    sget-object v1, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v2, v0, 0x3

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_CONNECTION_NAMES length does not match network type count. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getAllNetworkTypesCount$ravenwood()I
    .locals 1

    sget-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount()I
    .locals 1

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount$ravenwood()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected static blacklist getDisplayTransport([I)I
    .locals 1

    invoke-static {p0}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    move-result v0

    return v0
.end method

.method protected static blacklist getDisplayTransport$ravenwood([I)I
    .locals 8

    sget-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    array-length v5, p0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, p0, v6

    if-ne v7, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget v0, p0, v2

    return v0
.end method

.method protected static blacklist getModemTxPowerLevelCount()I
    .locals 1

    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getModemTxPowerLevelCount$ravenwood()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private blacklist getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1, v5}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v1, v6

    aget-wide v8, p2, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v6

    array-length v6, v6

    add-int/2addr v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryStats$UidMobileRadioStats;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v21

    const/4 v10, 0x1

    invoke-virtual {v6, v10, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v23

    const-wide/16 v10, 0x0

    cmp-long v12, v21, v10

    if-nez v12, :cond_1

    cmp-long v10, v23, v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v9}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v13, v10, v12

    invoke-virtual {v6, v9}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v25

    long-to-double v9, v13

    add-long v11, v21, v23

    long-to-double v11, v11

    div-double v26, v9, v11

    cmpl-double v7, v26, v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Landroid/os/BatteryStats$UidMobileRadioStats;

    const/16 v20, 0x0

    move-object v9, v7

    move v10, v5

    move-wide/from16 v11, v21

    move-wide/from16 v28, v13

    move-wide/from16 v13, v23

    move-wide/from16 v15, v28

    move/from16 v17, v25

    move-wide/from16 v18, v26

    invoke-direct/range {v9 .. v20}, Landroid/os/BatteryStats$UidMobileRadioStats;-><init>(IJJJIDLandroid/os/BatteryStats$UidMobileRadioStats-IA;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v3, p1

    new-instance v2, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v1
.end method

.method protected static blacklist isKernelStatsAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected static blacklist isKernelStatsAvailable$ravenwood()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected static blacklist isLowRamDevice()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method protected static blacklist isLowRamDevice$ravenwood()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$getUidMobileRadioStats$0(Landroid/os/BatteryStats$UidMobileRadioStats;Landroid/os/BatteryStats$UidMobileRadioStats;)I
    .locals 4

    iget-wide v0, p1, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    iget-wide v2, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o mapToInternalProcessState(I)I
    .locals 5

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 v0, 0x7

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p0, v3, :cond_3

    return v2

    :cond_3
    const/4 v4, 0x5

    if-ne p0, v4, :cond_4

    return v2

    :cond_4
    const/4 v2, 0x6

    if-gt p0, v2, :cond_5

    return v0

    :cond_5
    const/16 v0, 0xb

    if-gt p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0xc

    if-gt p0, v0, :cond_7

    return v3

    :cond_7
    const/16 v0, 0xd

    if-gt p0, v0, :cond_8

    return v4

    :cond_8
    return v2
.end method

.method public static blacklist mapUidProcessStateToBatteryConsumerProcessState(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static greylist-max-o printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 10

    xor-int v0, p1, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p4

    const/4 v4, -0x1

    const-string v5, ":\""

    const-string v6, "\""

    if-ge v2, v3, :cond_b

    aget-object v3, p4, v2

    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_a

    if-eqz p5, :cond_1

    const-string v7, " "

    goto :goto_1

    :cond_1
    const-string v7, ","

    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    const-string v8, "="

    if-gez v7, :cond_6

    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v7, p2

    if-eqz v7, :cond_2

    const-string v7, "+"

    goto :goto_2

    :cond_2
    const-string v7, "-"

    :goto_2
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    iget-object v7, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v7, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v7, v9, :cond_a

    if-eqz p3, :cond_a

    const/4 v1, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_5

    iget v7, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne v7, v4, :cond_4

    goto :goto_4

    :cond_4
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_5
    :goto_4
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v5, "\"\""

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_6
    if-eqz p5, :cond_7

    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_5

    :cond_7
    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    iget v5, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v4, v5

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_9

    if-ltz v4, :cond_9

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_9

    if-eqz p5, :cond_8

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_6

    :cond_8
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    if-nez v1, :cond_f

    if-eqz p3, :cond_f

    if-eqz p5, :cond_c

    const-string v2, " wake_lock="

    goto :goto_8

    :cond_c
    const-string v2, ",w="

    :goto_8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_e

    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne v2, v4, :cond_d

    goto :goto_9

    :cond_d
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_e
    :goto_9
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_a
    return-void
.end method

.method private blacklist printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 30

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p4

    const-string v10, "    All frequencies:\n"

    const-string v0, "    High frequency (3GHz to 6GHz):\n"

    const-string v1, "    Mmwave frequency (greater than 6GHz):\n"

    const-string v2, "    Unknown frequency:\n"

    const-string v3, "    Low frequency (less than 1GHz):\n"

    const-string v4, "    Middle frequency (1GHz to 3GHz):\n"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const-string v12, "      Signal Strength Time:\n"

    const-string v13, "      Tx Time:\n"

    const-string v14, "      Rx Time: "

    const-string v0, "        good:     "

    const-string v1, "        great:    "

    const-string v2, "        unknown:  "

    const-string v3, "        poor:     "

    const-string v4, "        moderate: "

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const-wide/16 v0, 0x3e8

    mul-long v2, v8, v0

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v3, v4}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v0

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Active Cellular Radio Access Technology Breakdown:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    const/4 v1, 0x2

    :goto_0
    if-ltz v1, :cond_8

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    array-length v4, v11

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    move/from16 v17, v4

    add-int/lit8 v4, v17, -0x1

    move/from16 v18, v0

    :goto_2
    if-ltz v4, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v19, 0x0

    move-object/from16 v20, v10

    const/4 v10, 0x2

    if-ne v1, v10, :cond_1

    aget-object v10, v11, v4

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v10, "    All frequencies:\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "      Signal Strength Time:\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :goto_4
    const-wide/16 v21, 0x0

    move-object/from16 v23, v11

    const-string v11, ")\n"

    move-object/from16 v24, v12

    const-string v12, "("

    if-ge v10, v5, :cond_3

    move-object/from16 v25, v13

    move v13, v0

    move-object/from16 v0, p0

    move/from16 v26, v1

    move/from16 v28, v13

    move-object/from16 v27, v14

    move-wide v13, v2

    move v2, v4

    move v3, v10

    move v9, v4

    move v8, v5

    const/16 v16, 0x2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveRadioDurationMs(IIIJ)J

    move-result-wide v0

    cmp-long v2, v0, v21

    if-gtz v2, :cond_2

    goto :goto_5

    :cond_2
    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v10

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v2

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move v5, v8

    move v4, v9

    move-wide v2, v13

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move/from16 v1, v26

    move-object/from16 v14, v27

    move/from16 v0, v28

    move-wide/from16 v8, p4

    goto :goto_4

    :cond_3
    move/from16 v28, v0

    move/from16 v26, v1

    move v9, v4

    move v8, v5

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    const/16 v16, 0x2

    move-wide v13, v2

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      Tx Time:\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v10, v0

    :goto_6
    if-ge v10, v8, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v26

    move v2, v9

    move v3, v10

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v0

    cmp-long v2, v0, v21

    if-gtz v2, :cond_4

    goto :goto_7

    :cond_4
    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v10

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v2

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      Rx Time: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, p4

    move v3, v8

    move-object v0, v11

    move/from16 v4, v26

    invoke-virtual {v6, v4, v9, v1, v2}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_6

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_6
    const/4 v5, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_8
    add-int/lit8 v0, v9, -0x1

    move-wide v8, v1

    move v5, v3

    move v1, v4

    move-wide v2, v13

    move-object/from16 v10, v20

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    move v4, v0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v20, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    move-wide v13, v2

    move v3, v5

    const/4 v5, 0x0

    move/from16 v29, v4

    move v4, v1

    move-wide v1, v8

    move/from16 v9, v29

    add-int/lit8 v0, v4, -0x1

    move-wide v8, v1

    move v4, v5

    move v1, v0

    move v5, v3

    move-wide v2, v13

    move/from16 v0, v18

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    goto/16 :goto_0

    :cond_8
    move-object/from16 v20, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    move-wide v13, v2

    move v3, v5

    move v5, v4

    move v4, v1

    move-wide v1, v8

    if-nez v0, :cond_9

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  (no activity)"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private final greylist-max-o printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    nop

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v0, v13, v14, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v13

    div-long/2addr v13, v15

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v15

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    move-wide/from16 v19, v11

    array-length v11, v15

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    move/from16 v21, v11

    aget-object v11, v15, v12

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    add-long v17, v17, v22

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v21

    goto :goto_0

    :cond_0
    const-string v11, "WiFi"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, " Sleep time:  "

    const-string v15, ")"

    move-wide/from16 v21, v9

    const-string v9, "("

    const-string v10, "     "

    if-eqz v11, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    move-object/from16 v23, v12

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Scan time:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long v24, v5, v7

    add-long v24, v24, v17

    move-wide/from16 v26, v11

    sub-long v11, v13, v24

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v23, v7

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-wide/from16 v23, v7

    move-object v4, v12

    :goto_1
    const-string v7, "Cellular"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    move/from16 v11, p6

    move-object v12, v7

    invoke-virtual {v8, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    move-object/from16 v25, v12

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move/from16 v11, p6

    move-object/from16 v25, v7

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Idle time:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Rx time:     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v23

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Tx time:     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_3
    goto :goto_3

    :pswitch_0
    move-object/from16 v4, v25

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    :goto_3
    const/4 v4, -0x1

    :goto_4
    packed-switch v4, :pswitch_data_1

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    const-string v4, "[3]"

    const-string v5, "[4]"

    const-string v6, "[0]"

    const-string v7, "[1]"

    const-string v8, "[2]"

    filled-new-array {v6, v7, v8, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :pswitch_1
    const-string v4, "   15dBm to 20dBm: "

    const-string v12, "   above 20dBm: "

    move-wide/from16 v23, v5

    const-string v5, "   less than 0dBm: "

    const-string v6, "   0dBm to 8dBm: "

    move-wide/from16 v25, v7

    const-string v7, "   8dBm to 15dBm: "

    filled-new-array {v5, v6, v7, v4, v12}, [Ljava/lang/String;

    move-result-object v4

    nop

    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    array-length v5, v5

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "    "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v6

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_4
    goto :goto_7

    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    const-wide/16 v6, 0x0

    cmp-long v8, v21, v6

    const-wide v27, 0x414b774000000000L    # 3600000.0

    if-lez v8, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Battery drain: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    move v12, v5

    move-wide/from16 v6, v21

    long-to-double v4, v6

    div-double v4, v4, v27

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mAh"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_6
    move-object v9, v4

    move v12, v5

    move-wide/from16 v6, v21

    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v4, v19, v4

    if-lez v4, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Monitored rail energy drain: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v8, "#.##"

    invoke-direct {v5, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v21, v6

    move-object v10, v9

    move-wide/from16 v6, v19

    long-to-double v8, v6

    div-double v8, v8, v27

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_7
    move-wide/from16 v21, v6

    move-object v10, v9

    move-wide/from16 v6, v19

    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch -0x32c7c276
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private final greylist-max-o printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 5

    long-to-float v0, p2

    const-string v1, ""

    const/high16 v2, 0x46200000    # 10240.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-ltz v3, :cond_0

    const-string v1, "KB"

    div-float/2addr v0, v4

    :cond_0
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    const-string v1, "MB"

    div-float/2addr v0, v4

    :cond_1
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_2

    const-string v1, "GB"

    div-float/2addr v0, v4

    :cond_2
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_3

    const-string v1, "TB"

    div-float/2addr v0, v4

    :cond_3
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    const-string v1, "PB"

    div-float/2addr v0, v4

    :cond_4
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final greylist-max-o printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-eqz v11, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v11, p6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v13, p3, v5

    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v13

    cmp-long v2, v13, v9

    if-ltz v2, :cond_0

    const-string v2, " max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    div-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v5

    cmp-long v2, v5, v9

    if-ltz v2, :cond_1

    const-string v2, " (running for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, " (running)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, p0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_3
    move-object v5, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    goto :goto_1

    :cond_4
    move-object v5, p0

    move/from16 v7, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    :goto_1
    return v2
.end method

.method private static final greylist-max-o printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    if-eqz v1, :cond_5

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-eqz v12, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " times)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x3e8

    div-long v14, v2, v12

    invoke-virtual {v1, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-ltz v16, :cond_1

    const-string v10, " max="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    div-long v10, v2, v12

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    cmp-long v18, v10, v7

    if-lez v18, :cond_2

    const-string v12, " actual="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v12

    if-eqz v12, :cond_4

    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-ltz v16, :cond_3

    const-string v1, " (running for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, " (running)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    const-string v1, ", "

    return-object v1

    :cond_5
    return-object v6
.end method

.method private static final greylist-max-o printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x3e8

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    move-wide/from16 v17, v6

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v11

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v9

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    move-wide/from16 v6, v17

    :cond_0
    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v17, 0x1f4

    add-long v17, v6, v17

    div-long v1, v17, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ","

    if-eqz v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    return-object v2
.end method

.method private greylist-max-o printmAh(Ljava/io/PrintWriter;D)V
    .locals 1

    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-o printmAh(Ljava/lang/StringBuilder;D)V
    .locals 1

    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static greylist-max-o roundUsToMs(J)J
    .locals 4

    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist shouldHidePowerComponent(I)Z
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public abstract blacklist canReadTimeToFullNow()Z
.end method

.method public abstract blacklist canTrustSecPowerProfile()Z
.end method

.method public abstract greylist-max-o commitCurrentHistoryBatchLocked()V
.end method

.method public abstract greylist computeBatteryRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract greylist computeBatteryTimeRemaining(J)J
.end method

.method public abstract greylist computeBatteryUptime(JI)J
.end method

.method public abstract greylist computeChargeTimeRemaining(J)J
.end method

.method public abstract greylist-max-o computeRealtime(JI)J
.end method

.method public abstract greylist-max-o computeUptime(JI)J
.end method

.method public blacklist dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/lit8 v0, p3, 0xe

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p5

    invoke-direct/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZ)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_2
    if-eqz v0, :cond_3

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_3

    return-void

    :cond_3
    monitor-enter p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    move-object v7, p7

    :try_start_1
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    const-string v0, "i"

    const-string/jumbo v1, "vers"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/lit8 v0, p4, 0x18

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZ)V

    :cond_0
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p7

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 211

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v10, :cond_0

    sget-object v1, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: BatteryStats.dumpCheckin called for which type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but only STATS_SINCE_CHARGED is supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "err"

    invoke-static {v9, v12, v1, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v23, 0x3e8

    mul-long v14, v1, v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-long v4, v6, v23

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    invoke-virtual {v0, v14, v15, v10}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v25

    invoke-virtual {v0, v4, v5, v10}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v27

    invoke-virtual {v0, v14, v15, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v29

    invoke-virtual {v0, v4, v5, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v31

    invoke-virtual {v0, v4, v5, v10}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v33

    invoke-virtual {v0, v14, v15, v10}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v35

    invoke-virtual {v0, v4, v5, v10}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v37

    invoke-virtual {v0, v4, v5, v10}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v39

    invoke-virtual {v0, v4, v5, v10}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v41

    invoke-virtual {v0, v4, v5, v10}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v43

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v4, v5, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v45

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4, v5, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v47

    invoke-virtual {v0, v13, v4, v5, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v49

    invoke-virtual {v0, v1, v4, v5, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v51

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v53

    invoke-virtual {v0, v4, v5, v10}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v54

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v56

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v58

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v60

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v62

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v64

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v13, 0x80

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    move-wide/from16 v18, v2

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    sget-object v3, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v10

    nop

    if-nez v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_0

    :cond_1
    const-string v20, "N/A"

    :goto_0
    move-object/from16 v66, v20

    div-long v20, v27, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    div-long v20, v25, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    div-long v20, v33, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    div-long v20, v35, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    div-long v20, v31, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    div-long v20, v29, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v74

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v75

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v76

    div-long v20, v39, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    filled-new-array/range {v66 .. v77}, [Ljava/lang/Object;

    move-result-object v12

    move-wide/from16 v20, v6

    const-string v6, "bt"

    const/4 v7, 0x0

    invoke-static {v9, v7, v3, v6, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    const-wide/16 v66, 0x0

    const/4 v12, 0x0

    move-wide/from16 v68, v66

    move-wide/from16 v66, v6

    :goto_1
    if-ge v12, v2, :cond_5

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    nop

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v22

    move-object/from16 v70, v1

    const/4 v1, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v1, v22

    :goto_2
    if-ltz v1, :cond_4

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v71, v2

    move-object/from16 v2, v22

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/from16 v22, v6

    move-object/from16 v72, v7

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v73

    add-long v66, v66, v73

    :cond_2
    move-object/from16 v73, v7

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v74

    add-long v68, v68, v74

    :cond_3
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v6, v22

    move/from16 v2, v71

    move-object/from16 v7, v72

    goto :goto_2

    :cond_4
    move/from16 v71, v2

    move-object/from16 v22, v6

    move-object/from16 v72, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v70

    goto :goto_1

    :cond_5
    move-object/from16 v70, v1

    move/from16 v71, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v72

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v74

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v76

    const/4 v12, 0x3

    invoke-virtual {v0, v12, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v78

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v80

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v82

    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v84

    invoke-virtual {v0, v12, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v86

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v88

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v90

    nop

    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v92

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v93

    invoke-static/range {v76 .. v77}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v94

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v95

    invoke-static/range {v80 .. v81}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v96

    invoke-static/range {v82 .. v83}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v97

    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v98

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v99

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v100

    invoke-static/range {v90 .. v91}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v101

    filled-new-array/range {v92 .. v101}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gn"

    const/4 v6, 0x0

    invoke-static {v9, v6, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    const/4 v2, 0x0

    const-string v92, "gmcd"

    move-wide/from16 v94, v14

    move-object/from16 v12, v70

    const/4 v15, 0x2

    move-object/from16 v1, p2

    move-wide/from16 v102, v18

    move/from16 v14, v71

    move-object/from16 v70, v3

    move-wide/from16 v105, v4

    move-object/from16 v4, v92

    move-object v5, v6

    move-wide/from16 v107, v20

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-wide/from16 v5, v105

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v96

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v98

    div-long v1, v96, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    div-long v2, v98, v23

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2, v8, v8, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gwfl"

    move-object/from16 v4, v70

    const/4 v3, 0x0

    invoke-static {v9, v3, v4, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v16

    const/4 v2, 0x0

    const-string v18, "gwfcd"

    move-object/from16 v1, p2

    move-object v3, v4

    move-object/from16 v4, v18

    move-wide/from16 v109, v5

    move-object/from16 v5, v16

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string v4, "gble"

    move-object/from16 v3, v70

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    div-long v1, v37, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    div-long v1, v54, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    div-long v1, v66, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v113

    div-long v1, v68, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v114

    move-wide/from16 v5, v109

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v1

    div-long v1, v1, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v115

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v1

    div-long v1, v1, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v116

    div-long v1, v41, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v117

    div-long v1, v43, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v118

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v119

    div-long v1, v47, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v120

    invoke-virtual {v0, v15, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v121

    div-long v1, v51, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v122

    invoke-virtual {v0, v15, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v123

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v124

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v1

    div-long v1, v1, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v125

    div-long v1, v45, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v126

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v127

    div-long v2, v49, v23

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v128

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v129

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v130

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v131

    filled-new-array/range {v111 .. v131}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "m"

    move-object/from16 v3, v70

    const/4 v4, 0x0

    invoke-static {v9, v4, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_6

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const-string v2, "br"

    const/4 v7, 0x0

    invoke-static {v9, v7, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_4
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v7

    if-ge v2, v7, :cond_7

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const-string/jumbo v2, "sgt"

    const/4 v7, 0x0

    invoke-static {v9, v7, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v18

    div-long v18, v18, v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v15, "sst"

    invoke-static {v9, v7, v3, v15, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_5
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v7

    if-ge v2, v7, :cond_8

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    const-string/jumbo v2, "sgc"

    const/4 v7, 0x0

    invoke-static {v9, v7, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v2, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_6
    sget v7, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v2, v7, :cond_9

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    const-string v2, "dct"

    const/4 v7, 0x0

    invoke-static {v9, v7, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_7
    sget v7, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v2, v7, :cond_a

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    const-string v2, "dcc"

    const/4 v7, 0x0

    invoke-static {v9, v7, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v15, 0x8

    new-array v1, v15, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v15, :cond_b

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    const-string/jumbo v2, "wst"

    const/4 v7, 0x0

    invoke-static {v9, v7, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v15, :cond_c

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    const-string/jumbo v2, "wsc"

    const/4 v7, 0x0

    invoke-static {v9, v7, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0xd

    new-array v1, v7, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v7, :cond_d

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    const-string/jumbo v2, "wsst"

    const/4 v15, 0x0

    invoke-static {v9, v15, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v7, :cond_e

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    const-string/jumbo v2, "wssc"

    const/4 v15, 0x0

    invoke-static {v9, v15, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v15, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v4, :cond_f

    invoke-virtual {v0, v1, v5, v6, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v19

    div-long v19, v19, v23

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_f
    const-string/jumbo v1, "wsgt"

    const/4 v2, 0x0

    invoke-static {v9, v2, v3, v1, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v4, :cond_10

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_10
    const-string/jumbo v1, "wsgc"

    const/4 v2, 0x0

    invoke-static {v9, v2, v3, v1, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v70

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v92

    div-long v1, v70, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "wmct"

    const/4 v4, 0x0

    invoke-static {v9, v4, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v109

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v110

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v111

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    div-long v1, v56, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v113

    div-long v1, v58, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v114

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v115

    div-long v1, v60, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v116

    div-long v1, v62, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v117

    div-long v1, v64, v23

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v118

    filled-new-array/range {v109 .. v118}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "dc"

    const/4 v4, 0x0

    invoke-static {v9, v4, v3, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v100, 0x1f4

    const-string v4, "\""

    if-gez v11, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_12

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Timer;

    const/16 v105, 0x0

    const-string v106, ""

    move-object v1, v13

    move-object/from16 v109, v8

    move-object/from16 v104, v15

    move-object v8, v3

    move-object v15, v4

    move-wide v3, v5

    move-object/from16 v111, v12

    move-wide v11, v5

    move-object/from16 v5, v105

    move/from16 v6, p3

    move-object/from16 v7, v106

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "kwl"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v8

    move-wide v5, v11

    move-object v4, v15

    move-object/from16 v15, v104

    move-object/from16 v8, v109

    move-object/from16 v12, v111

    const/16 v7, 0xd

    move/from16 v11, p4

    goto :goto_e

    :cond_11
    move-object/from16 v109, v8

    move-object/from16 v111, v12

    move-object/from16 v104, v15

    move-object v8, v3

    move-object v15, v4

    move-wide v11, v5

    goto :goto_f

    :cond_12
    move-object/from16 v109, v8

    move-object/from16 v111, v12

    move-object/from16 v104, v15

    move-object v8, v3

    move-object v15, v4

    move-wide v11, v5

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_14

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v4, v11, v12, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-long v105, v4, v100

    div-long v105, v105, v23

    invoke-static/range {v105 .. v106}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v16, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v7, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "wr"

    const/4 v7, 0x0

    invoke-static {v9, v7, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v2, v16

    move-object/from16 v1, v20

    goto :goto_10

    :cond_13
    move-object/from16 v20, v1

    goto :goto_11

    :cond_14
    move-object/from16 v20, v1

    goto :goto_11

    :cond_15
    move-object/from16 v109, v8

    move-object/from16 v111, v12

    move-object/from16 v104, v15

    move-object v8, v3

    move-object v15, v4

    move-wide v11, v5

    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v105

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v7

    invoke-interface/range {v105 .. v105}, Ljava/util/Map;->size()I

    move-result v1

    const-wide/16 v112, 0x0

    if-lez v1, :cond_18

    invoke-interface/range {v105 .. v105}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v11, v12, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long v4, v4, v100

    div-long v4, v4, v23

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    move-object/from16 v16, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Timer;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v11, v12, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v19

    add-long v19, v19, v100

    div-long v19, v19, v23

    goto :goto_13

    :cond_16
    move-wide/from16 v19, v112

    :goto_13
    if-eqz v1, :cond_17

    invoke-virtual {v1, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v21

    goto :goto_14

    :cond_17
    const/16 v21, 0x0

    :goto_14
    move-object/from16 v106, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v114

    move-object/from16 v115, v2

    move-object/from16 v2, v114

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v114, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "rpm"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, v16

    goto :goto_12

    :cond_18
    move-object/from16 v6, p6

    const/4 v1, 0x1

    invoke-interface {v6, v0, v1}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v5

    nop

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "pws"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v4

    const/4 v1, 0x0

    :goto_15
    const/16 v2, 0x13

    const-string/jumbo v3, "pwi"

    if-ge v1, v2, :cond_1a

    sget-object v2, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_19

    const-string v2, "???"

    :cond_19
    nop

    invoke-virtual {v4, v1}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v19

    move-object/from16 v16, v4

    invoke-static/range {v19 .. v20}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "0"

    filled-new-array {v2, v4, v0, v6, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v9, v4, v8, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, p6

    move-object/from16 v4, v16

    goto :goto_15

    :cond_1a
    move-object/from16 v16, v4

    new-instance v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    move-object/from16 v6, p1

    invoke-direct {v0, v6, v5}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    :goto_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer;

    move-object/from16 v19, v4

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v20

    move-object/from16 v106, v5

    invoke-static/range {v20 .. v21}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v114, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v20

    move-object/from16 v115, v0

    invoke-static/range {v20 .. v21}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v2

    const-string/jumbo v2, "uid"

    filled-new-array {v2, v5, v6, v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v4, v8, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, p1

    move-object/from16 v4, v19

    move-object/from16 v5, v106

    move-object/from16 v7, v114

    move-object/from16 v0, v115

    goto :goto_16

    :cond_1b
    move-object/from16 v115, v0

    move-object/from16 v19, v4

    move-object/from16 v106, v5

    move-object/from16 v114, v7

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_1e

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v6, :cond_1d

    move-object/from16 v20, v1

    aget v1, v5, v7

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-eqz v21, :cond_1c

    move-wide/from16 v117, v11

    const/16 v11, 0x2c

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_1c
    move-wide/from16 v117, v11

    const/16 v11, 0x2c

    :goto_19
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v20

    move-wide/from16 v11, v117

    goto :goto_18

    :cond_1d
    move-object/from16 v20, v1

    move-wide/from16 v117, v11

    const/16 v11, 0x2c

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v11, v117

    goto :goto_17

    :cond_1e
    move-wide/from16 v117, v11

    const/16 v11, 0x2c

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gcf"

    const/4 v3, 0x0

    invoke-static {v9, v3, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_1f
    move-wide/from16 v117, v11

    const/16 v11, 0x2c

    :goto_1a
    const/4 v1, 0x0

    move v12, v1

    :goto_1b
    if-ge v12, v14, :cond_69

    move-object/from16 v7, v111

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move/from16 v5, p4

    move-wide/from16 v3, v117

    if-ltz v5, :cond_20

    if-eq v6, v5, :cond_20

    move-object/from16 v177, v0

    move-wide/from16 v189, v3

    move/from16 v161, v12

    move-object/from16 v195, v13

    move/from16 v178, v14

    move-object/from16 v148, v15

    move-object/from16 v163, v16

    move-object/from16 v164, v19

    move-wide/from16 v12, v102

    move-wide/from16 v201, v107

    move-object/from16 v18, v109

    move-object/from16 v111, v114

    const/16 v16, 0x2

    const/16 v110, 0x8

    const/16 v162, 0x5

    const/16 v179, 0xd

    move-object/from16 v108, v7

    move-object v14, v8

    goto/16 :goto_52

    :cond_20
    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Uid;

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v116

    const/4 v11, 0x1

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v118

    const/4 v11, 0x2

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v120

    const/4 v11, 0x3

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v122

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v124

    const/4 v11, 0x1

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v126

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v128

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v130

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v134

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v136

    const/4 v11, 0x3

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v138

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v140

    const/4 v11, 0x4

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v131

    const/4 v11, 0x5

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v142

    const/4 v1, 0x6

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v144

    const/4 v11, 0x7

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v146

    const/16 v11, 0x8

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v149

    const/16 v11, 0x9

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v151

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v153

    const/4 v1, 0x7

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v155

    const/16 v1, 0x8

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v157

    invoke-virtual {v2, v11, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v159

    cmp-long v11, v116, v112

    if-gtz v11, :cond_21

    cmp-long v11, v118, v112

    if-gtz v11, :cond_21

    cmp-long v11, v120, v112

    if-gtz v11, :cond_21

    cmp-long v11, v122, v112

    if-gtz v11, :cond_21

    cmp-long v11, v124, v112

    if-gtz v11, :cond_21

    cmp-long v11, v126, v112

    if-gtz v11, :cond_21

    cmp-long v11, v136, v112

    if-gtz v11, :cond_21

    cmp-long v11, v138, v112

    if-gtz v11, :cond_21

    cmp-long v11, v128, v112

    if-gtz v11, :cond_21

    if-gtz v130, :cond_21

    cmp-long v11, v131, v112

    if-gtz v11, :cond_21

    cmp-long v11, v142, v112

    if-gtz v11, :cond_21

    cmp-long v11, v134, v112

    if-gtz v11, :cond_21

    cmp-long v11, v140, v112

    if-gtz v11, :cond_21

    cmp-long v11, v144, v112

    if-gtz v11, :cond_21

    cmp-long v11, v146, v112

    if-gtz v11, :cond_21

    cmp-long v11, v149, v112

    if-gtz v11, :cond_21

    cmp-long v11, v151, v112

    if-gtz v11, :cond_21

    cmp-long v11, v153, v112

    if-gtz v11, :cond_21

    cmp-long v11, v155, v112

    if-gtz v11, :cond_21

    cmp-long v11, v157, v112

    if-gtz v11, :cond_21

    cmp-long v11, v159, v112

    if-lez v11, :cond_22

    :cond_21
    invoke-static/range {v116 .. v117}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v161

    invoke-static/range {v118 .. v119}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v162

    invoke-static/range {v120 .. v121}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v163

    invoke-static/range {v122 .. v123}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v164

    invoke-static/range {v124 .. v125}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    invoke-static/range {v126 .. v127}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    invoke-static/range {v136 .. v137}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v167

    invoke-static/range {v138 .. v139}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v168

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v169

    invoke-static/range {v130 .. v130}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v170

    invoke-static/range {v131 .. v132}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v171

    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v172

    invoke-static/range {v134 .. v135}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v173

    invoke-static/range {v140 .. v141}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v174

    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v175

    invoke-static/range {v146 .. v147}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v176

    invoke-static/range {v149 .. v150}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v177

    invoke-static/range {v151 .. v152}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v178

    invoke-static/range {v153 .. v154}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v179

    invoke-static/range {v155 .. v156}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v180

    invoke-static/range {v157 .. v158}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v181

    invoke-static/range {v159 .. v160}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v182

    filled-new-array/range {v161 .. v182}, [Ljava/lang/Object;

    move-result-object v11

    const-string/jumbo v1, "nt"

    invoke-static {v9, v6, v8, v1, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    nop

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v11

    const-string/jumbo v20, "mcd"

    const/16 v18, 0x8

    const/16 v21, 0x2

    move-object/from16 v1, p2

    move/from16 v161, v12

    move-object v12, v2

    move v2, v6

    move/from16 v22, v14

    move-object/from16 v162, v15

    move-wide v14, v3

    move-object v3, v8

    move-object/from16 v163, v16

    move-object/from16 v164, v19

    move-object/from16 v4, v20

    move-object v5, v11

    move v11, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v12, v14, v15, v10}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v165

    invoke-virtual {v12, v14, v15, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v167

    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v169

    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v170

    invoke-virtual {v12, v14, v15}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v1

    add-long v1, v1, v100

    div-long v171, v1, v23

    invoke-virtual {v12, v14, v15}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v1

    add-long v1, v1, v100

    div-long v173, v1, v23

    invoke-virtual {v12, v14, v15, v10}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v175

    cmp-long v1, v165, v112

    if-nez v1, :cond_24

    cmp-long v1, v167, v112

    if-nez v1, :cond_24

    if-nez v169, :cond_24

    if-nez v170, :cond_24

    cmp-long v1, v171, v112

    if-nez v1, :cond_24

    cmp-long v1, v173, v112

    if-nez v1, :cond_24

    cmp-long v1, v175, v112

    if-eqz v1, :cond_23

    goto :goto_1c

    :cond_23
    move-object/from16 v177, v0

    move-object v6, v13

    move-wide/from16 v183, v14

    move/from16 v110, v18

    move/from16 v2, v21

    move/from16 v178, v22

    move-object/from16 v1, v162

    const/4 v0, 0x1

    const/16 v162, 0x5

    goto :goto_1d

    :cond_24
    :goto_1c
    invoke-static/range {v165 .. v166}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v167 .. v168}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {v175 .. v176}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v169 .. v169}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    nop

    invoke-static/range {v170 .. v170}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v171 .. v172}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v173 .. v174}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v177, v0

    move-object v6, v13

    const/4 v0, 0x1

    move-object v13, v1

    move-wide/from16 v183, v14

    move/from16 v178, v22

    move-object v14, v2

    move/from16 v110, v18

    move/from16 v2, v21

    move-object/from16 v1, v162

    const/16 v162, 0x5

    move-object v15, v3

    move-object/from16 v17, v109

    move-object/from16 v18, v109

    move-object/from16 v19, v109

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    filled-new-array/range {v13 .. v22}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "wfl"

    invoke-static {v9, v11, v8, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1d
    nop

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string/jumbo v4, "wfcd"

    move-object v13, v1

    move-object/from16 v1, p2

    move v14, v2

    move v2, v11

    move-object v3, v8

    move-object v15, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_2e

    move-wide/from16 v4, v183

    invoke-virtual {v6, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    add-long v1, v1, v100

    div-long v1, v1, v23

    cmp-long v3, v1, v112

    if-eqz v3, :cond_2d

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    if-eqz v14, :cond_25

    invoke-virtual {v14, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v17

    goto :goto_1e

    :cond_25
    const/16 v17, 0x0

    :goto_1e
    move-wide/from16 v19, v1

    move-wide/from16 v0, v107

    invoke-virtual {v6, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v21

    if-eqz v14, :cond_26

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v107

    goto :goto_1f

    :cond_26
    move-wide/from16 v107, v112

    :goto_1f
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v2

    goto :goto_20

    :cond_27
    const/4 v2, 0x0

    :goto_20
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v179

    if-eqz v179, :cond_28

    move-wide/from16 v183, v4

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    goto :goto_21

    :cond_28
    move-wide/from16 v183, v4

    const/4 v4, 0x0

    :goto_21
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-virtual {v5, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v179

    goto :goto_22

    :cond_29
    move-wide/from16 v179, v112

    :goto_22
    if-eqz v5, :cond_2a

    invoke-virtual {v5, v0, v1}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v181

    goto :goto_23

    :cond_2a
    move-wide/from16 v181, v112

    :goto_23
    nop

    move-object/from16 v185, v5

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_2b

    invoke-virtual {v5, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v186

    goto :goto_24

    :cond_2b
    move-wide/from16 v186, v112

    :goto_24
    if-eqz v5, :cond_2c

    invoke-virtual {v5, v0, v1}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v188

    goto :goto_25

    :cond_2c
    move-wide/from16 v188, v112

    :goto_25
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v191

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v192

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v193

    invoke-static/range {v107 .. v108}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v194

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v195

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v196

    invoke-static/range {v179 .. v180}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v197

    invoke-static/range {v186 .. v187}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v198

    invoke-static/range {v181 .. v182}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v200

    move-wide/from16 v201, v0

    filled-new-array/range {v190 .. v200}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "blem"

    invoke-static {v9, v11, v8, v1, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26

    :cond_2d
    move-wide/from16 v19, v1

    move-wide/from16 v183, v4

    move-wide/from16 v201, v107

    goto :goto_26

    :cond_2e
    move-wide/from16 v201, v107

    :goto_26
    nop

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string v4, "ble"

    move-wide/from16 v2, v201

    move-object/from16 v1, p2

    move-object v0, v13

    move-wide v13, v2

    move v2, v11

    move-object v3, v8

    move-wide/from16 v19, v183

    move-object/from16 v17, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_32

    sget v1, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_27
    sget v4, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v3, v4, :cond_30

    invoke-virtual {v12, v3, v10}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    if-eqz v4, :cond_2f

    const/4 v2, 0x1

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_30
    if-eqz v2, :cond_31

    const-string/jumbo v3, "ua"

    invoke-static {v9, v11, v8, v3, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    move-object/from16 v104, v1

    :cond_32
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v4, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    goto :goto_28

    :cond_33
    move-wide/from16 v5, v112

    :goto_28
    move-object/from16 v21, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-wide/from16 v107, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "awl"

    invoke-static {v9, v11, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_34
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v5, v1

    :goto_29
    const/16 v3, 0x5f

    if-ltz v5, :cond_3a

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v21, ""

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v22, "f"

    move-object v1, v15

    move-object/from16 v107, v0

    move-object v0, v4

    move-wide/from16 v201, v13

    move v13, v3

    move-wide/from16 v3, v19

    move v14, v5

    move-object/from16 v5, v22

    move-object v13, v6

    move/from16 v6, p3

    move-object/from16 v108, v7

    move-object/from16 v111, v114

    const/16 v10, 0x2c

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v114

    const-string/jumbo v5, "p"

    move-object v1, v15

    move-object/from16 v2, v114

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v114, :cond_35

    invoke-virtual/range {v114 .. v114}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_2a

    :cond_35
    const/4 v1, 0x0

    :goto_2a
    move-object v2, v1

    const-string v5, "bp"

    move-object v1, v15

    move-wide/from16 v3, v19

    move/from16 v6, p3

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string/jumbo v5, "w"

    move/from16 v16, v7

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_39

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_36

    const/16 v3, 0x5f

    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    :cond_36
    const/16 v3, 0x5f

    :goto_2b
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_37

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_37
    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_38

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_38
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "wl"

    invoke-static {v9, v11, v8, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_39
    const/16 v6, 0xd

    :goto_2c
    add-int/lit8 v5, v14, -0x1

    move/from16 v10, p3

    move-object v6, v13

    move-object/from16 v0, v107

    move-object/from16 v7, v108

    move-object/from16 v114, v111

    move-wide/from16 v13, v201

    goto/16 :goto_29

    :cond_3a
    move-object/from16 v107, v0

    move-object/from16 v108, v7

    move-wide/from16 v201, v13

    move-object/from16 v111, v114

    const/16 v10, 0x2c

    const/16 v16, 0x2

    move v14, v5

    move-object v13, v6

    const/16 v6, 0xd

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_3b

    nop

    move v14, v10

    move-wide/from16 v4, v19

    move/from16 v10, p3

    invoke-virtual {v0, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    div-long v1, v1, v23

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    cmp-long v7, v1, v112

    if-lez v7, :cond_3c

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "wmc"

    invoke-static {v9, v11, v8, v7, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_3b
    move v14, v10

    move-wide/from16 v4, v19

    move/from16 v10, p3

    :cond_3c
    :goto_2d
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_2e
    if-ltz v1, :cond_40

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v179

    add-long v179, v179, v100

    div-long v179, v179, v23

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_3d

    move-object/from16 v114, v15

    move-wide/from16 v14, v201

    invoke-virtual {v7, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v20

    goto :goto_2f

    :cond_3d
    move-object/from16 v114, v15

    move-wide/from16 v14, v201

    const-wide/16 v20, -0x1

    :goto_2f
    if-eqz v7, :cond_3e

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v19

    goto :goto_30

    :cond_3e
    const/16 v19, -0x1

    :goto_30
    cmp-long v182, v179, v112

    if-eqz v182, :cond_3f

    move-object/from16 v182, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v183, v13

    move-object/from16 v13, v107

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v107

    move-object/from16 v184, v2

    move-object/from16 v2, v107

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v179 .. v180}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v107, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v185, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v186, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v2, v6, v3, v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "sy"

    invoke-static {v9, v11, v8, v2, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_31

    :cond_3f
    move-object/from16 v182, v0

    move-object/from16 v184, v2

    move/from16 v185, v3

    move-object/from16 v186, v7

    move-object/from16 v183, v13

    move-object/from16 v13, v107

    move-object/from16 v107, v6

    :goto_31
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v201, v14

    move-object/from16 v6, v107

    move-object/from16 v15, v114

    move-object/from16 v0, v182

    const/16 v14, 0x2c

    move-object/from16 v107, v13

    move-object/from16 v13, v183

    goto/16 :goto_2e

    :cond_40
    move-object/from16 v182, v0

    move-object/from16 v183, v13

    move-object/from16 v114, v15

    move-object/from16 v13, v107

    move-wide/from16 v14, v201

    move-object/from16 v107, v6

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_32
    if-ltz v1, :cond_44

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long v6, v6, v100

    div-long v6, v6, v23

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    move-wide/from16 v179, v4

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_41

    invoke-virtual {v4, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v184

    goto :goto_33

    :cond_41
    const-wide/16 v184, -0x1

    :goto_33
    if-eqz v4, :cond_42

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    goto :goto_34

    :cond_42
    const/4 v5, -0x1

    :goto_34
    cmp-long v186, v6, v112

    if-eqz v186, :cond_43

    move-object/from16 v186, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v187

    move-object/from16 v188, v0

    move-object/from16 v0, v187

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v187, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v189, v3

    invoke-static/range {v184 .. v185}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-wide/from16 v190, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v2, v4, v3, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "jb"

    invoke-static {v9, v11, v8, v2, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_35

    :cond_43
    move-object/from16 v188, v0

    move-object/from16 v186, v2

    move/from16 v189, v3

    move-object/from16 v187, v4

    move-wide/from16 v190, v6

    :goto_35
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v4, v179

    move-object/from16 v0, v188

    goto/16 :goto_32

    :cond_44
    move-object/from16 v188, v0

    move-wide/from16 v179, v4

    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_36
    if-ltz v1, :cond_47

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-eqz v2, :cond_46

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    const/4 v3, 0x0

    :goto_37
    array-length v5, v0

    if-ge v3, v5, :cond_45

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v19, v7

    aget v7, v0, v3

    invoke-virtual {v2, v7, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v19

    const/4 v4, 0x0

    goto :goto_37

    :cond_45
    move-object/from16 v19, v7

    const-string/jumbo v3, "jbc"

    invoke-static {v9, v11, v8, v3, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_38

    :cond_46
    move-object/from16 v19, v7

    :goto_38
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v7, v19

    goto :goto_36

    :cond_47
    move-object/from16 v19, v7

    move-object/from16 v7, v114

    invoke-virtual {v12, v7, v10}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_48

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "jbd"

    invoke-static {v9, v11, v8, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_48
    const-string v4, "fla"

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v1, p2

    move v2, v11

    move-object v3, v8

    move-wide/from16 v20, v179

    move-object/from16 v114, v0

    move-object v0, v7

    move-object/from16 v133, v19

    move-object/from16 v19, v107

    const/16 v179, 0xd

    move-object/from16 v107, v6

    move-wide/from16 v6, v20

    move-object/from16 v180, v8

    move-object/from16 v210, v109

    move-object/from16 v109, v13

    move-object/from16 v13, v210

    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "cam"

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v3, v180

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v4, "vid"

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "aud"

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_39
    if-ge v1, v6, :cond_4d

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_4c

    move/from16 v184, v6

    move-wide/from16 v6, v20

    invoke-virtual {v4, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v20

    add-long v20, v20, v100

    div-long v20, v20, v23

    cmp-long v5, v20, v112

    if-eqz v5, :cond_4b

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    move-wide/from16 v185, v6

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_49

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v7

    goto :goto_3a

    :cond_49
    const/4 v7, 0x0

    :goto_3a
    invoke-virtual {v4, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v189

    if-eqz v6, :cond_4a

    invoke-virtual {v6, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v191

    goto :goto_3b

    :cond_4a
    move-wide/from16 v191, v112

    :goto_3b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v193

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v194

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v195

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v196

    invoke-static/range {v189 .. v190}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v197

    invoke-static/range {v191 .. v192}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v198

    move-object/from16 v187, v2

    filled-new-array/range {v193 .. v198}, [Ljava/lang/Object;

    move-result-object v2

    move/from16 v193, v3

    const-string/jumbo v3, "sr"

    move-wide/from16 v201, v14

    move-object/from16 v14, v180

    invoke-static {v9, v11, v14, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3c

    :cond_4b
    move-object/from16 v187, v2

    move/from16 v193, v3

    move-wide/from16 v185, v6

    move-wide/from16 v201, v14

    move-object/from16 v14, v180

    goto :goto_3c

    :cond_4c
    move-object/from16 v187, v2

    move/from16 v193, v3

    move/from16 v184, v6

    move-wide/from16 v201, v14

    move-wide/from16 v185, v20

    move-object/from16 v14, v180

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v180, v14

    move/from16 v6, v184

    move-wide/from16 v20, v185

    move-wide/from16 v14, v201

    goto/16 :goto_39

    :cond_4d
    move/from16 v184, v6

    move-wide/from16 v201, v14

    move-wide/from16 v185, v20

    move-object/from16 v14, v180

    const-string/jumbo v4, "vib"

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v1, p2

    move v2, v11

    move-object v3, v14

    move/from16 v15, v184

    move-wide/from16 v6, v20

    move-object/from16 v180, v8

    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "fg"

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "fgs"

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_3d
    if-ge v5, v1, :cond_4e

    move-wide/from16 v6, v20

    invoke-virtual {v12, v5, v6, v7, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v20

    add-long v3, v3, v20

    add-long v184, v20, v100

    div-long v184, v184, v23

    invoke-static/range {v184 .. v185}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v5

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v20, v6

    const/4 v1, 0x7

    goto :goto_3d

    :cond_4e
    move-wide/from16 v6, v20

    cmp-long v1, v3, v112

    if-lez v1, :cond_4f

    const-string/jumbo v1, "st"

    invoke-static {v9, v11, v14, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v20

    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v184

    cmp-long v1, v20, v112

    if-gtz v1, :cond_50

    cmp-long v1, v184, v112

    if-lez v1, :cond_51

    :cond_50
    div-long v186, v20, v23

    invoke-static/range {v186 .. v187}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    div-long v186, v184, v23

    invoke-static/range {v186 .. v187}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v1, v5, v13}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "cpu"

    invoke-static {v9, v11, v14, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_51
    if-eqz v177, :cond_60

    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v1

    if-eqz v1, :cond_58

    array-length v5, v1

    invoke-virtual/range {v177 .. v177}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v8

    if-ne v5, v8, :cond_57

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v5, 0x0

    :goto_3e
    array-length v8, v1

    if-ge v5, v8, :cond_53

    if-eqz v5, :cond_52

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_52
    move-object v8, v2

    move-wide/from16 v186, v3

    aget-wide v2, v1, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move-object v2, v8

    move-wide/from16 v3, v186

    goto :goto_3e

    :cond_53
    move-object v8, v2

    move-wide/from16 v186, v3

    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v2

    if-eqz v2, :cond_55

    const/4 v3, 0x0

    :goto_3f
    array-length v4, v2

    if-ge v3, v4, :cond_54

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v189, v6

    aget-wide v6, v2, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v189

    goto :goto_3f

    :cond_54
    move-wide/from16 v189, v6

    goto :goto_41

    :cond_55
    move-wide/from16 v189, v6

    const/4 v3, 0x0

    :goto_40
    array-length v4, v1

    if-ge v3, v4, :cond_56

    const-string v4, ",0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_56
    :goto_41
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "A"

    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ctf"

    invoke-static {v9, v11, v14, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    :cond_57
    move-object v8, v2

    move-wide/from16 v186, v3

    move-wide/from16 v189, v6

    goto :goto_42

    :cond_58
    move-object v8, v2

    move-wide/from16 v186, v3

    move-wide/from16 v189, v6

    :goto_42
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    :goto_43
    const/4 v4, 0x7

    if-ge v3, v4, :cond_5f

    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v5

    if-eqz v5, :cond_5e

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v6, 0x0

    :goto_44
    array-length v7, v2

    if-ge v6, v7, :cond_5a

    if-eqz v6, :cond_59

    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_59
    aget-wide v4, v2, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x0

    goto :goto_44

    :cond_5a
    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v4

    if-eqz v4, :cond_5c

    const/4 v4, 0x0

    :goto_45
    array-length v5, v2

    if-ge v4, v5, :cond_5b

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, v8

    aget-wide v7, v2, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move-object v8, v5

    goto :goto_45

    :cond_5b
    move-object v5, v8

    goto :goto_47

    :cond_5c
    move-object v5, v8

    const/4 v4, 0x0

    :goto_46
    array-length v6, v2

    if-ge v4, v6, :cond_5d

    const-string v6, ",0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_5d
    :goto_47
    sget-object v4, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v3

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "ctf"

    invoke-static {v9, v11, v14, v6, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_48

    :cond_5e
    move-object v5, v8

    :goto_48
    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    goto :goto_43

    :cond_5f
    move-object v5, v8

    goto :goto_49

    :cond_60
    move-object v5, v2

    move-wide/from16 v186, v3

    move-wide/from16 v189, v6

    :goto_49
    nop

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_4a
    if-ltz v2, :cond_63

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v6

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v191

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v193

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v4

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v8

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v148

    cmp-long v195, v6, v112

    if-nez v195, :cond_62

    cmp-long v195, v191, v112

    if-nez v195, :cond_62

    cmp-long v195, v193, v112

    if-nez v195, :cond_62

    if-nez v4, :cond_62

    if-nez v148, :cond_62

    if-eqz v8, :cond_61

    goto :goto_4b

    :cond_61
    move-object/from16 v195, v0

    move-object/from16 v197, v1

    move-object/from16 v3, v109

    goto :goto_4c

    :cond_62
    :goto_4b
    move-object/from16 v195, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v196, v3

    move-object/from16 v3, v109

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v109

    move-object/from16 v197, v1

    move-object/from16 v1, v109

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v203

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v204

    invoke-static/range {v191 .. v192}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v205

    invoke-static/range {v193 .. v194}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v206

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v207

    invoke-static/range {v148 .. v148}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v208

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v209

    filled-new-array/range {v203 .. v209}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "pr"

    invoke-static {v9, v11, v14, v1, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4c
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v109, v3

    move-object/from16 v0, v195

    move-object/from16 v1, v197

    goto/16 :goto_4a

    :cond_63
    move-object/from16 v195, v0

    move-object/from16 v197, v1

    move-object/from16 v3, v109

    nop

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_4d
    if-ltz v1, :cond_68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Pkg;

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_4e
    if-ltz v7, :cond_64

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    add-int/2addr v4, v8

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v109

    move-object/from16 v148, v3

    move-object/from16 v3, v109

    check-cast v3, Ljava/lang/String;

    move-object/from16 v109, v5

    move-object/from16 v22, v6

    const/16 v5, 0x5f

    const/16 v6, 0x2c

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "wua"

    invoke-static {v9, v11, v14, v6, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v6, v22

    move-object/from16 v5, v109

    move-object/from16 v3, v148

    goto :goto_4e

    :cond_64
    move-object/from16 v148, v3

    move-object/from16 v109, v5

    move-object/from16 v22, v6

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_4f
    if-ltz v5, :cond_67

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object v8, v12

    move-object/from16 v18, v13

    move-wide/from16 v12, v102

    invoke-virtual {v7, v12, v13, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v102

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v192

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v193

    cmp-long v194, v102, v112

    if-nez v194, :cond_66

    if-nez v192, :cond_66

    if-eqz v193, :cond_65

    goto :goto_50

    :cond_65
    move-object/from16 v196, v0

    goto :goto_51

    :cond_66
    :goto_50
    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v203

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v204

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v205

    div-long v198, v102, v23

    invoke-static/range {v198 .. v199}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v206

    invoke-static/range {v192 .. v192}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v207

    invoke-static/range {v193 .. v193}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v208

    filled-new-array/range {v203 .. v208}, [Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v196, v0

    const-string v0, "apk"

    invoke-static {v9, v11, v14, v0, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_51
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v102, v12

    move-object/from16 v13, v18

    move-object/from16 v0, v196

    const/4 v6, 0x1

    move-object v12, v8

    goto :goto_4f

    :cond_67
    move-object/from16 v196, v0

    move-object v8, v12

    move-object/from16 v18, v13

    move-wide/from16 v12, v102

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v13, v18

    move-object/from16 v5, v109

    move-object/from16 v3, v148

    move-object v12, v8

    goto/16 :goto_4d

    :cond_68
    move-object/from16 v196, v0

    move-object/from16 v148, v3

    move-object/from16 v109, v5

    move-object v8, v12

    move-object/from16 v18, v13

    move-wide/from16 v12, v102

    :goto_52
    add-int/lit8 v0, v161, 0x1

    move-wide/from16 v102, v12

    move-object v8, v14

    move-object/from16 v109, v18

    move-object/from16 v114, v111

    move-object/from16 v15, v148

    move-object/from16 v16, v163

    move-object/from16 v19, v164

    move/from16 v14, v178

    move-wide/from16 v117, v189

    move-object/from16 v13, v195

    const/16 v11, 0x2c

    move v12, v0

    move-object/from16 v111, v108

    move-object/from16 v0, v177

    move-wide/from16 v107, v201

    goto/16 :goto_1b

    :cond_69
    return-void
.end method

.method public final blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 242

    move-object/from16 v7, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v13, p4

    move/from16 v11, p5

    if-eqz v13, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: BatteryStats.dump called for which type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but only STATS_SINCE_CHARGED is supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v16, 0x3e8

    mul-long v9, v0, v16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v5, v0, v16

    const-wide/16 v18, 0x1f4

    add-long v0, v5, v18

    div-long v3, v0, v16

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    move-wide/from16 v20, v3

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v3

    move-wide/from16 v22, v1

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v1

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v11

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v24

    move-wide/from16 v26, v3

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v3

    move-wide/from16 v28, v9

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v9

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v30

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v32

    move-wide/from16 v34, v3

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v3

    move-wide/from16 v36, v3

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getSubScreenDozeTime(JI)J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    move-wide/from16 v38, v5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v6

    move-object/from16 v40, v0

    const-string v0, " mAh"

    move/from16 v41, v5

    const/4 v5, 0x0

    if-lez v6, :cond_1

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Estimated battery capacity: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v43, v3

    int-to-double v3, v6

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v43, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Last learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v5, 0x3e8

    int-to-double v3, v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Min learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v4, 0x3e8

    move/from16 v45, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move/from16 v45, v4

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Max learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v4, 0x3e8

    move/from16 v46, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move/from16 v46, v4

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v1, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") realtime, "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v48, v5

    move/from16 v47, v6

    div-long v5, v26, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v26

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") uptime"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery screen off: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    div-long v5, v9, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") realtime, "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v34, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v34

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") uptime"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery screen doze: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    div-long v5, v36, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v36

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v49, 0x0

    cmp-long v5, v43, v49

    if-lez v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Time on battery sub screen doze: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v43, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v43

    move-wide/from16 v43, v9

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-wide/from16 v5, v43

    move-wide/from16 v43, v9

    :goto_3
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  Total run time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v11, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v9, "realtime, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v24, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v9, "uptime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v9, v30, v49

    if-ltz v9, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  Battery time remaining: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v30, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    cmp-long v9, v32, v49

    if-ltz v9, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  Charge time remaining: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v32, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v9

    cmp-long v51, v9, v49

    const-wide v52, 0x408f400000000000L    # 1000.0

    if-ltz v51, :cond_8

    move-wide/from16 v54, v5

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Discharge: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v5, v9

    div-double v5, v5, v52

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-wide/from16 v54, v5

    :goto_4
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v5

    cmp-long v51, v5, v49

    if-ltz v51, :cond_9

    move-wide/from16 v56, v11

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Screen off discharge: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v11, v5

    div-double v11, v11, v52

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-wide/from16 v56, v11

    :goto_5
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v11

    cmp-long v51, v11, v49

    if-ltz v51, :cond_a

    move-object/from16 v51, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Screen doze discharge: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v58, v1

    long-to-double v1, v11

    div-double v1, v1, v52

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    move-wide/from16 v58, v1

    move-object/from16 v51, v3

    :goto_6
    sub-long v2, v9, v5

    cmp-long v1, v2, v49

    if-ltz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Screen on discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v60, v5

    long-to-double v5, v2

    div-double v5, v5, v52

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    move-wide/from16 v60, v5

    :goto_7
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v5

    cmp-long v1, v5, v49

    if-ltz v1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Device light doze discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v62, v2

    long-to-double v1, v5

    div-double v1, v1, v52

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    move-wide/from16 v62, v2

    :goto_8
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v2

    cmp-long v1, v2, v49

    if-ltz v1, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Device deep doze discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v64, v5

    long-to-double v5, v2

    div-double v5, v5, v52

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    move-wide/from16 v64, v5

    :goto_9
    const-string v0, "  Start clock time: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v5, v38

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    move-wide/from16 v38, v11

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getSubScreenOnTime(JI)J

    move-result-wide v11

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenHighBrightnessTime(JI)J

    move-result-wide v52

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getSubScreenHighBrightnessTime(JI)J

    move-result-wide v66

    move-wide/from16 v68, v9

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v9

    move-wide/from16 v70, v2

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v2

    move-wide/from16 v72, v2

    const/4 v2, 0x1

    move-wide/from16 v74, v11

    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v11

    const/4 v3, 0x2

    move-wide/from16 v76, v11

    invoke-virtual {v7, v3, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v11

    move-wide/from16 v78, v11

    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    move-wide/from16 v80, v11

    invoke-virtual {v7, v3, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v84

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v86

    move-wide/from16 v88, v2

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Screen on: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v58

    move-wide/from16 v58, v11

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "x, Interactive: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v90, v0

    div-long v0, v9, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v51

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v0, v74, v49

    const-string/jumbo v1, "x"

    if-lez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Sub screen on: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v92, v9

    div-long v9, v74, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v74

    invoke-virtual {v7, v9, v10, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getSubScreenOnCount(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    move-wide/from16 v92, v9

    move-wide/from16 v9, v74

    :goto_a
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Screen brightnesses:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v51, 0x0

    move/from16 v238, v51

    move-object/from16 v51, v1

    move/from16 v1, v238

    :goto_b
    move-object/from16 v74, v11

    const/4 v11, 0x5

    move-wide/from16 v94, v2

    const-string v2, "\n    "

    const-string v3, " "

    if-ge v1, v11, :cond_11

    move-wide/from16 v96, v9

    invoke-virtual {v7, v1, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    invoke-virtual {v7, v1, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenAutoBrightnessTime(IJI)J

    move-result-wide v98

    cmp-long v11, v9, v49

    if-nez v11, :cond_f

    goto :goto_c

    :cond_f
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v2, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v9, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v90

    invoke-virtual {v7, v9, v10, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v11, v98, v49

    if-lez v11, :cond_10

    const-string v11, " -- auto "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v90, v2

    div-long v2, v98, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    goto :goto_c

    :cond_10
    move-wide/from16 v90, v2

    :goto_c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, v74

    move-wide/from16 v2, v94

    move-wide/from16 v9, v96

    goto :goto_b

    :cond_11
    move-wide/from16 v96, v9

    move-wide/from16 v9, v90

    const-string v1, " (no activity)"

    if-nez v0, :cond_12

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v11, v96, v49

    if-lez v11, :cond_17

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Sub screen brightnesses:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_d
    const/4 v15, 0x5

    if-ge v11, v15, :cond_15

    move/from16 v90, v0

    move-object v15, v1

    invoke-virtual {v7, v11, v5, v6, v13}, Landroid/os/BatteryStats;->getSubScreenBrightnessTime(IJI)J

    move-result-wide v0

    invoke-virtual {v7, v11, v5, v6, v13}, Landroid/os/BatteryStats;->getSubScreenAutoBrightnessTime(IJI)J

    move-result-wide v98

    cmp-long v91, v0, v49

    if-nez v91, :cond_13

    move-object/from16 v91, v3

    move-object/from16 v100, v15

    move/from16 v0, v90

    move-object v15, v2

    goto :goto_e

    :cond_13
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v90, 0x1

    sget-object v91, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    move-object/from16 v100, v15

    aget-object v15, v91, v11

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v2

    move-object/from16 v91, v3

    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v98, v49

    if-lez v2, :cond_14

    const-string v2, " -- auto "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v98, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    :cond_14
    move/from16 v0, v90

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object v2, v15

    move-object/from16 v3, v91

    move-object/from16 v1, v100

    move-object/from16 v15, p2

    goto :goto_d

    :cond_15
    move/from16 v90, v0

    move-object/from16 v100, v1

    move-object v15, v2

    move-object/from16 v91, v3

    if-nez v90, :cond_16

    move-object/from16 v1, v100

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_16
    move-object/from16 v1, v100

    :goto_f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p2

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v0, v90

    goto :goto_10

    :cond_17
    move-object/from16 v91, v3

    move-object v11, v15

    move-object v15, v2

    :goto_10
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Screen refresh rate:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x4

    move-wide/from16 v98, v9

    const-string v9, ""

    if-ge v2, v3, :cond_19

    invoke-virtual {v7, v2}, Landroid/os/BatteryStats;->getMainDisplayRefreshRateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-virtual {v3, v5, v6, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v100

    cmp-long v3, v100, v49

    if-nez v3, :cond_18

    move-object v3, v15

    move-object/from16 v10, v91

    move-object v15, v1

    goto :goto_12

    :cond_18
    move-object v3, v15

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {v2}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v10

    const-string v15, "REFRESH_RATE_MODE_"

    invoke-virtual {v10, v15, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v91

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v90, v0

    move-object v15, v1

    div-long v0, v100, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move/from16 v0, v90

    :goto_12
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v91, v10

    move-object v1, v15

    move-wide/from16 v9, v98

    move-object v15, v3

    goto :goto_11

    :cond_19
    move-object v3, v15

    move-object/from16 v10, v91

    move-object v15, v1

    if-nez v0, :cond_1a

    const-string v1, " (disabled)"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v1, v96, v49

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Sub screen refresh rate:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1c

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats;->getCoverDisplayRefreshRateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v90

    cmp-long v2, v90, v49

    if-nez v2, :cond_1b

    move-object/from16 v101, v3

    goto :goto_14

    :cond_1b
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v100, v0

    const-string v0, "REFRESH_RATE_MODE_"

    invoke-virtual {v2, v0, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v101, v3

    div-long v2, v90, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move/from16 v0, v100

    :goto_14
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v101

    goto :goto_13

    :cond_1c
    move-object/from16 v101, v3

    if-nez v0, :cond_1d

    const-string v1, " (disabled)"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    :cond_1e
    move-object/from16 v101, v3

    :goto_15
    cmp-long v1, v52, v49

    if-lez v1, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Screen high brightness time: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v52, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    cmp-long v1, v66, v49

    if-lez v1, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Sub screen high brightness time: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v66, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    cmp-long v1, v72, v49

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Power save mode enabled: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v72, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v91, v10

    move-wide/from16 v1, v94

    move-wide/from16 v238, v72

    move-object/from16 v72, v9

    move-wide/from16 v9, v238

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    :cond_21
    move-object/from16 v91, v10

    move-wide/from16 v1, v94

    move-wide/from16 v238, v72

    move-object/from16 v72, v9

    move-wide/from16 v9, v238

    :goto_16
    cmp-long v3, v80, v49

    if-eqz v3, :cond_22

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Device light idling: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v94, v9

    div-long v9, v80, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v80

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v74

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v73, v0

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v51

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17

    :cond_22
    move/from16 v73, v0

    move-wide/from16 v94, v9

    move-object/from16 v9, v51

    move-object/from16 v3, v74

    :goto_17
    cmp-long v0, v76, v49

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode light time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v102, v5

    div-long v5, v76, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v76

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -- longest "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_23
    move-wide/from16 v102, v5

    :goto_18
    cmp-long v0, v58, v49

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device full idling: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v58, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v58

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19

    :cond_24
    move-wide/from16 v5, v58

    :goto_19
    cmp-long v0, v78, v49

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode full time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v58, v5

    div-long v5, v78, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v78

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -- longest "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    :cond_25
    move-wide/from16 v58, v5

    :goto_1a
    cmp-long v0, v88, v49

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Active phone call: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v88, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v88

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_26
    move-wide/from16 v5, v88

    :goto_1b
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v10

    if-eqz v10, :cond_27

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Connectivity changes: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/io/PrintWriter;->println(I)V

    :cond_27
    const-wide/16 v88, 0x0

    const-wide/16 v104, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v51, 0x0

    move-wide/from16 v106, v5

    move/from16 v5, v51

    :goto_1c
    move/from16 v6, v41

    if-ge v5, v6, :cond_2c

    move/from16 v41, v6

    move-object/from16 v6, v40

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/BatteryStats$Uid;

    nop

    move-object/from16 v51, v6

    invoke-virtual/range {v40 .. v40}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v74

    move-object/from16 v90, v9

    const/4 v9, 0x1

    add-int/lit8 v74, v74, -0x1

    move/from16 v9, v74

    :goto_1d
    if-ltz v9, :cond_2b

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v74

    move/from16 v100, v10

    move-object/from16 v10, v74

    check-cast v10, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/from16 v108, v12

    move-object/from16 v74, v15

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_28

    move-wide/from16 v109, v1

    move-wide/from16 v1, v102

    invoke-virtual {v12, v1, v2, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v102

    add-long v88, v88, v102

    goto :goto_1e

    :cond_28
    move-wide/from16 v109, v1

    move-wide/from16 v1, v102

    :goto_1e
    move-object/from16 v102, v12

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_2a

    invoke-virtual {v12, v1, v2, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v117

    cmp-long v15, v117, v49

    if-lez v15, :cond_2a

    if-gez p5, :cond_29

    new-instance v15, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v103

    move-object/from16 v112, v103

    check-cast v112, Ljava/lang/String;

    invoke-virtual/range {v40 .. v40}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v113

    move-object/from16 v111, v15

    move-object/from16 v114, v12

    move-wide/from16 v115, v117

    invoke-direct/range {v111 .. v116}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-long v104, v104, v117

    :cond_2a
    add-int/lit8 v9, v9, -0x1

    move-wide/from16 v102, v1

    move-object/from16 v15, v74

    move/from16 v10, v100

    move-object/from16 v12, v108

    move-wide/from16 v1, v109

    goto :goto_1d

    :cond_2b
    move-wide/from16 v109, v1

    move/from16 v100, v10

    move-object/from16 v108, v12

    move-object/from16 v74, v15

    move-wide/from16 v1, v102

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v40, v51

    move-object/from16 v9, v90

    move-wide/from16 v1, v109

    goto/16 :goto_1c

    :cond_2c
    move-wide/from16 v109, v1

    move/from16 v41, v6

    move-object/from16 v90, v9

    move/from16 v100, v10

    move-object/from16 v108, v12

    move-object/from16 v74, v15

    move-object/from16 v51, v40

    move-wide/from16 v1, v102

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-wide/from16 v102, v9

    const/4 v6, 0x1

    invoke-virtual {v7, v6, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    const/4 v12, 0x2

    invoke-virtual {v7, v12, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v5

    const/4 v15, 0x3

    move-wide/from16 v111, v9

    invoke-virtual {v7, v15, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-wide/from16 v113, v9

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v115, v9

    const/4 v15, 0x1

    invoke-virtual {v7, v15, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v117, v9

    invoke-virtual {v7, v12, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    const/4 v15, 0x3

    move-wide/from16 v119, v9

    invoke-virtual {v7, v15, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    const/4 v15, 0x4

    move-wide/from16 v121, v9

    invoke-virtual {v7, v15, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-wide/from16 v123, v9

    const/4 v15, 0x5

    invoke-virtual {v7, v15, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    invoke-virtual {v7, v1, v2, v13}, Landroid/os/BatteryStats;->getMobileActiveTime(JI)J

    move-result-wide v125

    move-wide/from16 v127, v9

    div-long v9, v125, v16

    invoke-virtual {v7, v1, v2, v13}, Landroid/os/BatteryStats;->getMobileActive5GTime(JI)J

    move-result-wide v125

    move-wide/from16 v129, v5

    div-long v5, v125, v16

    cmp-long v15, v88, v49

    if-eqz v15, :cond_2d

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  Total full wakelock time: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v125, v88, v18

    div-long v12, v125, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2d
    cmp-long v12, v104, v49

    if-eqz v12, :cond_2e

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  Total partial wakelock time: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v12, v104, v18

    div-long v12, v12, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2e
    nop

    move/from16 v13, p4

    invoke-virtual {v7, v1, v2, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v125

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v15

    cmp-long v12, v125, v49

    if-eqz v12, :cond_2f

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  Total WiFi Multicast wakelock Count: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  Total WiFi Multicast wakelock time: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v131, v125, v18

    div-long v12, v131, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDisplayCount()I

    move-result v13

    const/4 v12, 0x1

    if-le v13, v12, :cond_34

    move-object/from16 v12, v72

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v40, v0

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  MULTI-DISPLAY POWER SUMMARY START"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v13, :cond_33

    move/from16 v72, v13

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  Display "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Statistics:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v131, v5

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v5

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "    Screen on: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v133, v9

    div-long v9, v5, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v109

    invoke-virtual {v7, v5, v6, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v13, "    Screen brightness levels:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    const/16 v73, 0x0

    move/from16 v238, v73

    move/from16 v73, v13

    move/from16 v13, v238

    :goto_20
    move/from16 v109, v15

    const/4 v15, 0x5

    if-ge v13, v15, :cond_31

    move-wide/from16 v135, v9

    invoke-virtual {v7, v0, v13, v1, v2}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v9

    cmp-long v15, v9, v49

    if-nez v15, :cond_30

    move-object/from16 v14, v108

    goto :goto_21

    :cond_30
    const/16 v73, 0x1

    const-string v15, "\n      "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v15, v15, v13

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v91

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v9, v16

    invoke-static {v8, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v108

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_21
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v108, v14

    move/from16 v15, v109

    move-wide/from16 v9, v135

    move-object/from16 v14, p3

    goto :goto_20

    :cond_31
    move-wide/from16 v135, v9

    move-object/from16 v14, v108

    if-nez v73, :cond_32

    move-object/from16 v9, v74

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_32
    move-object/from16 v9, v74

    :goto_22
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v137, v5

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v5

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v15, p3

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Screen Doze: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v74, v9

    div-long v9, v5, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v135

    invoke-virtual {v7, v5, v6, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v108, v14

    move-object v14, v15

    move/from16 v13, v72

    move/from16 v15, v109

    move-wide/from16 v5, v131

    move-wide/from16 v109, v9

    move-wide/from16 v9, v133

    goto/16 :goto_1f

    :cond_33
    move-wide/from16 v131, v5

    move-wide/from16 v133, v9

    move/from16 v72, v13

    move-wide/from16 v9, v109

    move/from16 v109, v15

    move-object v15, v14

    move-object/from16 v14, v108

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  MULTI-DISPLAY POWER SUMMARY END"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23

    :cond_34
    move-object/from16 v40, v0

    move-wide/from16 v131, v5

    move-wide/from16 v133, v9

    move-object/from16 v12, v72

    move-wide/from16 v9, v109

    move/from16 v72, v13

    move/from16 v109, v15

    move-object v15, v14

    move-object/from16 v14, v108

    :goto_23
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Mobile active info"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n     Mobile active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v133

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "\n     Mobile active 5G time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v131

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Logging duration for connectivity statistics: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    div-long v5, v9, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Cellular Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular kernel active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v7, v1, v2, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v5

    move-wide/from16 v135, v1

    div-long v0, v5, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v108

    const-string v110, "Cellular"

    move-object/from16 v1, v40

    move-object/from16 v2, v51

    move-object/from16 v0, p0

    move-object/from16 v51, v14

    move-wide/from16 v139, v22

    move-object/from16 v14, v74

    move-object/from16 v141, v90

    move-object/from16 v1, p2

    move-object/from16 v142, v2

    move-object/from16 v74, v12

    move-wide/from16 v22, v62

    move-wide/from16 v62, v70

    move-wide/from16 v70, v94

    move-object/from16 v12, v101

    move-wide/from16 v94, v106

    move-object v2, v8

    move-wide/from16 v106, v20

    move-wide/from16 v20, v26

    move-wide/from16 v26, v34

    move-wide/from16 v34, v36

    move-wide/from16 v36, v54

    move-object/from16 v12, v91

    move-object/from16 v54, v14

    move-object v14, v3

    move-object/from16 v3, p3

    move-object/from16 v55, v14

    move-object v14, v4

    move-object/from16 v4, v110

    move-wide/from16 v147, v5

    move/from16 v144, v41

    move/from16 v41, v48

    move-wide/from16 v82, v58

    move-wide/from16 v145, v129

    move-wide/from16 v129, v131

    move-wide/from16 v90, v133

    const/4 v6, 0x0

    move-wide/from16 v58, v9

    move-wide/from16 v9, v135

    move-object/from16 v5, v108

    move/from16 v42, v47

    move-object/from16 v47, v14

    move v14, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v4, v106

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats;->printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v0, "     Cellular data received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v102

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular data sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v111

    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular packets received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v115

    invoke-virtual {v11, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Cellular packets sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v14, v117

    invoke-virtual {v11, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-wide/from16 v102, v14

    move-object/from16 v14, p3

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular Radio Access Technology:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_24
    move-wide/from16 v115, v1

    sget v1, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v15, v1, :cond_39

    invoke-virtual {v7, v15, v9, v10, v13}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v1

    cmp-long v73, v1, v49

    if-nez v73, :cond_35

    move-wide/from16 v111, v3

    move-wide/from16 v117, v5

    move-wide/from16 v135, v9

    move-object/from16 v4, v47

    move-object/from16 v3, v55

    move-wide/from16 v5, v58

    goto/16 :goto_27

    :cond_35
    move-wide/from16 v111, v3

    const-string v3, "\n       "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v3, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v15, v3, :cond_36

    sget-object v3, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v15

    goto :goto_25

    :cond_36
    const-string v3, "ERROR"

    :goto_25
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v1, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v4, v47

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v117, v5

    move-wide/from16 v5, v58

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v55

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v47, v0

    const/16 v0, 0xd

    if-ne v15, v0, :cond_38

    move-wide/from16 v58, v1

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->getNrNsaTime(J)J

    move-result-wide v0

    cmp-long v2, v0, v49

    if-eqz v2, :cond_37

    const-string v2, "\n         "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nr_nsa"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v135, v9

    div-long v9, v0, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_37
    move-wide/from16 v135, v9

    goto :goto_26

    :cond_38
    move-wide/from16 v58, v1

    move-wide/from16 v135, v9

    :goto_26
    move/from16 v0, v47

    :goto_27
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v55, v3

    move-object/from16 v47, v4

    move-wide/from16 v58, v5

    move-wide/from16 v3, v111

    move-wide/from16 v1, v115

    move-wide/from16 v5, v117

    move-wide/from16 v9, v135

    goto/16 :goto_24

    :cond_39
    move-wide/from16 v111, v3

    move-wide/from16 v117, v5

    move-wide/from16 v135, v9

    move-object/from16 v4, v47

    move-object/from16 v3, v55

    move-wide/from16 v5, v58

    if-nez v0, :cond_3a

    move-object/from16 v9, v54

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_3a
    move-object/from16 v9, v54

    :goto_28
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "good (-108dBm to -98dBm): "

    const-string v2, "great (greater than -98dBm): "

    const-string/jumbo v10, "very poor (less than -128dBm): "

    const-string/jumbo v15, "poor (-128dBm to -118dBm): "

    move/from16 v47, v0

    const-string/jumbo v0, "moderate (-118dBm to -108dBm): "

    filled-new-array {v10, v15, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    array-length v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v1, 0x0

    move/from16 v47, v0

    :goto_29
    if-ge v1, v10, :cond_3c

    move-object/from16 v55, v3

    move/from16 v54, v10

    move-wide/from16 v10, v135

    invoke-virtual {v7, v1, v10, v11, v13}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    cmp-long v0, v2, v49

    if-nez v0, :cond_3b

    move-wide/from16 v135, v10

    move-object/from16 v10, v55

    goto :goto_2a

    :cond_3b
    const-string v0, "\n       "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    move/from16 v47, v0

    aget-object v0, v15, v1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v135, v10

    div-long v10, v2, v16

    invoke-static {v8, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v55

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, p2

    move-object v3, v10

    move/from16 v10, v54

    goto :goto_29

    :cond_3c
    move/from16 v54, v10

    move-object v10, v3

    if-nez v47, :cond_3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p2

    move-wide/from16 v2, v135

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wifi Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi kernel active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v13}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v0

    nop

    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v51

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v51

    const-string v55, "WiFi"

    move-wide/from16 v58, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v73, v9

    move-object/from16 v108, v10

    move-wide/from16 v9, v135

    move-object v2, v8

    move-wide/from16 v110, v111

    move-object/from16 v112, v3

    move-object/from16 v238, v108

    move-object/from16 v108, v15

    move-object/from16 v15, v238

    move-object/from16 v3, p3

    move-object/from16 v131, v15

    move-object v15, v4

    move-object/from16 v4, v55

    move-wide/from16 v149, v5

    move-object/from16 v5, v51

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string v0, "     Wifi data received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v145

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi data sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v113

    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi packets received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v119

    invoke-virtual {v11, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Wifi packets sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v121

    invoke-virtual {v11, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi states:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v47, 0x0

    move/from16 v1, v47

    :goto_2b
    const/16 v2, 0x8

    if-ge v1, v2, :cond_3f

    move-wide/from16 v113, v3

    invoke-virtual {v7, v1, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v2

    cmp-long v4, v2, v49

    if-nez v4, :cond_3e

    move-wide/from16 v121, v5

    move-object/from16 v4, v131

    move-wide/from16 v5, v149

    goto :goto_2c

    :cond_3e
    const-string v4, "\n       "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v4, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v121, v5

    div-long v4, v2, v16

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v149

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v131

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v131, v4

    move-wide/from16 v149, v5

    move-wide/from16 v3, v113

    move-wide/from16 v5, v121

    goto :goto_2b

    :cond_3f
    move-wide/from16 v113, v3

    move-wide/from16 v121, v5

    move-object/from16 v4, v131

    move-wide/from16 v5, v149

    if-nez v0, :cond_40

    move-object/from16 v3, v73

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_40
    move-object/from16 v3, v73

    :goto_2d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     Wifi supplicant states:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2e
    const/16 v2, 0xd

    if-ge v1, v2, :cond_42

    move-object/from16 v73, v3

    invoke-virtual {v7, v1, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v2

    cmp-long v47, v2, v49

    if-nez v47, :cond_41

    move-wide/from16 v135, v9

    goto :goto_2f

    :cond_41
    move-wide/from16 v135, v9

    const-string v9, "\n       "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v9, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v2, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v73

    move-wide/from16 v9, v135

    goto :goto_2e

    :cond_42
    move-object/from16 v73, v3

    move-wide/from16 v135, v9

    if-nez v0, :cond_43

    move-object/from16 v3, v73

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_43
    move-object/from16 v3, v73

    :goto_30
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "good (-66.25dBm to -55dBm): "

    const-string v2, "great (greater than -55dBm): "

    const-string/jumbo v9, "very poor (less than -88.75dBm): "

    const-string/jumbo v10, "poor (-88.75 to -77.5dBm): "

    move/from16 v47, v0

    const-string/jumbo v0, "moderate (-77.5dBm to -66.25dBm): "

    filled-new-array {v9, v10, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    array-length v1, v10

    const/4 v9, 0x5

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    move/from16 v47, v0

    :goto_31
    if-ge v1, v2, :cond_45

    move-object/from16 v51, v10

    move-object/from16 v55, v12

    move-wide/from16 v9, v135

    invoke-virtual {v7, v1, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v11

    cmp-long v0, v11, v49

    if-nez v0, :cond_44

    move/from16 v73, v2

    move-wide/from16 v135, v9

    move-object/from16 v0, v101

    goto :goto_32

    :cond_44
    move-object/from16 v0, v101

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v47, 0x1

    move/from16 v73, v2

    const-string v2, "     "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v51, v1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v135, v9

    div-long v9, v11, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, p2

    move-object/from16 v101, v0

    move-object/from16 v10, v51

    move-object/from16 v12, v55

    move/from16 v2, v73

    const/4 v9, 0x5

    goto :goto_31

    :cond_45
    move/from16 v73, v2

    move-object/from16 v51, v10

    move-object/from16 v55, v12

    move-object/from16 v0, v101

    if-nez v47, :cond_46

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v11, p2

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  GPS Statistics:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     GPS signal quality (Top 4 Average CN0):"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "poor (less than 20 dBHz): "

    const-string v2, "good (greater than 20 dBHz): "

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    array-length v1, v12

    const/4 v10, 0x2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v9, :cond_47

    move-object/from16 v101, v3

    move-wide/from16 v10, v135

    invoke-virtual {v7, v1, v10, v11, v13}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v131, v0

    const-string v0, "  "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v12, v1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v132, v9

    div-long v9, v2, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, p2

    move-object/from16 v3, v101

    move-object/from16 v0, v131

    move/from16 v9, v132

    const/4 v10, 0x2

    goto :goto_33

    :cond_47
    move-object/from16 v131, v0

    move-object/from16 v101, v3

    move/from16 v132, v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p2

    move-wide/from16 v9, v135

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v2

    cmp-long v0, v2, v49

    if-lez v0, :cond_48

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     GPS Battery Drain: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v135, v5

    move-object v6, v4

    long-to-double v4, v2

    const-wide v133, 0x414b774000000000L    # 3600000.0

    div-double v4, v4, v133

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_34

    :cond_48
    move-wide/from16 v135, v5

    move-object v6, v4

    :goto_34
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getScreenOnGpsRunningTime(JI)J

    move-result-wide v133

    cmp-long v0, v133, v49

    if-lez v0, :cond_49

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "     GPS run time while screen on: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v133, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_49
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v74

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Bluetooth total received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v4, v123

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v123, v2

    move-wide/from16 v0, v127

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v2

    div-long v2, v2, v16

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Bluetooth scan time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v74, "Bluetooth"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v137

    move-object/from16 v1, v131

    move-object/from16 v0, p0

    move-object/from16 v131, v12

    move-object v12, v1

    move-object/from16 v1, p2

    move-wide/from16 v149, v2

    move-object v2, v8

    move-wide/from16 v151, v9

    move-object/from16 v9, v101

    move-object/from16 v3, p3

    move-wide/from16 v153, v4

    move-object v10, v6

    move-object/from16 v4, v74

    move-wide/from16 v155, v135

    move-wide/from16 v135, v121

    move-wide/from16 v121, v145

    move-object/from16 v5, v137

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Speaker Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_35
    const/16 v2, 0x10

    const-string v6, ": "

    if-ge v1, v2, :cond_4b

    invoke-virtual {v7, v1, v13}, Landroid/os/BatteryStats;->getSpeakerMediaTime(II)J

    move-result-wide v2

    cmp-long v4, v2, v49

    if-nez v4, :cond_4a

    goto :goto_36

    :cond_4a
    const/4 v0, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "level(media) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_4b
    const/4 v1, 0x0

    move/from16 v47, v0

    :goto_37
    const/16 v0, 0x10

    if-ge v1, v0, :cond_4d

    invoke-virtual {v7, v1, v13}, Landroid/os/BatteryStats;->getSpeakerCallTime(II)J

    move-result-wide v2

    cmp-long v0, v2, v49

    if-nez v0, :cond_4c

    goto :goto_38

    :cond_4c
    const/4 v0, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "level(call) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move/from16 v47, v0

    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4d
    if-nez v47, :cond_4e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device battery use since last full charge"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (lower bound): "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (upper bound): "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged permil while screen on: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceChargePermil()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged permil while screen off: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceChargePermil()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged permil while screen doze: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceChargePermil()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    cmp-long v0, v96, v49

    if-lez v0, :cond_4f

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged permil while sub screen on: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenOnSinceChargePermil()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged permil while sub screen doze: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenDozeSinceChargePermil()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_4f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v12, p7

    const/4 v9, 0x1

    invoke-interface {v12, v7, v9}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v5

    invoke-virtual {v5, v11, v14}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    nop

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/BatteryStats;->getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_51

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Per-app mobile ms per packet:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$UidMobileRadioStats;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    Uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v74, v4

    move-object v9, v5

    iget-wide v4, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->rxPackets:J

    iget-wide v12, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->txPackets:J

    add-long/2addr v4, v12

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " packets over "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveCount:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v141

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-wide v4, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p7

    move-object v5, v9

    move-object/from16 v4, v74

    const/4 v9, 0x1

    move/from16 v13, p4

    goto :goto_39

    :cond_50
    move-object/from16 v74, v4

    move-object v9, v5

    move-object/from16 v13, v141

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    TOTAL TIME: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v155

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v112

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_3a

    :cond_51
    move-object/from16 v74, v4

    move-object v9, v5

    move-object/from16 v12, v112

    move-object/from16 v13, v141

    move-wide/from16 v4, v155

    :goto_3a
    new-instance v0, Landroid/os/BatteryStats$1;

    invoke-direct {v0, v7}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    move-object v2, v0

    if-gez p5, :cond_5c

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v101

    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_57

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v112

    move-object/from16 v137, v0

    move-object/from16 v0, v112

    check-cast v0, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v145, v4

    move-object v5, v9

    move-object/from16 v112, v10

    move-wide/from16 v9, v151

    move/from16 v4, p4

    invoke-static {v0, v9, v10, v4}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v151

    cmp-long v138, v151, v49

    if-lez v138, :cond_52

    new-instance v4, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v138

    move-object/from16 v156, v138

    check-cast v156, Ljava/lang/String;

    const/16 v157, 0x0

    move-object/from16 v155, v4

    move-object/from16 v158, v0

    move-wide/from16 v159, v151

    invoke-direct/range {v155 .. v160}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    move-wide/from16 v151, v9

    move-object/from16 v10, v112

    move-object/from16 v0, v137

    move-object v9, v5

    move-wide/from16 v4, v145

    goto :goto_3b

    :cond_53
    move-wide/from16 v145, v4

    move-object v5, v9

    move-object/from16 v112, v10

    move-wide/from16 v9, v151

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_56

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All kernel wake locks:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v4, v0

    :goto_3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_55

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/BatteryStats$TimerEntry;

    const-string v137, ": "

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Kernel Wake lock "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v138, 0x0

    move-object/from16 v141, v0

    move-object v0, v8

    move-object/from16 v151, v1

    move-object/from16 v1, v141

    move-object v7, v2

    move-object/from16 v141, v3

    move-wide v2, v9

    move/from16 v155, v4

    move-object/from16 v152, v13

    move/from16 v13, p4

    move-object/from16 v4, v138

    move-object/from16 v138, v5

    move/from16 v5, p4

    move-object/from16 v156, v15

    move-object v15, v6

    move-object/from16 v6, v137

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, " realtime"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_54
    add-int/lit8 v4, v155, 0x1

    move-object v2, v7

    move-object v6, v15

    move-object/from16 v5, v138

    move-object/from16 v3, v141

    move-object/from16 v13, v152

    move-object/from16 v15, v156

    move-object/from16 v7, p0

    goto :goto_3c

    :cond_55
    move-object v7, v2

    move-object/from16 v141, v3

    move/from16 v155, v4

    move-object/from16 v138, v5

    move-object/from16 v152, v13

    move-object/from16 v156, v15

    move/from16 v13, p4

    move-object v15, v6

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_3d

    :cond_56
    move-object v7, v2

    move-object/from16 v141, v3

    move-object/from16 v138, v5

    move-object/from16 v152, v13

    move-object/from16 v156, v15

    move/from16 v13, p4

    move-object v15, v6

    goto :goto_3d

    :cond_57
    move-object v7, v2

    move-wide/from16 v145, v4

    move-object/from16 v138, v9

    move-object/from16 v112, v10

    move-object/from16 v156, v15

    move-wide/from16 v9, v151

    move-object v15, v6

    move-object/from16 v152, v13

    move/from16 v13, p4

    :goto_3d
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_59

    move-object/from16 v6, v40

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All partial wake locks:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v5, v0

    :goto_3e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_58

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/BatteryStats$TimerEntry;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "  Wake lock "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    move-object/from16 v2, v55

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v40, 0x0

    const-string v55, ": "

    move-object v0, v8

    move-object/from16 v137, v2

    move-wide v2, v9

    move-object/from16 v141, v4

    move-object/from16 v4, v40

    move/from16 v40, v5

    move/from16 v5, p4

    move-object/from16 v151, v6

    move-object/from16 v6, v55

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string v0, " realtime"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v40, 0x1

    move-object/from16 v55, v137

    move-object/from16 v6, v151

    goto :goto_3e

    :cond_58
    move/from16 v40, v5

    move-object/from16 v151, v6

    move-object/from16 v137, v55

    invoke-virtual/range {v151 .. v151}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_3f

    :cond_59
    move-object/from16 v151, v40

    move-object/from16 v137, v55

    :goto_3f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5d

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All wakeup reasons:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v158, v4

    check-cast v158, Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v159, 0x0

    move-object/from16 v157, v3

    move-object/from16 v160, v2

    move-wide/from16 v161, v4

    invoke-direct/range {v157 .. v162}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_5a
    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v5, v0

    :goto_41
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_5b

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/BatteryStats$TimerEntry;

    const-string v55, ": "

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wakeup reason "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v141, 0x0

    const-string v155, ": "

    move-object v0, v8

    move-wide v2, v9

    move-object/from16 v157, v4

    move-object/from16 v4, v141

    move/from16 v141, v5

    move/from16 v5, p4

    move-object/from16 v158, v6

    move-object/from16 v6, v155

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string v0, " realtime"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v141, 0x1

    move-object/from16 v6, v158

    goto :goto_41

    :cond_5b
    move/from16 v141, v5

    move-object/from16 v158, v6

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_42

    :cond_5c
    move-object v7, v2

    move-wide/from16 v145, v4

    move-object/from16 v138, v9

    move-object/from16 v112, v10

    move-object/from16 v156, v15

    move-object/from16 v137, v55

    move-wide/from16 v9, v151

    move-object v15, v6

    move-object/from16 v152, v13

    move-object/from16 v151, v40

    move/from16 v13, p4

    :cond_5d
    :goto_42
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenWakeStats()Ljava/util/Map;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5f

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All screen wake reasons:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface/range {v40 .. v40}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Counter;

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "  "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_43

    :cond_5e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_61

    const-string v0, "  Memory Stats"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_44
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "  Bandwidth "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Time "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v9, v10, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_60
    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_45

    :cond_61
    const/4 v1, 0x0

    :goto_45
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_64

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Resource Power Manager Stats"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface/range {v48 .. v48}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_63

    invoke-interface/range {v48 .. v48}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move-object v5, v8

    move-object/from16 v8, p2

    move/from16 v55, v132

    move-wide/from16 v163, v145

    const/16 v75, 0x5

    move-wide/from16 v145, v127

    move-wide/from16 v127, v135

    move-wide/from16 v135, v153

    move-wide/from16 v153, v90

    move-wide/from16 v90, v92

    move-wide/from16 v92, v80

    move-wide/from16 v80, v96

    move-wide/from16 v96, v117

    move-wide/from16 v117, v102

    move-wide/from16 v102, v9

    const/4 v10, 0x1

    move-object v9, v5

    move-object/from16 v101, v7

    move v7, v10

    move/from16 v238, v100

    move-object/from16 v100, v51

    move/from16 v51, v238

    move-object v10, v4

    move/from16 v7, p5

    move-object/from16 v165, v12

    move-object/from16 v167, v112

    move-object/from16 v166, v137

    move-object/from16 v112, v6

    move/from16 v6, v75

    move-wide/from16 v238, v82

    move-object/from16 v83, v131

    move-wide/from16 v240, v80

    move-wide/from16 v81, v92

    move-wide/from16 v79, v78

    move-wide/from16 v92, v238

    move-wide/from16 v77, v76

    move-wide/from16 v75, v240

    move-wide/from16 v11, v102

    move v6, v13

    move/from16 v168, v72

    move-object/from16 v72, v4

    move-object/from16 v4, v152

    move/from16 v13, p4

    move-object/from16 v137, v0

    move v0, v1

    move-object/from16 v132, v2

    move-object v1, v14

    move-object/from16 v2, v156

    move-object/from16 v14, p3

    move-object/from16 v169, v15

    move/from16 v238, v109

    move-object/from16 v109, v108

    move/from16 v108, v238

    move-object v15, v3

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v11, p2

    move-object v14, v1

    move-object v8, v5

    move v13, v6

    move/from16 v132, v55

    move-object/from16 v7, v101

    move-wide/from16 v9, v102

    move-object/from16 v6, v112

    move-wide/from16 v102, v117

    move-object/from16 v12, v165

    move-object/from16 v112, v167

    move/from16 v72, v168

    move-object/from16 v15, v169

    move v1, v0

    move-wide/from16 v117, v96

    move-object/from16 v0, v137

    move-object/from16 v137, v166

    move-wide/from16 v96, v75

    move-wide/from16 v76, v77

    move-wide/from16 v78, v79

    move-wide/from16 v80, v81

    move-wide/from16 v82, v92

    move-wide/from16 v92, v90

    move-wide/from16 v90, v153

    move-wide/from16 v153, v135

    move-wide/from16 v135, v127

    move-wide/from16 v127, v145

    move-wide/from16 v145, v163

    move-object/from16 v238, v100

    move/from16 v100, v51

    move-object/from16 v51, v238

    move-object/from16 v239, v109

    move/from16 v109, v108

    move-object/from16 v108, v239

    goto/16 :goto_46

    :cond_62
    move v0, v1

    move-object/from16 v101, v7

    move-object v5, v8

    move-object/from16 v165, v12

    move-object v1, v14

    move-object/from16 v169, v15

    move/from16 v168, v72

    move-object/from16 v167, v112

    move/from16 v55, v132

    move-object/from16 v166, v137

    move-wide/from16 v163, v145

    move-object/from16 v4, v152

    move-object/from16 v2, v156

    move/from16 v7, p5

    move-object/from16 v112, v6

    move v6, v13

    move-wide/from16 v145, v127

    move-wide/from16 v127, v135

    move-wide/from16 v135, v153

    move-wide/from16 v153, v90

    move-wide/from16 v90, v92

    move-wide/from16 v92, v82

    move-object/from16 v83, v131

    move-wide/from16 v81, v80

    move-wide/from16 v79, v78

    move-wide/from16 v77, v76

    move-wide/from16 v75, v96

    move-wide/from16 v96, v117

    move-wide/from16 v117, v102

    move-wide/from16 v102, v9

    move/from16 v238, v100

    move-object/from16 v100, v51

    move/from16 v51, v238

    move/from16 v239, v109

    move-object/from16 v109, v108

    move/from16 v108, v239

    goto :goto_47

    :cond_63
    move v0, v1

    move-object/from16 v101, v7

    move-object v5, v8

    move-object/from16 v165, v12

    move-object v1, v14

    move-object/from16 v169, v15

    move/from16 v168, v72

    move-object/from16 v167, v112

    move/from16 v55, v132

    move-object/from16 v166, v137

    move-wide/from16 v163, v145

    move-object/from16 v4, v152

    move-object/from16 v2, v156

    move/from16 v7, p5

    move-object/from16 v112, v6

    move v6, v13

    move-wide/from16 v145, v127

    move-wide/from16 v127, v135

    move-wide/from16 v135, v153

    move-wide/from16 v153, v90

    move-wide/from16 v90, v92

    move-wide/from16 v92, v82

    move-object/from16 v83, v131

    move-wide/from16 v81, v80

    move-wide/from16 v79, v78

    move-wide/from16 v77, v76

    move-wide/from16 v75, v96

    move-wide/from16 v96, v117

    move-wide/from16 v117, v102

    move-wide/from16 v102, v9

    move/from16 v238, v100

    move-object/from16 v100, v51

    move/from16 v51, v238

    move/from16 v239, v109

    move-object/from16 v109, v108

    move/from16 v108, v239

    :goto_47
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_48

    :cond_64
    move v0, v1

    move-object/from16 v101, v7

    move-object v5, v8

    move-object/from16 v165, v12

    move-object v1, v14

    move-object/from16 v169, v15

    move/from16 v168, v72

    move-object/from16 v167, v112

    move/from16 v55, v132

    move-object/from16 v166, v137

    move-wide/from16 v163, v145

    move-object/from16 v4, v152

    move-object/from16 v2, v156

    move/from16 v7, p5

    move-object/from16 v112, v6

    move v6, v13

    move-wide/from16 v145, v127

    move-wide/from16 v127, v135

    move-wide/from16 v135, v153

    move-wide/from16 v153, v90

    move-wide/from16 v90, v92

    move-wide/from16 v92, v82

    move-object/from16 v83, v131

    move-wide/from16 v81, v80

    move-wide/from16 v79, v78

    move-wide/from16 v77, v76

    move-wide/from16 v75, v96

    move-wide/from16 v96, v117

    move-wide/from16 v117, v102

    move-wide/from16 v102, v9

    move/from16 v238, v100

    move-object/from16 v100, v51

    move/from16 v51, v238

    move/from16 v239, v109

    move-object/from16 v109, v108

    move/from16 v108, v239

    :goto_48
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v15

    const/4 v3, 0x0

    const-string v14, "\n"

    if-eqz v15, :cond_67

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, "  CPU scaling: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v8

    array-length v9, v8

    move v10, v0

    :goto_49
    if-ge v10, v9, :cond_66

    aget v11, v8, v10

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    policy"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v12

    array-length v13, v12

    :goto_4a
    if-ge v0, v13, :cond_65

    move-object/from16 v132, v8

    aget v8, v12, v0

    move/from16 v137, v9

    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    nop

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v132

    move/from16 v9, v137

    goto :goto_4a

    :cond_65
    move-object/from16 v132, v8

    move/from16 v137, v9

    add-int/lit8 v10, v10, 0x1

    const/4 v0, 0x0

    goto :goto_49

    :cond_66
    move-object/from16 v13, p2

    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move v11, v3

    goto :goto_4b

    :cond_67
    move-object/from16 v13, p2

    move v11, v3

    :goto_4b
    const/4 v0, 0x0

    move v12, v0

    :goto_4c
    move/from16 v10, v144

    if-ge v12, v10, :cond_f3

    move-object/from16 v9, v142

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ltz v7, :cond_68

    if-eq v8, v7, :cond_68

    const/16 v0, 0x3e8

    if-eq v8, v0, :cond_68

    move-object/from16 v214, v2

    move-object v0, v5

    move-object/from16 v142, v9

    move/from16 v144, v10

    move/from16 v141, v11

    move-object v3, v13

    move-object/from16 v232, v14

    move-object/from16 v224, v15

    move-wide/from16 v226, v102

    move-wide/from16 v217, v106

    move-wide/from16 v233, v139

    move-wide/from16 v195, v147

    move-wide/from16 v147, v163

    move-object/from16 v228, v166

    move-object/from16 v213, v167

    move-object/from16 v9, v169

    const/16 v131, 0x5

    move-object/from16 v167, v4

    move v11, v6

    move/from16 v102, v12

    move-object v12, v1

    goto/16 :goto_b3

    :cond_68
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v13, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, ":"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v132, 0x0

    move/from16 v137, v11

    move/from16 v141, v12

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    move-object/from16 v142, v9

    move/from16 v144, v10

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move/from16 v152, v8

    const/4 v0, 0x2

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const/4 v0, 0x3

    move-object/from16 v156, v14

    move-object/from16 v155, v15

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    const/4 v0, 0x4

    move-wide/from16 v157, v14

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    move-wide/from16 v159, v14

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    move-wide/from16 v161, v14

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    move-wide/from16 v170, v7

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    move-object/from16 v172, v2

    const/4 v0, 0x2

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const/4 v0, 0x3

    move-wide/from16 v173, v1

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    move-wide/from16 v175, v1

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v1

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v0

    move-object/from16 v178, v4

    move-object/from16 v177, v5

    move-wide/from16 v4, v102

    move-wide/from16 v102, v1

    move v2, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    move-wide/from16 v179, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v0

    move-wide/from16 v181, v0

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v1

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v0

    move/from16 v184, v0

    move/from16 v183, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v0

    move-wide/from16 v185, v0

    invoke-virtual {v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v0

    move-wide/from16 v187, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0

    move-wide/from16 v189, v4

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v4

    move-wide/from16 v191, v0

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v0

    cmp-long v193, v11, v49

    if-gtz v193, :cond_6a

    cmp-long v193, v9, v49

    if-gtz v193, :cond_6a

    cmp-long v193, v14, v49

    if-gtz v193, :cond_6a

    cmp-long v193, v7, v49

    if-lez v193, :cond_69

    goto :goto_4d

    :cond_69
    move-wide/from16 v193, v0

    move-object/from16 v1, p0

    goto :goto_4e

    :cond_6a
    :goto_4d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v193, v0

    const-string v0, "    Mobile network: "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent (packets "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " received, "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " sent)"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4e
    cmp-long v0, v102, v49

    if-gtz v0, :cond_6c

    if-lez v2, :cond_6b

    goto :goto_4f

    :cond_6b
    move-object/from16 v6, p3

    move-wide/from16 v195, v9

    move-wide/from16 v197, v147

    move-object/from16 v0, v177

    move-object/from16 v148, v178

    move-object/from16 v147, v3

    move-wide/from16 v177, v7

    move v3, v2

    move-wide/from16 v238, v102

    move-wide/from16 v102, v173

    move-wide/from16 v173, v11

    move-wide/from16 v11, v238

    goto/16 :goto_51

    :cond_6c
    :goto_4f
    move-object/from16 v0, v177

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v6, p3

    move-wide/from16 v238, v11

    move-wide/from16 v11, v173

    move-wide/from16 v173, v238

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v195, v9

    const-string v9, "    Mobile radio active: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v102, v16

    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v9, v172

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v147

    move-object/from16 v147, v3

    move-wide/from16 v238, v11

    move-wide/from16 v11, v102

    move-wide/from16 v102, v238

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v167

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-wide/from16 v197, v9

    move-object/from16 v9, v178

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v177, v14, v7

    cmp-long v10, v177, v49

    if-nez v10, :cond_6d

    const-wide/16 v177, 0x1

    move v10, v2

    move-wide/from16 v1, v177

    goto :goto_50

    :cond_6d
    move v10, v2

    move-wide/from16 v1, v177

    :goto_50
    move-object/from16 v167, v3

    const-string v3, " @ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v177, v7

    div-long v7, v11, v16

    long-to-double v7, v7

    move-object/from16 v148, v9

    move v3, v10

    long-to-double v9, v1

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mspp"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_51
    cmp-long v1, v4, v49

    if-lez v1, :cond_6e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Mobile radio AP wakeups: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    :cond_6e
    const/4 v1, 0x0

    :goto_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v147 .. v147}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    const-string v9, "Cellular"

    move-object v10, v0

    move/from16 v72, v3

    move-wide/from16 v2, v179

    move/from16 v1, v184

    move-wide/from16 v199, v187

    move-wide/from16 v201, v191

    move-wide/from16 v203, v193

    const/16 v131, 0x5

    move-wide/from16 v179, v14

    move-wide/from16 v14, v181

    move-wide/from16 v181, v11

    move-wide/from16 v11, v185

    move-object/from16 v0, p0

    move-object/from16 v6, p0

    move/from16 v206, v1

    move-wide/from16 v11, v175

    move-wide/from16 v175, v181

    move/from16 v205, v183

    move-object/from16 v1, p2

    move-wide/from16 v181, v14

    move-wide v14, v2

    move-object/from16 v3, v172

    move-object v2, v10

    move-object/from16 v172, v147

    move-object/from16 v147, v10

    move-object v10, v3

    move-object v3, v7

    move-wide/from16 v183, v4

    move-object/from16 v7, v148

    move-wide/from16 v207, v189

    move-object v4, v9

    move-object/from16 v9, v147

    move-object v5, v8

    move-object v8, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v170, v49

    if-gtz v0, :cond_70

    cmp-long v0, v157, v49

    if-gtz v0, :cond_70

    cmp-long v0, v102, v49

    if-gtz v0, :cond_70

    cmp-long v0, v11, v49

    if-lez v0, :cond_6f

    goto :goto_53

    :cond_6f
    move-wide/from16 v1, v102

    move-wide/from16 v3, v157

    move-wide/from16 v5, v170

    goto :goto_54

    :cond_70
    :goto_53
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Wi-Fi network: "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v170

    invoke-virtual {v8, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v157

    invoke-virtual {v8, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent (packets "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v102

    invoke-virtual {v13, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " received, "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " sent)"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_54
    cmp-long v0, v14, v49

    if-nez v0, :cond_75

    cmp-long v0, v181, v49

    if-nez v0, :cond_75

    move/from16 v0, v205

    if-nez v0, :cond_74

    move-wide/from16 v102, v11

    move/from16 v11, v206

    if-nez v11, :cond_73

    cmp-long v12, v185, v49

    if-nez v12, :cond_73

    move-wide/from16 v170, v5

    move-wide/from16 v5, v199

    cmp-long v12, v5, v49

    if-nez v12, :cond_72

    move-wide/from16 v157, v3

    move-wide/from16 v3, v201

    cmp-long v12, v3, v49

    if-eqz v12, :cond_71

    goto :goto_55

    :cond_71
    move-object/from16 v12, p3

    move-wide/from16 v147, v1

    move-wide/from16 v201, v3

    move-wide/from16 v187, v14

    move-wide/from16 v1, v207

    move-object v14, v13

    move-object/from16 v13, v167

    goto/16 :goto_56

    :cond_72
    move-wide/from16 v157, v3

    move-wide/from16 v3, v201

    goto :goto_55

    :cond_73
    move-wide/from16 v157, v3

    move-wide/from16 v170, v5

    move-wide/from16 v5, v199

    move-wide/from16 v3, v201

    goto :goto_55

    :cond_74
    move-wide/from16 v157, v3

    move-wide/from16 v170, v5

    move-wide/from16 v102, v11

    move-wide/from16 v5, v199

    move-wide/from16 v3, v201

    move/from16 v11, v206

    goto :goto_55

    :cond_75
    move-wide/from16 v157, v3

    move-wide/from16 v170, v5

    move-wide/from16 v102, v11

    move-wide/from16 v5, v199

    move-wide/from16 v3, v201

    move/from16 v0, v205

    move/from16 v11, v206

    :goto_55
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v12, p3

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v147, v1

    const-string v1, "    Wifi Running: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v3, v16

    invoke-static {v9, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v163

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "    Full Wifi Lock: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v201, v3

    div-long v3, v14, v16

    invoke-static {v9, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\n"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Wifi Scan (blamed): "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v181, v16

    invoke-static {v9, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v181

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v167

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    nop

    const-string/jumbo v1, "x\n"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wifi Scan (actual): "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v185, v16

    invoke-static {v9, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v187, v14

    move-wide/from16 v1, v207

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v14

    move-wide/from16 v3, v185

    invoke-virtual {v8, v3, v4, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "x\n"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "    Background Wifi Scan: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v5, v16

    invoke-static {v9, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v8, v1, v2, v14}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v3

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v14, p2

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_56
    move-wide/from16 v3, v203

    cmp-long v15, v3, v49

    if-lez v15, :cond_76

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "    WiFi AP wakeups: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_76
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v205, v0

    const-string v0, "  "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v167

    const-string v189, "WiFi"

    move/from16 v190, v205

    move-object/from16 v0, p0

    move-object/from16 v191, v10

    move/from16 v206, v11

    move-wide v10, v1

    move-wide/from16 v238, v147

    move-wide/from16 v147, v163

    move-wide/from16 v163, v238

    move-object/from16 v1, p2

    move-object v2, v9

    move-wide/from16 v199, v3

    move-wide/from16 v192, v201

    move-object v3, v15

    move-object/from16 v4, v189

    move-wide/from16 v201, v5

    move-object/from16 v5, v167

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v159, v49

    if-gtz v0, :cond_78

    cmp-long v0, v161, v49

    if-lez v0, :cond_77

    goto :goto_57

    :cond_77
    move-wide/from16 v5, v159

    move-wide/from16 v2, v161

    goto :goto_58

    :cond_78
    :goto_57
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Bluetooth network: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v159

    invoke-virtual {v8, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v2, v161

    invoke-virtual {v8, v2, v3}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_58
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    const-string v4, " times)"

    if-eqz v15, :cond_90

    move/from16 v1, p4

    invoke-virtual {v15, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v159

    add-long v159, v159, v18

    move-wide/from16 v161, v2

    div-long v2, v159, v16

    cmp-long v0, v2, v49

    if-eqz v0, :cond_8f

    invoke-virtual {v15, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    move-wide/from16 v159, v5

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_79

    invoke-virtual {v5, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    goto :goto_59

    :cond_79
    const/4 v6, 0x0

    :goto_59
    move-object/from16 v167, v7

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getBluetoothDutyScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_7a

    invoke-virtual {v7, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v203

    add-long v203, v203, v18

    div-long v203, v203, v16

    goto :goto_5a

    :cond_7a
    move-wide/from16 v203, v49

    :goto_5a
    move-wide/from16 v207, v203

    move-wide/from16 v203, v10

    move-wide/from16 v10, v106

    move-object/from16 v106, v13

    invoke-virtual {v15, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    if-eqz v5, :cond_7b

    invoke-virtual {v5, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_5b

    :cond_7b
    move-wide/from16 v209, v49

    :goto_5b
    move-wide/from16 v211, v209

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v107

    if-eqz v107, :cond_7c

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    goto :goto_5c

    :cond_7c
    const/4 v8, 0x0

    :goto_5c
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v107

    if-eqz v107, :cond_7d

    move/from16 v107, v8

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    goto :goto_5d

    :cond_7d
    move/from16 v107, v8

    const/4 v8, 0x0

    :goto_5d
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_5e

    :cond_7e
    move-wide/from16 v209, v49

    :goto_5e
    move-wide/from16 v213, v209

    if-eqz v1, :cond_7f

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_5f

    :cond_7f
    move-wide/from16 v209, v49

    :goto_5f
    move-wide/from16 v215, v209

    nop

    move-object/from16 v189, v1

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_80

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_60

    :cond_80
    move-wide/from16 v209, v49

    :goto_60
    move-wide/from16 v217, v209

    if-eqz v1, :cond_81

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_61

    :cond_81
    move-wide/from16 v209, v49

    :goto_61
    move-wide/from16 v219, v209

    move-wide/from16 v209, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Bluetooth Duty Scan (total actual realtime with duty): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v207

    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz v7, :cond_82

    invoke-virtual {v7}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v194

    if-eqz v194, :cond_82

    move-object/from16 v194, v7

    const-string v7, " (currently running)"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_82
    move-object/from16 v194, v7

    :goto_62
    move-object/from16 v7, v156

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v156, v13, v2

    if-eqz v156, :cond_84

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v207, v10

    const-string v10, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v10

    if-eqz v10, :cond_83

    const-string v10, " (currently running)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_84
    move-wide/from16 v207, v10

    :goto_63
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v10

    if-eqz v10, :cond_85

    const-string v10, " (currently running)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_85
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v211

    cmp-long v156, v10, v49

    if-gtz v156, :cond_87

    if-lez v6, :cond_86

    goto :goto_64

    :cond_86
    move/from16 v156, v0

    goto :goto_65

    :cond_87
    :goto_64
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v156, v0

    const-string v0, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_88

    invoke-virtual {v5}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, " (currently running in background)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_88
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_65
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Bluetooth Scan Results: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v107

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    nop

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in background)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v211, v2

    move-wide/from16 v2, v213

    cmp-long v0, v2, v49

    if-gtz v0, :cond_8a

    move-object/from16 v205, v4

    move-object v0, v5

    move-wide/from16 v4, v217

    cmp-long v213, v4, v49

    if-lez v213, :cond_89

    goto :goto_66

    :cond_89
    move-object/from16 v213, v0

    move-wide/from16 v217, v2

    move-wide/from16 v214, v215

    move-wide/from16 v2, v219

    goto/16 :goto_68

    :cond_8a
    move-object/from16 v205, v4

    move-object v0, v5

    move-wide/from16 v4, v217

    :goto_66
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v213, v0

    const-string v0, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v217, v2

    move-wide/from16 v2, v215

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v0, v165

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v189, :cond_8c

    invoke-virtual/range {v189 .. v189}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v165

    if-eqz v165, :cond_8b

    move-wide/from16 v214, v2

    const-string v2, " (currently running unoptimized)"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_8b
    move-wide/from16 v214, v2

    goto :goto_67

    :cond_8c
    move-wide/from16 v214, v2

    :goto_67
    if-eqz v1, :cond_8e

    cmp-long v2, v4, v49

    if-lez v2, :cond_8e

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, " (max "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v219

    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v165

    if-eqz v165, :cond_8d

    move-object/from16 v165, v0

    const-string v0, " (currently running unoptimized in background)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_8d
    move-object/from16 v165, v0

    goto :goto_68

    :cond_8e
    move-object/from16 v165, v0

    move-wide/from16 v2, v219

    :goto_68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v219, v13

    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v132, 0x1

    goto :goto_69

    :cond_8f
    move-wide/from16 v211, v2

    move-object/from16 v205, v4

    move-wide/from16 v159, v5

    move-object/from16 v167, v7

    move-wide/from16 v203, v10

    move-wide/from16 v209, v106

    move-object/from16 v7, v156

    move-object/from16 v106, v13

    move-object v13, v14

    goto :goto_69

    :cond_90
    move-wide/from16 v161, v2

    move-object/from16 v205, v4

    move-wide/from16 v159, v5

    move-object/from16 v167, v7

    move-wide/from16 v203, v10

    move-wide/from16 v209, v106

    move-object/from16 v7, v156

    move-object/from16 v106, v13

    move-object v13, v14

    :goto_69
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    const-string v14, ", "

    if-eqz v0, :cond_94

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6a
    sget v2, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v1, v2, :cond_93

    move/from16 v2, p4

    move-object/from16 v11, v172

    invoke-virtual {v11, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v3

    if-eqz v3, :cond_92

    if-nez v0, :cond_91

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "    User activity: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_6b

    :cond_91
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6b
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v166

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    :cond_92
    move-object/from16 v10, v166

    :goto_6c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v166, v10

    move-object/from16 v172, v11

    goto :goto_6a

    :cond_93
    move/from16 v2, p4

    move-object/from16 v10, v166

    move-object/from16 v11, v172

    if-eqz v0, :cond_95

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6d

    :cond_94
    move/from16 v2, p4

    move-object/from16 v10, v166

    move-object/from16 v11, v172

    :cond_95
    :goto_6d
    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v8

    const-wide/16 v0, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v207, 0x0

    const/16 v107, 0x0

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v156

    const/16 v143, 0x1

    add-int/lit8 v156, v156, -0x1

    move-object/from16 v166, v10

    move-object/from16 v172, v11

    move-wide/from16 v10, v207

    move/from16 v238, v156

    move-object/from16 v156, v7

    move/from16 v7, v107

    move-object/from16 v107, v15

    move/from16 v15, v238

    move-wide/from16 v239, v0

    move-wide v0, v5

    move-wide/from16 v5, v239

    :goto_6e
    if-ltz v15, :cond_97

    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v189

    move-object/from16 v194, v14

    move-object/from16 v14, v189

    check-cast v14, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v189, ": "

    move-wide/from16 v207, v0

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wake lock "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v211, "full"

    move-wide/from16 v212, v10

    move-wide/from16 v10, v207

    move-object v0, v9

    move-wide v10, v3

    move v4, v2

    move-wide/from16 v2, v203

    move-object/from16 v214, v8

    move-object/from16 v221, v205

    move v8, v4

    move-object/from16 v4, v211

    move-wide/from16 v215, v10

    move-wide v10, v5

    move/from16 v5, p4

    move-object/from16 v6, v189

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v189

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v205

    const-string/jumbo v4, "partial"

    move-object v0, v9

    move-object/from16 v1, v205

    move-object/from16 v6, v189

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v189

    if-eqz v205, :cond_96

    invoke-virtual/range {v205 .. v205}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    goto :goto_6f

    :cond_96
    const/4 v0, 0x0

    :goto_6f
    move-object v1, v0

    const-string v4, "background partial"

    move-object v0, v9

    move-wide/from16 v2, v203

    move/from16 v5, p4

    move-object/from16 v6, v189

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v189

    const/4 v0, 0x2

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "window"

    move-object v0, v9

    move-object/from16 v6, v189

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v189

    const/16 v0, 0x12

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v4, "draw"

    move-object v0, v9

    move-object/from16 v6, v189

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " realtime"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v132, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    move-wide/from16 v3, v203

    invoke-static {v2, v3, v4, v8}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v1

    add-long v5, v10, v1

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    invoke-static {v2, v3, v4, v8}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v1

    add-long v1, v215, v1

    const/4 v10, 0x2

    invoke-virtual {v14, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    invoke-static {v11, v3, v4, v8}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v10

    add-long v10, v207, v10

    move-object/from16 v189, v0

    const/16 v0, 0x12

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-static {v0, v3, v4, v8}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v203

    add-long v203, v212, v203

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v14, v194

    move-object/from16 v205, v221

    move-wide/from16 v238, v1

    move v2, v8

    move-wide v0, v10

    move-wide/from16 v10, v203

    move-object/from16 v8, v214

    move-wide/from16 v203, v3

    move-wide/from16 v3, v238

    goto/16 :goto_6e

    :cond_97
    move-wide/from16 v207, v0

    move-wide/from16 v215, v3

    move-object/from16 v214, v8

    move-wide/from16 v212, v10

    move-object/from16 v194, v14

    move-wide/from16 v3, v203

    move-object/from16 v221, v205

    move v8, v2

    move-wide v10, v5

    const/4 v0, 0x1

    if-le v7, v0, :cond_a7

    const-wide/16 v0, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_99

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    nop

    move-wide/from16 v14, v209

    invoke-virtual {v2, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v0

    move-wide/from16 v203, v0

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_70

    :cond_98
    move-wide/from16 v209, v49

    :goto_70
    move-wide/from16 v5, v209

    move-wide/from16 v0, v203

    goto :goto_71

    :cond_99
    move-wide/from16 v14, v209

    :goto_71
    cmp-long v2, v0, v49

    if-nez v2, :cond_9b

    cmp-long v2, v5, v49

    if-nez v2, :cond_9b

    cmp-long v2, v10, v49

    if-nez v2, :cond_9b

    cmp-long v2, v215, v49

    if-nez v2, :cond_9b

    cmp-long v2, v207, v49

    if-eqz v2, :cond_9a

    goto :goto_72

    :cond_9a
    move-wide/from16 v203, v10

    move-object/from16 v2, v194

    move-wide/from16 v0, v212

    move-wide/from16 v10, v215

    move/from16 v194, v7

    goto/16 :goto_77

    :cond_9b
    :goto_72
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    TOTAL wake: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    cmp-long v189, v10, v49

    if-eqz v189, :cond_9c

    const/4 v2, 0x1

    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move/from16 v189, v2

    const-string v2, "full"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v189

    :cond_9c
    cmp-long v189, v215, v49

    if-eqz v189, :cond_9e

    if-eqz v2, :cond_9d

    move/from16 v189, v2

    move-object/from16 v2, v194

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_9d
    move/from16 v189, v2

    move-object/from16 v2, v194

    :goto_73
    const/16 v189, 0x1

    move-wide/from16 v203, v10

    move-wide/from16 v10, v215

    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move/from16 v194, v7

    const-string v7, "blamed partial"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_9e
    move/from16 v189, v2

    move-wide/from16 v203, v10

    move-object/from16 v2, v194

    move-wide/from16 v10, v215

    move/from16 v194, v7

    :goto_74
    cmp-long v7, v0, v49

    if-eqz v7, :cond_a0

    if-eqz v189, :cond_9f

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    const/16 v189, 0x1

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "actual partial"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a0
    cmp-long v7, v5, v49

    if-eqz v7, :cond_a2

    if-eqz v189, :cond_a1

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a1
    const/16 v189, 0x1

    invoke-static {v9, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "actual background partial"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a2
    cmp-long v7, v207, v49

    if-eqz v7, :cond_a4

    if-eqz v189, :cond_a3

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a3
    const/16 v189, 0x1

    move-wide/from16 v209, v0

    move-wide/from16 v0, v207

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v7, "window"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    :cond_a4
    move-wide/from16 v209, v0

    move-wide/from16 v0, v207

    :goto_75
    cmp-long v7, v212, v49

    if-eqz v7, :cond_a6

    if-eqz v189, :cond_a5

    const-string v7, ","

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a5
    const/16 v189, 0x1

    move-wide/from16 v207, v0

    move-wide/from16 v0, v212

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "draw"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :cond_a6
    move-wide/from16 v207, v0

    move-wide/from16 v0, v212

    :goto_76
    const-string v7, " realtime"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_77

    :cond_a7
    move-wide/from16 v203, v10

    move-object/from16 v2, v194

    move-wide/from16 v14, v209

    move-wide/from16 v0, v212

    move-wide/from16 v10, v215

    move/from16 v194, v7

    :goto_77
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_a9

    invoke-virtual {v5, v3, v4, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    move-wide/from16 v212, v0

    invoke-virtual {v5, v8}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    cmp-long v1, v6, v49

    if-lez v1, :cond_a8

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    WiFi Multicast Wakelock"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " count = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v209, v6, v18

    move/from16 v189, v0

    div-long v0, v209, v16

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_78

    :cond_a8
    move/from16 v189, v0

    goto :goto_78

    :cond_a9
    move-wide/from16 v212, v0

    :goto_78
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    :goto_79
    if-ltz v1, :cond_ae

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v7, v3, v4, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v209

    add-long v209, v209, v18

    move-object/from16 v189, v5

    div-long v5, v209, v16

    move-wide/from16 v215, v10

    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v10

    invoke-virtual {v7}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_aa

    invoke-virtual {v11, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_7a

    :cond_aa
    const-wide/16 v209, -0x1

    :goto_7a
    move-wide/from16 v217, v209

    if-eqz v11, :cond_ab

    invoke-virtual {v11, v8}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v205

    goto :goto_7b

    :cond_ab
    const/16 v205, -0x1

    :goto_7b
    move/from16 v209, v205

    move-object/from16 v210, v7

    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    Sync "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v169

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v169, v5, v49

    if-eqz v169, :cond_ad

    invoke-static {v9, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v169, v0

    const-string/jumbo v0, "realtime ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v221

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v219, v5

    move-wide/from16 v5, v217

    cmp-long v205, v5, v49

    if-lez v205, :cond_ac

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v217, v5

    const-string v5, "background ("

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v209

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_ac
    move-wide/from16 v217, v5

    move/from16 v5, v209

    goto :goto_7c

    :cond_ad
    move-object/from16 v169, v0

    move-wide/from16 v219, v5

    move/from16 v5, v209

    move-object/from16 v0, v221

    const-string v6, "(not used)"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v132, 0x1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v221, v0

    move-object/from16 v0, v169

    move-object/from16 v5, v189

    move-wide/from16 v10, v215

    move-object/from16 v169, v7

    goto/16 :goto_79

    :cond_ae
    move-object/from16 v189, v5

    move-wide/from16 v215, v10

    move-object/from16 v7, v169

    move-object/from16 v169, v0

    move-object/from16 v0, v221

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_7d
    if-ltz v5, :cond_b3

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v6, v3, v4, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    add-long v10, v10, v18

    div-long v10, v10, v16

    move-wide/from16 v209, v3

    invoke-virtual {v6, v8}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_af

    invoke-virtual {v4, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v217

    goto :goto_7e

    :cond_af
    const-wide/16 v217, -0x1

    :goto_7e
    move-wide/from16 v219, v217

    if-eqz v4, :cond_b0

    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v211

    goto :goto_7f

    :cond_b0
    const/16 v211, -0x1

    :goto_7f
    move/from16 v217, v211

    move-object/from16 v211, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Job "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v4, v10, v49

    if-eqz v4, :cond_b2

    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v4, "realtime ("

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v218, v3

    move-wide/from16 v3, v219

    cmp-long v219, v3, v49

    if-lez v219, :cond_b1

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v219, v1

    const-string v1, "background ("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v217

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    :cond_b1
    move-object/from16 v219, v1

    move/from16 v1, v217

    goto :goto_80

    :cond_b2
    move/from16 v218, v3

    move-wide/from16 v3, v219

    move-object/from16 v219, v1

    move/from16 v1, v217

    const-string v1, "(not used)"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_80
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v132, 0x1

    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v3, v209

    move-object/from16 v1, v219

    goto/16 :goto_7d

    :cond_b3
    move-object/from16 v219, v1

    move-wide/from16 v209, v3

    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_81
    if-ltz v3, :cond_b6

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    if-eqz v4, :cond_b5

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Job Completions "

    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_82
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_b4

    move-object/from16 v6, v166

    invoke-virtual {v13, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v10, v191

    invoke-virtual {v13, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-virtual {v13, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v11, "x)"

    invoke-virtual {v13, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_82

    :cond_b4
    move-object/from16 v6, v166

    move-object/from16 v10, v191

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_83

    :cond_b5
    move-object/from16 v6, v166

    move-object/from16 v10, v191

    :goto_83
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v166, v6

    move-object/from16 v191, v10

    goto :goto_81

    :cond_b6
    move-object/from16 v6, v166

    move-object/from16 v10, v191

    move-object/from16 v3, v172

    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_b7

    const-string v4, "    Jobs deferred on launch "

    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b7
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const-string v5, "Flashlight"

    move-object/from16 v11, p0

    move/from16 v166, v152

    move-object/from16 v172, v214

    move-object/from16 v152, v1

    move v1, v8

    move-object/from16 v8, p2

    move-object/from16 v191, v9

    move-wide/from16 v238, v195

    move-wide/from16 v195, v197

    move-wide/from16 v197, v238

    move-object/from16 v205, v2

    move-object/from16 v214, v10

    move-wide/from16 v211, v212

    move-object/from16 v213, v106

    move-object/from16 v106, v3

    move-wide v2, v14

    move-wide/from16 v14, v209

    move-wide/from16 v209, v207

    move-wide/from16 v207, v215

    move-object v10, v4

    move-object v4, v12

    move/from16 v222, v137

    move-wide/from16 v215, v185

    move-object/from16 v137, v6

    move-wide/from16 v185, v102

    move/from16 v102, v141

    move/from16 v103, v206

    const/4 v6, 0x0

    move-wide/from16 v238, v163

    move-wide/from16 v163, v173

    move-wide/from16 v173, v238

    move-wide v11, v14

    move/from16 v13, p4

    move-wide/from16 v217, v14

    move-object/from16 v15, v156

    move-wide/from16 v156, v157

    move-wide/from16 v158, v159

    move-wide/from16 v160, v161

    move-object/from16 v223, v205

    move-wide/from16 v238, v181

    move-wide/from16 v181, v187

    move-wide/from16 v187, v238

    move-object/from16 v14, p3

    move-object/from16 v225, v15

    move-object/from16 v224, v155

    move-object v15, v5

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    or-int v5, v132, v5

    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Camera"

    move-wide/from16 v11, v217

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Video"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Audio"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/4 v8, 0x0

    :goto_84
    if-ge v8, v14, :cond_c1

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move-object/from16 v13, v191

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Sensor "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v11

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_b8

    const-string v12, "GPS"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    :cond_b8
    const/16 v12, -0x2711

    if-ne v11, v12, :cond_b9

    const-string v12, "actualGPS"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    :cond_b9
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_85
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_c0

    move-object/from16 v132, v7

    move-wide/from16 v6, v217

    invoke-virtual {v12, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v205

    add-long v205, v205, v18

    move/from16 v141, v10

    move/from16 v155, v11

    div-long v10, v205, v16

    move/from16 v162, v14

    invoke-virtual {v12, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    move-object/from16 v191, v15

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    if-eqz v15, :cond_ba

    invoke-virtual {v15, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v205

    goto :goto_86

    :cond_ba
    const/16 v205, 0x0

    :goto_86
    move/from16 v206, v205

    move/from16 v205, v5

    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    if-eqz v15, :cond_bb

    invoke-virtual {v15, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v217

    goto :goto_87

    :cond_bb
    move-wide/from16 v217, v49

    :goto_87
    move-wide/from16 v220, v217

    cmp-long v217, v10, v49

    if-eqz v217, :cond_bf

    cmp-long v217, v4, v10

    if-eqz v217, :cond_bc

    invoke-static {v13, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v217, v2

    const-string v2, "blamed realtime, "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    :cond_bc
    move-wide/from16 v217, v2

    :goto_88
    invoke-static {v13, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "realtime ("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v220

    cmp-long v220, v2, v49

    if-nez v220, :cond_be

    move-wide/from16 v220, v4

    move/from16 v4, v206

    if-lez v4, :cond_bd

    goto :goto_89

    :cond_bd
    move-object/from16 v5, v223

    goto :goto_8a

    :cond_be
    move-wide/from16 v220, v4

    move/from16 v4, v206

    :goto_89
    move-object/from16 v5, v223

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v226, v2

    const-string v2, "background ("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_bf
    move-wide/from16 v217, v2

    move-wide/from16 v226, v220

    move-wide/from16 v220, v4

    move/from16 v4, v206

    move-object/from16 v5, v223

    const-string v2, "(not used)"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8a
    goto :goto_8b

    :cond_c0
    move/from16 v205, v5

    move-object/from16 v132, v7

    move/from16 v141, v10

    move/from16 v155, v11

    move/from16 v162, v14

    move-object/from16 v191, v15

    move-wide/from16 v6, v217

    move-object/from16 v5, v223

    move-wide/from16 v217, v2

    const-string v2, "(not used)"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, p3

    move-object/from16 v223, v5

    move/from16 v14, v162

    move-object/from16 v15, v191

    move v5, v2

    move-object/from16 v191, v13

    move-wide/from16 v2, v217

    move-wide/from16 v217, v6

    move-object/from16 v7, v132

    const/4 v6, 0x0

    goto/16 :goto_84

    :cond_c1
    move/from16 v205, v5

    move-object/from16 v132, v7

    move/from16 v162, v14

    move-object/from16 v13, v191

    move-wide/from16 v6, v217

    move-object/from16 v5, v223

    move-wide/from16 v217, v2

    move-object/from16 v191, v15

    move-object/from16 v3, p2

    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Vibrator"

    move-object/from16 v8, p2

    move-object v9, v13

    move-wide v11, v6

    move-object v0, v13

    move/from16 v13, p4

    move/from16 v2, v162

    move-object/from16 v14, p3

    move-object/from16 v4, v191

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v141, v205, v8

    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground activities"

    move-object/from16 v8, p2

    move-object v9, v0

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v141, v141, v8

    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground services"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v8, v141, v8

    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Uid;->hasSpeakerActivity()Z

    move-result v9

    if-eqz v9, :cond_c4

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v9, p3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Total speaker time per level:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_8c
    const/16 v12, 0x10

    if-ge v11, v12, :cond_c3

    move-object/from16 v12, v106

    invoke-virtual {v12, v11, v1}, Landroid/os/BatteryStats$Uid;->getSpeakerMediaTime(II)J

    move-result-wide v13

    div-long v13, v13, v16

    cmp-long v15, v13, v49

    if-nez v15, :cond_c2

    move/from16 v162, v2

    move-object/from16 v191, v4

    move-object/from16 v2, v137

    goto :goto_8d

    :cond_c2
    const/4 v10, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v162, v2

    move-object/from16 v2, v137

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v191, v4

    const-string v4, ":"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v137, v2

    move-object/from16 v106, v12

    move/from16 v2, v162

    move-object/from16 v4, v191

    goto :goto_8c

    :cond_c3
    move/from16 v162, v2

    move-object/from16 v191, v4

    move-object/from16 v12, v106

    move-object/from16 v2, v137

    if-eqz v10, :cond_c5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8e

    :cond_c4
    move-object/from16 v9, p3

    move/from16 v162, v2

    move-object/from16 v191, v4

    move-object/from16 v12, v106

    move-object/from16 v2, v137

    :cond_c5
    :goto_8e
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    :goto_8f
    const/4 v13, 0x7

    if-ge v4, v13, :cond_cb

    invoke-virtual {v12, v4, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v13

    cmp-long v15, v13, v49

    if-lez v15, :cond_ca

    add-long/2addr v10, v13

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "    "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v15, v15, v4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v205, v13, v18

    move-wide/from16 v220, v10

    div-long v10, v205, v16

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    if-nez v4, :cond_c9

    move/from16 v15, v168

    const/4 v10, 0x1

    if-le v15, v10, :cond_c8

    const/4 v10, 0x0

    :goto_90
    if-ge v10, v15, :cond_c7

    invoke-virtual {v12, v10, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getDisplayTopActivityTime(IJI)J

    move-result-wide v205

    cmp-long v11, v205, v49

    if-lez v11, :cond_c6

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v226, v6

    const-string v6, "      Display #"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, v132

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v228, v205, v18

    move-wide/from16 v230, v13

    div-long v13, v228, v16

    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91

    :cond_c6
    move-wide/from16 v226, v6

    move-wide/from16 v230, v13

    move-object/from16 v7, v132

    :goto_91
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v132, v7

    move-wide/from16 v6, v226

    move-wide/from16 v13, v230

    goto :goto_90

    :cond_c7
    move-wide/from16 v226, v6

    move-wide/from16 v230, v13

    move-object/from16 v7, v132

    goto :goto_92

    :cond_c8
    move-wide/from16 v226, v6

    move-wide/from16 v230, v13

    move-object/from16 v7, v132

    goto :goto_92

    :cond_c9
    move-wide/from16 v226, v6

    move-wide/from16 v230, v13

    move-object/from16 v7, v132

    move/from16 v15, v168

    :goto_92
    move-wide/from16 v10, v220

    goto :goto_93

    :cond_ca
    move-wide/from16 v226, v6

    move-wide/from16 v230, v13

    move-object/from16 v7, v132

    move/from16 v15, v168

    :goto_93
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v132, v7

    move/from16 v168, v15

    move-wide/from16 v6, v226

    goto/16 :goto_8f

    :cond_cb
    move-wide/from16 v226, v6

    move-object/from16 v7, v132

    move/from16 v15, v168

    cmp-long v4, v10, v49

    if-lez v4, :cond_cc

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Total running: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v13, v10, v18

    div-long v13, v13, v16

    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cc
    invoke-virtual {v12, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v13

    invoke-virtual {v12, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v205

    cmp-long v4, v13, v49

    if-gtz v4, :cond_ce

    cmp-long v4, v205, v49

    if-lez v4, :cond_cd

    goto :goto_94

    :cond_cd
    move v4, v8

    goto :goto_95

    :cond_ce
    :goto_94
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Total cpu time: u="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    div-long v8, v13, v16

    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "s="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v8, v205, v16

    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_95
    invoke-virtual {v12, v1}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v6

    if-eqz v6, :cond_d1

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, "    Total cpu time per freq:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    move/from16 v9, v222

    if-ne v9, v8, :cond_cf

    move-object/from16 v8, p0

    move/from16 v106, v4

    move-wide/from16 v220, v10

    move-object/from16 v10, v224

    move-object/from16 v4, p3

    invoke-direct {v8, v10, v6}, Landroid/os/BatteryStats;->getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v222, v13

    move/from16 v168, v15

    goto :goto_97

    :cond_cf
    move-object/from16 v8, p0

    move/from16 v106, v4

    move-wide/from16 v220, v10

    move-object/from16 v10, v224

    move-object/from16 v4, p3

    const/4 v11, 0x0

    :goto_96
    move-wide/from16 v222, v13

    array-length v13, v6

    if-ge v11, v13, :cond_d0

    const/16 v13, 0x20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v168, v15

    aget-wide v14, v6, v11

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v168

    move-wide/from16 v13, v222

    goto :goto_96

    :cond_d0
    move/from16 v168, v15

    :goto_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_98

    :cond_d1
    move-object/from16 v8, p0

    move/from16 v106, v4

    move-wide/from16 v220, v10

    move/from16 v168, v15

    move/from16 v9, v222

    move-object/from16 v10, v224

    move-object/from16 v4, p3

    move-wide/from16 v222, v13

    :goto_98
    invoke-virtual {v12, v1}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v11

    if-eqz v11, :cond_d4

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v13, "    Total screen-off cpu time per freq:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v13, v11

    if-ne v9, v13, :cond_d2

    invoke-direct {v8, v10, v11}, Landroid/os/BatteryStats;->getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v132, v6

    move-object v15, v7

    goto :goto_9a

    :cond_d2
    const/4 v13, 0x0

    :goto_99
    array-length v14, v11

    if-ge v13, v14, :cond_d3

    const/16 v14, 0x20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v132, v6

    move-object v15, v7

    aget-wide v6, v11, v13

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    move-object v7, v15

    move-object/from16 v6, v132

    goto :goto_99

    :cond_d3
    move-object/from16 v132, v6

    move-object v15, v7

    :goto_9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9b

    :cond_d4
    move-object/from16 v132, v6

    move-object v15, v7

    :goto_9b
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v6

    new-array v6, v6, [J

    const/4 v7, 0x0

    :goto_9c
    const/4 v13, 0x7

    if-ge v7, v13, :cond_db

    invoke-virtual {v12, v6, v7}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v13

    if-eqz v13, :cond_d7

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v13, "    Cpu times per freq at state "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v13, v6

    if-ne v9, v13, :cond_d5

    invoke-direct {v8, v10, v6}, Landroid/os/BatteryStats;->getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v137, v5

    goto :goto_9e

    :cond_d5
    const/4 v13, 0x0

    :goto_9d
    array-length v14, v6

    if-ge v13, v14, :cond_d6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v137, v5

    aget-wide v4, v6, v13

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, p3

    move-object/from16 v5, v137

    goto :goto_9d

    :cond_d6
    move-object/from16 v137, v5

    :goto_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9f

    :cond_d7
    move-object/from16 v137, v5

    :goto_9f
    invoke-virtual {v12, v6, v7}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v4

    if-eqz v4, :cond_da

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "    Screen-off cpu times per freq at state "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v4, v6

    if-ne v9, v4, :cond_d8

    invoke-direct {v8, v10, v6}, Landroid/os/BatteryStats;->getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    :cond_d8
    const/4 v4, 0x0

    :goto_a0
    array-length v5, v6

    if-ge v4, v5, :cond_d9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v13, v6, v4

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a0

    :cond_d9
    :goto_a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_da
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, p3

    move-object/from16 v5, v137

    goto/16 :goto_9c

    :cond_db
    move-object/from16 v137, v5

    nop

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_a2
    if-ltz v5, :cond_eb

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v13

    move/from16 v141, v9

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v8

    move-object/from16 v224, v10

    move-object/from16 v155, v11

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v10

    move-object/from16 v228, v2

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v2

    move-object/from16 v229, v6

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v6

    move-object/from16 v230, v15

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v15

    if-nez v1, :cond_dc

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v231

    goto :goto_a3

    :cond_dc
    const/16 v231, 0x0

    :goto_a3
    move/from16 v232, v231

    cmp-long v231, v13, v49

    if-nez v231, :cond_de

    cmp-long v231, v8, v49

    if-nez v231, :cond_de

    cmp-long v231, v10, v49

    if-nez v231, :cond_de

    if-nez v2, :cond_de

    move/from16 v1, v232

    if-nez v1, :cond_df

    if-nez v6, :cond_df

    if-eqz v15, :cond_dd

    goto :goto_a4

    :cond_dd
    move-object/from16 v231, v12

    move-object/from16 v12, p3

    move-object/from16 v238, v225

    move-object/from16 v225, v4

    move-object/from16 v4, v238

    goto/16 :goto_ad

    :cond_de
    move/from16 v1, v232

    :cond_df
    :goto_a4
    move-object/from16 v231, v12

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v232, v7

    const-string v7, "    Proc "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "      CPU: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v7, "usr + "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v7, "krn ; "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "fg"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_e1

    if-nez v6, :cond_e1

    if-eqz v15, :cond_e0

    goto :goto_a5

    :cond_e0
    move/from16 v233, v2

    move-object/from16 v7, v225

    move-object/from16 v225, v4

    goto :goto_a9

    :cond_e1
    :goto_a5
    move-object/from16 v7, v225

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v225, v4

    const-string v4, "      "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-eqz v2, :cond_e2

    const/4 v4, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v233, v2

    const-string v2, " starts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6

    :cond_e2
    move/from16 v233, v2

    :goto_a6
    if-eqz v6, :cond_e4

    if-eqz v4, :cond_e3

    move-object/from16 v2, v137

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a7

    :cond_e3
    move-object/from16 v2, v137

    :goto_a7
    const/4 v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v137, v4

    const-string v4, " crashes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v137

    goto :goto_a8

    :cond_e4
    move-object/from16 v2, v137

    :goto_a8
    if-eqz v15, :cond_e6

    if-eqz v4, :cond_e5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e5
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v137, v2

    const-string v2, " anrs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a9

    :cond_e6
    move-object/from16 v137, v2

    :goto_a9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_aa
    if-ge v2, v1, :cond_ea

    move-object/from16 v4, v232

    move/from16 v232, v1

    invoke-virtual {v4, v2}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v1

    if-eqz v1, :cond_e9

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v234, v4

    const-string v4, "      * Killed for "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    move/from16 v235, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_e7

    const-string v4, "cpu"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ab

    :cond_e7
    const-string/jumbo v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_ab
    const-string v4, " use: "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v4, v7

    iget-wide v6, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v6, v7, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, " over "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v6, v7, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-wide v6, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v6, v6, v49

    if-eqz v6, :cond_e8

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v236, 0x64

    mul-long v6, v6, v236

    move-wide/from16 v236, v8

    iget-wide v8, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, "%)"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ac

    :cond_e8
    move-wide/from16 v236, v8

    goto :goto_ac

    :cond_e9
    move-object/from16 v234, v4

    move/from16 v235, v6

    move-object v4, v7

    move-wide/from16 v236, v8

    :goto_ac
    add-int/lit8 v2, v2, 0x1

    move-object v7, v4

    move/from16 v1, v232

    move-object/from16 v232, v234

    move/from16 v6, v235

    move-wide/from16 v8, v236

    goto :goto_aa

    :cond_ea
    move/from16 v235, v6

    move-object v4, v7

    move-wide/from16 v236, v8

    move-object/from16 v234, v232

    move/from16 v232, v1

    const/4 v1, 0x1

    move/from16 v106, v1

    :goto_ad
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v8, p0

    move/from16 v1, p4

    move/from16 v9, v141

    move-object/from16 v11, v155

    move-object/from16 v10, v224

    move-object/from16 v2, v228

    move-object/from16 v6, v229

    move-object/from16 v15, v230

    move-object/from16 v12, v231

    move-object/from16 v238, v225

    move-object/from16 v225, v4

    move-object/from16 v4, v238

    goto/16 :goto_a2

    :cond_eb
    move-object/from16 v228, v2

    move-object/from16 v229, v6

    move/from16 v141, v9

    move-object/from16 v224, v10

    move-object/from16 v155, v11

    move-object/from16 v231, v12

    move-object/from16 v230, v15

    move-object/from16 v12, p3

    move-object/from16 v238, v225

    move-object/from16 v225, v4

    move-object/from16 v4, v238

    nop

    invoke-virtual/range {v231 .. v231}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    :goto_ae
    if-ltz v2, :cond_f1

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Apk "

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_af
    if-ltz v8, :cond_ec

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "      Wakeup alarm "

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v9, v230

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Counter;

    move/from16 v11, p4

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " times"

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_af

    :cond_ec
    move/from16 v11, p4

    move-object/from16 v9, v230

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v13, 0x1

    sub-int/2addr v10, v13

    :goto_b0
    if-ltz v10, :cond_ef

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object v15, v6

    move-object/from16 v137, v7

    move-wide/from16 v6, v139

    invoke-virtual {v14, v6, v7, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v139

    invoke-virtual {v14, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v13

    move-object/from16 v230, v1

    invoke-virtual {v14, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v1

    cmp-long v232, v139, v49

    if-nez v232, :cond_ee

    if-nez v13, :cond_ee

    if-eqz v1, :cond_ed

    goto :goto_b1

    :cond_ed
    move-object/from16 v232, v4

    move-wide/from16 v233, v6

    goto :goto_b2

    :cond_ee
    :goto_b1
    move-object/from16 v232, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "      Service "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "        Created for: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v233, v6

    div-long v6, v139, v16

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v4, "uptime\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "        Starts: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", launches: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    move v5, v4

    :goto_b2
    add-int/lit8 v10, v10, -0x1

    move-object v6, v15

    move-object/from16 v7, v137

    move-object/from16 v1, v230

    move-object/from16 v4, v232

    move-wide/from16 v139, v233

    const/4 v13, 0x1

    goto/16 :goto_b0

    :cond_ef
    move-object/from16 v230, v1

    move-object/from16 v232, v4

    move-object v15, v6

    move-object/from16 v137, v7

    move-wide/from16 v233, v139

    if-nez v5, :cond_f0

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      (nothing executed)"

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f0
    const/16 v106, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v1, v230

    move-object/from16 v4, v232

    move-wide/from16 v139, v233

    move-object/from16 v230, v9

    goto/16 :goto_ae

    :cond_f1
    move/from16 v11, p4

    move-object/from16 v232, v4

    move-wide/from16 v233, v139

    move-object/from16 v9, v230

    move-object/from16 v230, v1

    if-nez v106, :cond_f2

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    (nothing executed)"

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f2
    :goto_b3
    add-int/lit8 v1, v102, 0x1

    move/from16 v7, p5

    move-object v5, v0

    move-object v13, v3

    move-object/from16 v169, v9

    move v6, v11

    move/from16 v11, v141

    move-wide/from16 v163, v147

    move-object/from16 v4, v167

    move-wide/from16 v147, v195

    move-object/from16 v167, v213

    move-object/from16 v2, v214

    move-wide/from16 v106, v217

    move-object/from16 v15, v224

    move-wide/from16 v102, v226

    move-object/from16 v166, v228

    move-object/from16 v14, v232

    move-wide/from16 v139, v233

    move-object/from16 v238, v12

    move v12, v1

    move-object/from16 v1, v238

    goto/16 :goto_4c

    :cond_f3
    return-void
.end method

.method public blacklist dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v1, p4, 0x18

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :cond_0
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    const/16 v5, 0x24

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10900000003L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000004L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_1

    nop

    const/4 v3, 0x0

    invoke-interface {p7, p0, v3}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v3

    new-instance v4, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    invoke-direct {v4, p1, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    invoke-direct {p0, v0, v3, p3, v4}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V

    invoke-direct {p0, v0, v3}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method final greylist-max-o formatBytesLocked(J)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double v1, p1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2fKB"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double v1, p1

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2fMB"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double v1, p1

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2fGB"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o formatRatioLocked(JJ)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-string v0, "--%"

    return-object v0

    :cond_0
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f%%"

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract blacklist getActiveRadioDurationMs(IIIJ)J
.end method

.method public abstract blacklist getActiveRxRadioDurationMs(IIJ)J
.end method

.method public abstract blacklist getActiveTxRadioDurationMs(IIIJ)J
.end method

.method public abstract greylist-max-o getBatteryRealtime(J)J
.end method

.method public abstract greylist getBatteryUptime(J)J
.end method

.method public abstract blacklist getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
.end method

.method public abstract greylist-max-o getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getBluetoothEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getBluetoothScanTime(JI)J
.end method

.method public abstract blacklist getCameraEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getCameraOnTime(JI)J
.end method

.method public abstract greylist-max-o getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract blacklist getCoverDisplayHighRefreshRateTime(JI)J
.end method

.method public abstract blacklist getCoverDisplayRefreshRateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract blacklist getCpuEnergyConsumptionUC()J
.end method

.method public abstract blacklist getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;
.end method

.method public abstract greylist-max-o getCurrentDailyStartTime()J
.end method

.method public abstract blacklist getCustomEnergyConsumerBatteryConsumptionUC()[J
.end method

.method public abstract blacklist getCustomEnergyConsumerNames()[Ljava/lang/String;
.end method

.method public abstract greylist-max-o getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract greylist-max-o getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getDeviceIdleModeCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdleModeTime(IJI)J
.end method

.method public abstract greylist-max-o getDeviceIdlingCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdlingTime(IJI)J
.end method

.method public abstract greylist-max-o getDischargeAmount(I)I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDoze()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract blacklist getDischargeAmountScreenDozeSinceChargePermil()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOff()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract blacklist getDischargeAmountScreenOffSinceChargeCoulombCounter()I
.end method

.method public abstract blacklist getDischargeAmountScreenOffSinceChargePermil()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOn()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract blacklist getDischargeAmountScreenOnSinceChargeCoulombCounter()I
.end method

.method public abstract blacklist getDischargeAmountScreenOnSinceChargePermil()I
.end method

.method public abstract blacklist getDischargeAmountSubScreenDozeSinceChargePermil()I
.end method

.method public abstract blacklist getDischargeAmountSubScreenOnSinceChargePermil()I
.end method

.method public abstract greylist-max-o getDischargeCurrentLevel()I
.end method

.method public abstract greylist-max-o getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDischargeStartLevel()I
.end method

.method public abstract blacklist getDisplayCount()I
.end method

.method public abstract blacklist getDisplayScreenBrightnessTime(IIJ)J
.end method

.method public abstract blacklist getDisplayScreenDozeTime(IJ)J
.end method

.method public abstract blacklist getDisplayScreenOnTime(IJ)J
.end method

.method public abstract greylist-max-o getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract greylist-max-o getEstimatedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getFlashlightOnCount(I)J
.end method

.method public abstract greylist-max-o getFlashlightOnTime(JI)J
.end method

.method public abstract greylist getGlobalWifiRunningTime(JI)J
.end method

.method public abstract blacklist getGnssEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getGpsBatteryDrainMaMs()J
.end method

.method public abstract greylist-max-o getGpsSignalQualityTime(IJI)J
.end method

.method public abstract greylist-max-o getHighDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolBytes()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolSize()I
.end method

.method public abstract greylist-max-o getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getHistoryTagPoolUid(I)I
.end method

.method public abstract greylist-max-o getHistoryTotalSize()I
.end method

.method public abstract greylist-max-o getHistoryUsedSize()I
.end method

.method public abstract greylist-max-o getInteractiveTime(JI)J
.end method

.method public abstract greylist-max-o getIsOnBattery()Z
.end method

.method public abstract greylist-max-o getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract greylist-max-o getLowDischargeAmountSinceCharge()I
.end method

.method public abstract blacklist getMainDisplayHighRefreshRateTime(JI)J
.end method

.method public abstract blacklist getMainDisplayRefreshRateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getMaxLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMinLearnedBatteryCapacity()I
.end method

.method public abstract blacklist getMobileActive5GTime(JI)J
.end method

.method public abstract blacklist getMobileActiveTime(JI)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveCount(I)I
.end method

.method public abstract greylist-max-p getMobileRadioActiveTime(JI)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract blacklist getMobileRadioEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract greylist-max-p getNetworkActivityBytes(II)J
.end method

.method public abstract greylist-max-o getNetworkActivityPackets(II)J
.end method

.method public abstract blacklist getNetworkModemControllerActivity()Landroid/os/BatteryStats$ModemActivityCounter;
.end method

.method public abstract greylist-max-o getNextMaxDailyDeadline()J
.end method

.method public abstract greylist-max-o getNextMinDailyDeadline()J
.end method

.method public abstract blacklist getNrNsaTime(J)J
.end method

.method public abstract greylist-max-o getNumConnectivityChange(I)I
.end method

.method public abstract greylist-max-o getParcelVersion()I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionCount(II)I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract blacklist getPhoneEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getPhoneOnCount(I)I
.end method

.method public abstract greylist getPhoneOnTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPhoneSignalStrengthCount(II)I
.end method

.method public abstract greylist getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract greylist-max-o getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract greylist-max-o getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getScreenAutoBrightnessTime(IJI)J
.end method

.method public abstract greylist getScreenBrightnessTime(IJI)J
.end method

.method public abstract greylist-max-o getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getScreenDozeCount(I)I
.end method

.method public abstract blacklist getScreenDozeEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getScreenDozeTime(JI)J
.end method

.method public abstract blacklist getScreenHighBrightnessTime(JI)J
.end method

.method public abstract greylist-max-o getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getScreenOnCount(I)I
.end method

.method public abstract blacklist getScreenOnEnergyConsumptionUC()J
.end method

.method public abstract blacklist getScreenOnGpsRunningTime(JI)J
.end method

.method public abstract greylist getScreenOnTime(JI)J
.end method

.method public abstract blacklist getScreenWakeStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Counter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSpeakerCallTime(II)J
.end method

.method public abstract blacklist getSpeakerMediaTime(II)J
.end method

.method public abstract greylist-max-o getStartClockTime()J
.end method

.method public abstract greylist-max-o getStartCount()I
.end method

.method public abstract greylist-max-o getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract blacklist getStatsStartRealtime()J
.end method

.method public abstract blacklist getSubScreenAutoBrightnessTime(IJI)J
.end method

.method public abstract blacklist getSubScreenBrightnessTime(IJI)J
.end method

.method public abstract blacklist getSubScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract blacklist getSubScreenDozeCount(I)I
.end method

.method public abstract blacklist getSubScreenDozeTime(JI)J
.end method

.method public abstract blacklist getSubScreenHighBrightnessTime(JI)J
.end method

.method public abstract blacklist getSubScreenOnCount(I)I
.end method

.method public abstract blacklist getSubScreenOnTime(JI)J
.end method

.method public abstract blacklist getSystemServiceTimeAtCpuSpeeds()[J
.end method

.method public abstract blacklist getTxPowerSharingTime(JI)J
.end method

.method public abstract blacklist getTxSharingDischargeAmount()J
.end method

.method public abstract greylist-max-o getUahDischarge(I)J
.end method

.method public abstract greylist-max-o getUahDischargeDeepDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeLightDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenOff(I)J
.end method

.method public abstract greylist getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getWakeLockStats()Landroid/os/WakeLockStats;
.end method

.method public abstract greylist-max-o getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getWifiActiveTime(JI)J
.end method

.method public abstract greylist-max-o getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getWifiEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockCount(I)I
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract greylist getWifiOnTime(JI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthCount(II)I
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiSupplStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiSupplStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o hasBluetoothActivityReporting()Z
.end method

.method public abstract greylist-max-o hasModemActivityReporting()Z
.end method

.method public abstract blacklist hasSpeakerOutPowerReporting()Z
.end method

.method public abstract greylist-max-o hasWifiActivityReporting()Z
.end method

.method public abstract blacklist isProcessStateDataAvailable()Z
.end method

.method public abstract blacklist iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
.end method

.method public greylist-max-o prepareForDumpLocked()V
    .locals 0

    return-void
.end method

.method blacklist printLatestBackupData(Ljava/io/PrintWriter;)V
    .locals 12

    const-string v0, "/data/log/batterystats/"

    const-string/jumbo v1, "newbatterystats"

    const-wide/16 v2, 0x0

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/batterystats/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    const-string v8, "/data/log/batterystats/newbatterystats"

    if-ge v7, v6, :cond_2

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v10, v2

    if-lez v8, :cond_1

    move-wide v2, v10

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    return-void

    :cond_3
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v9, "\nLatest newbatterystats:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    if-eqz v9, :cond_4

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v9

    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v10

    :try_start_8
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v8

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v9

    :try_start_a
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v7

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v8

    :try_start_c
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void

    :cond_5
    return-void
.end method

.method public abstract blacklist updateTxPowerSharing()V
.end method
