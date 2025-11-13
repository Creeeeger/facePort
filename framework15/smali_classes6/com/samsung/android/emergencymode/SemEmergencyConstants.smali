.class public Lcom/samsung/android/emergencymode/SemEmergencyConstants;
.super Ljava/lang/Object;
.source "SemEmergencyConstants.java"


# static fields
.field public static final blacklist ACTION:Ljava/lang/String; = "action"

.field public static final blacklist ALARM_ALLOW:I = 0x4

.field public static final blacklist ALLOWFLAG:Ljava/lang/String; = "allowflag"

.field public static final blacklist ALL_ALLOW:I = 0x7

.field public static final blacklist AUTHORITY:Ljava/lang/String; = "com.samsung.android.max.power.saving"

.field public static final whitelist BATTERY_CONSERVING_MODE:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BATTERY_CONSERVING_MODE_LAUNCHER:I = 0x2

.field public static final blacklist BLIND:I = 0x2

.field public static final blacklist CMD_UPDATE_TABLE:Ljava/lang/String; = "updatetable"

.field public static final blacklist DATABASE_VERSION:I = 0x1

.field public static final blacklist DEAF:I = 0x4

.field public static final whitelist DEFAULT_ALLOW:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DETECT:I = 0x80

.field public static final blacklist DISASTER:I = 0x100

.field public static final whitelist EMERGENCY_CALL:Ljava/lang/String; = "emcall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

.field public static final blacklist EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

.field public static final blacklist EMERGENCY_LAUNCHER:Ljava/lang/String; = "com.sec.android.emergencylauncher"

.field public static final blacklist EMERGENCY_LAUNCHER_CLASS:Ljava/lang/String; = "com.sec.android.emergencylauncher.LauncherActivity"

.field public static final blacklist EMERGENCY_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.android.emergency_manager_service"

.field public static final whitelist EMERGENCY_MODE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EMERGENCY_MODE_LAUNCHER:I = 0x0

.field public static final blacklist EMERGENCY_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.emergencymode.service"

.field public static final blacklist EMERGENCY_SERVICE_STARTER:Ljava/lang/String; = "com.sec.android.emergencymode.service.EmergencyServiceStarter"

.field public static final blacklist EMERGENCY_START_EMERGENCY_CHOICE_POPUP:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_START_CHOICE_POPUP"

.field public static final whitelist EMERGENCY_START_SERVICE_BY_ORDER:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EMERGENCY_START_SERVICE_BY_ORDER_OLD:Ljava/lang/String; = "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

.field public static final whitelist EMERGENCY_STATE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_USER_CANCELED:I = -0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ERR_CONFIGURING:I = -0xa

.field public static final blacklist ERR_GENERAL_FAILURE:I = -0x1

.field public static final blacklist ERR_INVALID_STATE:I = -0x4

.field public static final blacklist ERR_INVALID_TYPE:I = -0x3

.field public static final blacklist ERR_MODIFYING:I = -0x2

.field public static final blacklist ERR_NOT_FOUND_SERVICE:I = -0x5

.field public static final blacklist ERR_NULL_CONTEXT:I = -0x7

.field public static final blacklist ERR_ON_VTCALL:I = -0xb

.field public static final blacklist ERR_PERMISSION_DENIED:I = -0x6

.field public static final blacklist ERR_UNKNOWN_FAIL:I = -0x9

.field public static final blacklist EXTRA_CLEAR_BOOT_TIME:Ljava/lang/String; = "clearBootTime"

.field public static final blacklist EXTRA_EMERGENCY_START_SERVICE_ENABLE:Ljava/lang/String; = "enabled"

.field public static final blacklist EXTRA_EMERGENCY_START_SERVICE_FLAG:Ljava/lang/String; = "flag"

.field public static final blacklist EXTRA_EMERGENCY_START_SERVICE_SKIPDIALOG:Ljava/lang/String; = "skipdialog"

.field public static final blacklist EXTRA_INIT_FOR_EM_STATE:Ljava/lang/String; = "initForEMState"

.field public static final whitelist FIND_MY_MOBILE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FIND_MY_MOBILE_ALL:I = 0x440

.field public static final blacklist GPS_ACCURACY:Ljava/lang/String; = "GPS_ACCURACY"

.field public static final whitelist GPS_LATITUDE:Ljava/lang/String; = "GPS_LATITUDE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GPS_LONGITUDE:Ljava/lang/String; = "GPS_LONGITUDE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist HEATSENSING:Ljava/lang/String; = "heatsensing"

.field public static final blacklist MCC:Ljava/lang/String; = "mcc"

.field public static final blacklist MINIMAL_BATTERY_USE_LAUNCHER:I = 0x3

.field public static final whitelist MODE_DISABLED:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_DISABLING:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_ENABLED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_ENABLING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NORMAL:I = 0x1

.field public static final blacklist PKG:Ljava/lang/String; = "pkg"

.field public static final blacklist PREF:Ljava/lang/String; = "pref"

.field public static final blacklist PROVIDER:Ljava/lang/String; = "com.sec.android.provider.emergencymode"

.field public static final blacklist RECOVERY:I = 0xf

.field public static final blacklist RGBCMYArray:[I

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "emergency_service"

.field public static final blacklist SUCCESS:I = 0x1

.field public static final blacklist SVOICE:I = 0x20

.field public static final blacklist TABLE_ALARM:Ljava/lang/String; = "alarm"

.field public static final blacklist TABLE_DISABLED_PKG:Ljava/lang/String; = "blocklist"

.field public static final blacklist TABLE_ECCLIST:Ljava/lang/String; = "ecclist"

.field public static final blacklist TABLE_LAUNCHER_ADD:Ljava/lang/String; = "addlist"

.field public static final blacklist TABLE_LAUNCHER_DEFAULT:Ljava/lang/String; = "defaultallow"

.field public static final blacklist TABLE_PREF_SETTINGS:Ljava/lang/String; = "prefsettings"

.field public static final blacklist TABLE_WHITE_LIST:Ljava/lang/String; = "userallow"

.field public static final whitelist ULTRA_POWER_SAVING_MODE:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ULTRA_POWER_SAVING_MODE_ALL:I = 0x600

.field public static final whitelist ULTRA_POWER_SAVING_MODE_FIND_MY_MOBILE:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ULTRA_POWER_SAVING_MODE_LAUNCHER:I = 0x1

.field public static final blacklist URI_ALARM:Landroid/net/Uri;

.field public static final blacklist URI_DISABLEDPKG:Landroid/net/Uri;

.field public static final blacklist URI_ECCLIST:Landroid/net/Uri;

.field public static final blacklist URI_PREFSETTINGS:Landroid/net/Uri;

.field public static final blacklist URI_UPDATE_TABLE:Landroid/net/Uri;

.field public static final blacklist URI_WHITELIST:Landroid/net/Uri;

.field public static final blacklist USER_ALLOW:I = 0x2

.field public static final blacklist VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->RGBCMYArray:[I

    const-string v0, "content://com.samsung.android.max.power.saving/userallow"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_WHITELIST:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.max.power.saving/prefsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.max.power.saving/blocklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_DISABLEDPKG:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.max.power.saving/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_ALARM:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.max.power.saving/ecclist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_ECCLIST:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.max.power.saving/updatetable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_UPDATE_TABLE:Landroid/net/Uri;

    return-void

    :array_0
    .array-data 4
        0x4cb3
        0x4cb3
        0x4cb3
        0x9669
        0x9669
        0x9669
        0x1de2
        0x1de2
        0x1de2
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
