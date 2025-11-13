.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;,
        Landroid/os/PowerManager$ServiceType;,
        Landroid/os/PowerManager$LowPowerStandbyPolicy;,
        Landroid/os/PowerManager$LowPowerStandbyPortsLock;,
        Landroid/os/PowerManager$LowPowerStandbyPortDescription;,
        Landroid/os/PowerManager$OnThermalStatusChangedListener;,
        Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;,
        Landroid/os/PowerManager$WakeLockStateListener;,
        Landroid/os/PowerManager$LowPowerStandbyAllowedReason;,
        Landroid/os/PowerManager$ThermalStatus;,
        Landroid/os/PowerManager$AutoPowerSaveModeTriggers;,
        Landroid/os/PowerManager$SoundTriggerPowerSaveMode;,
        Landroid/os/PowerManager$LocationPowerSaveMode;,
        Landroid/os/PowerManager$ShutdownReason;,
        Landroid/os/PowerManager$SleepData;,
        Landroid/os/PowerManager$WakeData;,
        Landroid/os/PowerManager$GoToSleepReason;,
        Landroid/os/PowerManager$WakeReason;,
        Landroid/os/PowerManager$BrightnessConstraint;,
        Landroid/os/PowerManager$UserActivityEvent;
    }
.end annotation


# static fields
.field public static final whitelist ACQUIRE_CAUSES_WAKEUP:I = 0x10000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.DEVICE_IDLE_MODE_CHANGED"

.field public static final whitelist ACTION_DEVICE_LIGHT_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

.field public static final blacklist ACTION_ENHANCED_DISCHARGE_PREDICTION_CHANGED:Ljava/lang/String; = "android.os.action.ENHANCED_DISCHARGE_PREDICTION_CHANGED"

.field public static final greylist-max-r ACTION_LIGHT_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_LOW_POWER_STANDBY_ENABLED_CHANGED:Ljava/lang/String; = "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

.field public static final whitelist ACTION_LOW_POWER_STANDBY_POLICY_CHANGED:Ljava/lang/String; = "android.os.action.LOW_POWER_STANDBY_POLICY_CHANGED"

.field public static final whitelist ACTION_LOW_POWER_STANDBY_PORTS_CHANGED:Ljava/lang/String; = "android.os.action.LOW_POWER_STANDBY_PORTS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final greylist-max-o ACTION_POWER_SAVE_MODE_CHANGED_INTERNAL:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

.field public static final greylist-max-o ACTION_POWER_SAVE_TEMP_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

.field public static final greylist-max-o ACTION_POWER_SAVE_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

.field public static final blacklist ACTION_SCREEN_OFF_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

.field public static final blacklist ACTION_SCREEN_ON_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DEFAULT:I = 0x2

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DIM:I = 0x3

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DOZE:I = 0x4

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MAXIMUM:I = 0x1

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MINIMUM:I = 0x0

.field public static final greylist-max-o BRIGHTNESS_DEFAULT:I = -0x1

.field public static final blacklist BRIGHTNESS_INVALID:I = -0x1

.field public static final blacklist BRIGHTNESS_INVALID_FLOAT:F = NaNf

.field public static final blacklist BRIGHTNESS_MAX:F = 1.0f

.field public static final blacklist BRIGHTNESS_MIN:F = 0.0f

.field public static final greylist-max-o BRIGHTNESS_OFF:I = 0x0

.field public static final blacklist BRIGHTNESS_OFF_FLOAT:F = -1.0f

.field public static final greylist BRIGHTNESS_ON:I = 0xff

.field private static final blacklist CACHE_KEY_IS_INTERACTIVE_PROPERTY:Ljava/lang/String; = "cache_key.is_interactive"

.field private static final blacklist CACHE_KEY_IS_POWER_SAVE_MODE_PROPERTY:Ljava/lang/String; = "cache_key.is_power_save_mode"

.field public static final greylist-max-o DOZE_WAKE_LOCK:I = 0x40

.field public static final greylist-max-o DRAW_WAKE_LOCK:I = 0x80

.field public static final blacklist DUAL_SCREEN_STATE_INNER:I = 0x0

.field public static final blacklist DUAL_SCREEN_STATE_OUTER:I = 0x1

.field public static final blacklist DUAL_SCREEN_STATE_UNKNOWN:I = -0x1

.field public static final whitelist FEATURE_WAKE_ON_LAN_IN_LOW_POWER_STANDBY:Ljava/lang/String; = "com.android.lowpowerstandby.WAKE_ON_LAN"

.field public static final whitelist FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final blacklist GO_TO_SLEEP_FLAG_SOFT_SLEEP:I = 0x2

.field public static final greylist-max-o GO_TO_SLEEP_REASON_ACCESSIBILITY:I = 0x7

.field public static final greylist-max-o GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final blacklist GO_TO_SLEEP_REASON_COVER_CLOSE:I = 0x14

.field public static final greylist-max-o GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final blacklist GO_TO_SLEEP_REASON_DEVICE_FOLD:I = 0xd

.field public static final blacklist GO_TO_SLEEP_REASON_DEX_DUAL_DEFAULT_SCREEN_OFF:I = 0x15

.field public static final blacklist GO_TO_SLEEP_REASON_DISPLAY_GROUPS_TURNED_OFF:I = 0xc

.field public static final blacklist GO_TO_SLEEP_REASON_DISPLAY_GROUP_REMOVED:I = 0xb

.field public static final blacklist GO_TO_SLEEP_REASON_DOUBLE_TAP:I = 0x17

.field public static final blacklist GO_TO_SLEEP_REASON_EXTERNAL_KEYBOARD_META_L:I = 0x19

.field public static final blacklist GO_TO_SLEEP_REASON_FORCE_SUSPEND:I = 0x8

.field public static final greylist-max-o GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final blacklist GO_TO_SLEEP_REASON_INATTENTIVE:I = 0x9

.field public static final blacklist GO_TO_SLEEP_REASON_KEEP_SCREEN_OFF:I = 0x13

.field public static final greylist-max-o GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final blacklist GO_TO_SLEEP_REASON_MAX:I = 0x1a

.field public static final blacklist GO_TO_SLEEP_REASON_MIN:I = 0x0

.field public static final blacklist GO_TO_SLEEP_REASON_PALM_TOUCH_DOWN:I = 0x18

.field public static final greylist-max-o GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final blacklist GO_TO_SLEEP_REASON_PROXIMITY:I = 0x12

.field public static final blacklist GO_TO_SLEEP_REASON_PUT_DOWN_MOTION:I = 0x16

.field public static final blacklist GO_TO_SLEEP_REASON_QUIESCENT:I = 0xa

.field public static final greylist-max-o GO_TO_SLEEP_REASON_SLEEP_BUTTON:I = 0x6

.field public static final greylist GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final blacklist GO_TO_SLEEP_REASON_WAKE_UP_PREVENTION_ENABLED:I = 0x1a

.field public static final whitelist LOCATION_MODE_ALL_DISABLED_WHEN_SCREEN_OFF:I = 0x2

.field public static final whitelist LOCATION_MODE_FOREGROUND_ONLY:I = 0x3

.field public static final whitelist LOCATION_MODE_GPS_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field public static final whitelist LOCATION_MODE_NO_CHANGE:I = 0x0

.field public static final whitelist LOCATION_MODE_THROTTLE_REQUESTS_WHEN_SCREEN_OFF:I = 0x4

.field public static final whitelist LOW_POWER_STANDBY_ALLOWED_REASON_ONGOING_CALL:I = 0x4

.field public static final whitelist LOW_POWER_STANDBY_ALLOWED_REASON_TEMP_POWER_SAVE_ALLOWLIST:I = 0x2

.field public static final whitelist LOW_POWER_STANDBY_ALLOWED_REASON_VOICE_INTERACTION:I = 0x1

.field private static final blacklist MAX_CACHE_ENTRIES:I = 0x1

.field public static final blacklist MAX_LOCATION_MODE:I = 0x4

.field public static final blacklist MAX_SOUND_TRIGGER_MODE:I = 0x2

.field private static final blacklist MINIMUM_HEADROOM_TIME_MILLIS:I = 0x1f4

.field public static final blacklist MIN_LOCATION_MODE:I = 0x0

.field public static final blacklist MIN_SOUND_TRIGGER_MODE:I = 0x0

.field public static final whitelist ON_AFTER_RELEASE:I = 0x20000000

.field public static final whitelist PARTIAL_WAKE_LOCK:I = 0x1

.field public static final whitelist POWER_SAVE_MODE_TRIGGER_DYNAMIC:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist POWER_SAVE_MODE_TRIGGER_PERCENTAGE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final blacklist RAMP_SPEED_INVALID_FLOAT:F = NaNf

.field public static final greylist-max-o REBOOT_QUIESCENT:Ljava/lang/String; = "quiescent"

.field public static final greylist-max-o REBOOT_RECOVERY:Ljava/lang/String; = "recovery"

.field public static final greylist-max-o REBOOT_RECOVERY_UPDATE:Ljava/lang/String; = "recovery-update"

.field public static final greylist-max-o REBOOT_REQUESTED_BY_DEVICE_OWNER:Ljava/lang/String; = "deviceowner"

.field public static final greylist-max-o REBOOT_SAFE_MODE:Ljava/lang/String; = "safemode"

.field public static final whitelist REBOOT_USERSPACE:Ljava/lang/String; = "userspace"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o RELEASE_FLAG_TIMEOUT:I = 0x10000

.field public static final whitelist RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY:I = 0x1

.field public static final whitelist SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCREEN_TIMEOUT_OVERRIDE_WAKE_LOCK:I = 0x100

.field public static final whitelist SEM_BRIGHTNESS_INVALID:I = -0x1

.field public static final whitelist SEM_BRIGHTNESS_ON:I = 0xff

.field public static final whitelist SEM_GO_TO_SLEEP_REASON_DOUBLE_TAP:I = 0x17

.field public static final greylist-max-o SHUTDOWN_BATTERY_THERMAL_STATE:Ljava/lang/String; = "thermal,battery"

.field public static final blacklist SHUTDOWN_BIXBY_REQUESTED:Ljava/lang/String; = "bixbyrequest"

.field public static final greylist-max-o SHUTDOWN_LOW_BATTERY:Ljava/lang/String; = "battery"

.field public static final greylist-max-o SHUTDOWN_REASON_BATTERY_THERMAL:I = 0x6

.field public static final greylist-max-o SHUTDOWN_REASON_LOW_BATTERY:I = 0x5

.field public static final greylist-max-o SHUTDOWN_REASON_REBOOT:I = 0x2

.field public static final greylist-max-o SHUTDOWN_REASON_SHUTDOWN:I = 0x1

.field public static final greylist-max-o SHUTDOWN_REASON_THERMAL_SHUTDOWN:I = 0x4

.field public static final greylist-max-o SHUTDOWN_REASON_UNKNOWN:I = 0x0

.field public static final greylist-max-o SHUTDOWN_REASON_USER_REQUESTED:I = 0x3

.field public static final blacklist SHUTDOWN_THERMAL_STATE:Ljava/lang/String; = "thermal"

.field public static final greylist-max-o SHUTDOWN_USER_REQUESTED:Ljava/lang/String; = "userrequested"

.field public static final blacklist SILENT_RESET_EXCEPTION_MSG:Ljava/lang/String; = "NPE by silent reset. It\'s normal operation caused by device care"

.field public static final blacklist SILENT_RESET_PARAM:Ljava/lang/String; = "silent.sec"

.field public static final whitelist SOUND_TRIGGER_MODE_ALL_DISABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SOUND_TRIGGER_MODE_ALL_ENABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SOUND_TRIGGER_MODE_CRITICAL_ONLY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SYSTEM_WAKELOCK:I = -0x80000000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PowerManager"

.field public static final whitelist THERMAL_STATUS_CRITICAL:I = 0x4

.field public static final whitelist THERMAL_STATUS_EMERGENCY:I = 0x5

.field public static final whitelist THERMAL_STATUS_LIGHT:I = 0x1

.field public static final whitelist THERMAL_STATUS_MODERATE:I = 0x2

.field public static final whitelist THERMAL_STATUS_NONE:I = 0x0

.field public static final whitelist THERMAL_STATUS_SEVERE:I = 0x3

.field public static final whitelist THERMAL_STATUS_SHUTDOWN:I = 0x6

.field public static final greylist-max-o UNIMPORTANT_FOR_LOGGING:I = 0x40000000

.field public static final whitelist USER_ACTIVITY_EVENT_ACCESSIBILITY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_EVENT_ATTENTION:I = 0x4

.field public static final whitelist USER_ACTIVITY_EVENT_BUTTON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_EVENT_DEVICE_STATE:I = 0x6

.field public static final blacklist USER_ACTIVITY_EVENT_FACE_DOWN:I = 0x5

.field public static final whitelist USER_ACTIVITY_EVENT_OTHER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_ACTIVITY_EVENT_TOUCH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_FLAG_HOVER:I = 0x2000

.field public static final blacklist USER_ACTIVITY_FLAG_IME:I = 0x1000

.field public static final whitelist USER_ACTIVITY_FLAG_INDIRECT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_FLAG_INTERNALKEY:I = 0x8000

.field public static final blacklist USER_ACTIVITY_FLAG_NAVIBAR:I = 0x4000

.field public static final whitelist USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o WAKE_LOCK_LEVEL_MASK:I = 0xffff

.field public static final blacklist WAKE_REASON_APPLICATION:I = 0x2

.field public static final blacklist WAKE_REASON_APPLICATION_WINDOW_MANAGER_TURN_ON_FLAG:I = 0x6e

.field public static final blacklist WAKE_REASON_BIOMETRIC:I = 0x11

.field public static final blacklist WAKE_REASON_BIXBY:I = 0x70

.field public static final blacklist WAKE_REASON_CAMERA_LAUNCH:I = 0x5

.field public static final blacklist WAKE_REASON_CAMERA_LENS_COVER:I = 0x65

.field public static final blacklist WAKE_REASON_COVER_OPEN:I = 0x67

.field public static final blacklist WAKE_REASON_DEX_DUAL_DEFAULT_SCREEN_ON:I = 0x72

.field public static final blacklist WAKE_REASON_DISPLAY_GROUP_ADDED:I = 0xa

.field public static final blacklist WAKE_REASON_DISPLAY_GROUP_TURNED_ON:I = 0xb

.field public static final blacklist WAKE_REASON_DOCK:I = 0x69

.field public static final blacklist WAKE_REASON_DOUBLE_TAP:I = 0x71

.field public static final blacklist WAKE_REASON_DREAM:I = 0x68

.field public static final blacklist WAKE_REASON_DREAM_FINISHED:I = 0xd

.field public static final blacklist WAKE_REASON_EAR_JACK:I = 0x6a

.field public static final blacklist WAKE_REASON_FINGERPRINT:I = 0x6f

.field public static final blacklist WAKE_REASON_GESTURE:I = 0x4

.field public static final blacklist WAKE_REASON_HDMI:I = 0x8

.field public static final blacklist WAKE_REASON_LID:I = 0x9

.field public static final blacklist WAKE_REASON_LIFT:I = 0x10

.field public static final blacklist WAKE_REASON_PLUGGED_IN:I = 0x3

.field public static final blacklist WAKE_REASON_POWER_BUTTON:I = 0x1

.field public static final blacklist WAKE_REASON_PROXIMITY:I = 0x6d

.field public static final blacklist WAKE_REASON_SANDMAN:I = 0x6c

.field public static final blacklist WAKE_REASON_SENSOR_CA:I = 0x6b

.field public static final blacklist WAKE_REASON_SPEN:I = 0x66

.field public static final blacklist WAKE_REASON_TAP:I = 0xf

.field public static final blacklist WAKE_REASON_TILT:I = 0xe

.field public static final blacklist WAKE_REASON_UNFOLD_DEVICE:I = 0xc

.field public static final blacklist WAKE_REASON_UNKNOWN:I = 0x0

.field public static final blacklist WAKE_REASON_WAKE_KEY:I = 0x6

.field public static final blacklist WAKE_REASON_WAKE_MOTION:I = 0x7

.field public static final blacklist WAKE_REASON_WAKE_UP_PREVENTION_DISABLED:I = 0x73


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-p mHandler:Landroid/os/Handler;

.field private final blacklist mInteractiveCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/PowerManager$OnThermalStatusChangedListener;",
            "Landroid/os/IThermalStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPowerExemptionManager:Landroid/os/PowerExemptionManager;

.field private final blacklist mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mService:Landroid/os/IPowerManager;

.field private blacklist mThermalHeadroomThresholds:[F

.field private final blacklist mThermalHeadroomThresholdsLock:Ljava/lang/Object;

.field final blacklist mThermalService:Landroid/os/IThermalService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/IThermalService;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/PowerManager$1;

    const-string v1, "cache_key.is_power_save_mode"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Landroid/os/PowerManager$1;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/os/PowerManager;->mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v0, Landroid/os/PowerManager$2;

    const-string v1, "cache_key.is_interactive"

    invoke-direct {v0, p0, v2, v1}, Landroid/os/PowerManager$2;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/os/PowerManager;->mInteractiveCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mThermalHeadroomThresholdsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PowerManager;->mThermalHeadroomThresholds:[F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iput-object p3, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    iput-object p4, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist getPowerExemptionManager()Landroid/os/PowerExemptionManager;
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerExemptionManager;

    iput-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    return-object v0
.end method

.method public static blacklist invalidateIsInteractiveCaches()V
    .locals 1

    const-string v0, "cache_key.is_interactive"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist invalidatePowerSaveModeCaches()V
    .locals 1

    const-string v0, "cache_key.is_power_save_mode"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist isRebootingUserspaceSupportedImpl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist locationPowerSaveModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    return-object v0

    :pswitch_1
    const-string v0, "FOREGROUND_ONLY"

    return-object v0

    :pswitch_2
    const-string v0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    return-object v0

    :pswitch_3
    const-string v0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    return-object v0

    :pswitch_4
    const-string v0, "NO_CHANGE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "ALLOWED_REASON_VOICE_INTERACTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x2

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "ALLOWED_REASON_TEMP_POWER_SAVE_ALLOWLIST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x3

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "ALLOWED_REASON_ONGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x5

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sleepReasonToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "wake_up_prevention_enabled"

    return-object v0

    :pswitch_2
    const-string v0, "external_keyboard_meta_l"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "palm_touch_down"

    return-object v0

    :pswitch_4
    const-string v0, "double_tap"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "put_down_motion"

    return-object v0

    :pswitch_6
    const-string v0, "dex_dual_default_screen_off"

    return-object v0

    :pswitch_7
    const-string v0, "cover_close"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "keep_screen_off"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "proximity"

    return-object v0

    :pswitch_a
    const-string v0, "device_folded"

    return-object v0

    :pswitch_b
    const-string v0, "display_groups_turned_off"

    return-object v0

    :pswitch_c
    const-string v0, "display_group_removed"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "quiescent"

    return-object v0

    :pswitch_e
    const-string v0, "inattentive"

    return-object v0

    :pswitch_f
    const-string v0, "force_suspend"

    return-object v0

    :pswitch_10
    const-string v0, "accessibility"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "sleep_button"

    return-object v0

    :pswitch_12
    const-string v0, "hdmi"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "power_button"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "lid_switch"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "timeout"

    return-object v0

    :pswitch_16
    const-string v0, "device_admin"

    return-object v0

    :pswitch_17
    const-string v0, "application"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist userActivityEventToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "deviceState"

    return-object v0

    :pswitch_1
    const-string v0, "faceDown"

    return-object v0

    :pswitch_2
    const-string v0, "attention"

    return-object v0

    :pswitch_3
    const-string v0, "accessibility"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "touch"

    return-object v0

    :pswitch_5
    const-string v0, "button"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "other"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist userActivityFlagsToString(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NO_CHANGE_LIGHTS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INDIRECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HOVER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NAVIBAR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTERNALKEY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static greylist validateWakeLockParameters(ILjava/lang/String;)V
    .locals 2

    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    nop

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist wakeReasonToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "wake_up_prevention_disabled"

    return-object v0

    :sswitch_1
    const-string v0, "dex_dual_default_screen_on"

    return-object v0

    :sswitch_2
    const-string v0, "double_tap"

    return-object v0

    :sswitch_3
    const-string v0, "bixby"

    return-object v0

    :sswitch_4
    const-string v0, "fingerprint"

    return-object v0

    :sswitch_5
    const-string v0, "application_window_manager_turn_on_flag"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "proximity"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "sandman"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "sensor_ca"

    return-object v0

    :sswitch_9
    const-string v0, "ear_jack"

    return-object v0

    :sswitch_a
    const-string v0, "dock"

    return-object v0

    :sswitch_b
    const-string v0, "dream"

    return-object v0

    :sswitch_c
    const-string v0, "cover_open"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "spen"

    return-object v0

    :sswitch_e
    const-string v0, "camera_lens_cover"

    return-object v0

    :sswitch_f
    const-string v0, "biometric"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "lift"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "tap"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "tilt"

    return-object v0

    :sswitch_13
    const-string v0, "dream_finished"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "unfold_device"

    return-object v0

    :sswitch_15
    const-string v0, "display_group_turned_on"

    return-object v0

    :sswitch_16
    const-string v0, "display_group_added"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "lid"

    return-object v0

    :sswitch_18
    const-string v0, "hdmi"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "wake_motion"

    return-object v0

    :sswitch_1a
    const-string/jumbo v0, "wake_key"

    return-object v0

    :sswitch_1b
    const-string v0, "camera_launch"

    return-object v0

    :sswitch_1c
    const-string v0, "gesture"

    return-object v0

    :sswitch_1d
    const-string/jumbo v0, "plugged_in"

    return-object v0

    :sswitch_1e
    const-string v0, "application"

    return-object v0

    :sswitch_1f
    const-string/jumbo v0, "power_button"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "unknown"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_20
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_1c
        0x5 -> :sswitch_1b
        0x6 -> :sswitch_1a
        0x7 -> :sswitch_19
        0x8 -> :sswitch_18
        0x9 -> :sswitch_17
        0xa -> :sswitch_16
        0xb -> :sswitch_15
        0xc -> :sswitch_14
        0xd -> :sswitch_13
        0xe -> :sswitch_12
        0xf -> :sswitch_11
        0x10 -> :sswitch_10
        0x11 -> :sswitch_f
        0x65 -> :sswitch_e
        0x66 -> :sswitch_d
        0x67 -> :sswitch_c
        0x68 -> :sswitch_b
        0x69 -> :sswitch_a
        0x6a -> :sswitch_9
        0x6b -> :sswitch_8
        0x6c -> :sswitch_7
        0x6d -> :sswitch_6
        0x6e -> :sswitch_5
        0x6f -> :sswitch_4
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .locals 1

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    return-void
.end method

.method public whitelist addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .locals 3

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Listener already registered: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/PowerManager$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManager$3;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v1, v0}, Landroid/os/IThermalService;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Listener failed to set"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist areAutoPowerSaveModesEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->areAutoPowerSaveModesEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o boostScreenBrightness(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->boostScreenBrightness(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dream(J)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamByUserRequest(Landroid/content/Context;)V

    return-void
.end method

.method public blacklist forceLowPowerStandbyActive(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->forceLowPowerStandbyActive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist forceSuspend()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->forceSuspend()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getActiveLowPowerStandbyPorts()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getActiveLowPowerStandbyPorts()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->fromParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBatteryDischargePrediction()Ljava/time/Duration;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelDuration;->getDuration()Ljava/time/Duration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getBrightnessConstraint(I)F
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getBrightnessConstraint(I)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentBrightness(Z)F
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getCurrentBrightness(Z)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/high16 v1, -0x40800000    # -1.0f

    return v1
.end method

.method public whitelist getCurrentThermalStatus()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentThermalStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getDefaultScreenBrightnessSetting()I
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public whitelist getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getLastShutdownReason()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLastShutdownReason()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastSleepReason()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLastSleepReason()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastUserActivityTime(I)J
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getLastUserActivityTime(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLocationPowerSaveMode()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, v0, Landroid/os/PowerSaveState;->locationMode:I

    return v1
.end method

.method public whitelist getLowPowerStandbyPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLowPowerStandbyPolicy()Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMaximumScreenBrightnessExtended()I
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public greylist getMaximumScreenBrightnessSetting()I
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public greylist getMinimumScreenBrightnessSetting()I
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public blacklist getPackageNameOnScreenCurtain()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getPackageNameOnScreenCurtain()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPowerSaveModeTrigger()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getPowerSaveModeTrigger()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getPowerSaveState(I)Landroid/os/PowerSaveState;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoundTriggerPowerSaveMode()I
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, v0, Landroid/os/PowerSaveState;->soundTriggerMode:I

    return v1
.end method

.method public whitelist getThermalHeadroom(I)F
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const/high16 v4, 0x7fc00000    # Float.NaN

    return v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v4, p1}, Landroid/os/IThermalService;->getThermalHeadroom(I)F

    move-result v4

    iget-object v5, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public whitelist getThermalHeadroomThresholds()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalHeadroomThresholdsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalHeadroomThresholds:[F

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v1}, Landroid/os/IThermalService;->getThermalHeadroomThresholds()[F

    move-result-object v1

    iput-object v1, p0, Landroid/os/PowerManager;->mThermalHeadroomThresholds:[F

    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v2, :cond_2

    iget-object v4, p0, Landroid/os/PowerManager;->mThermalHeadroomThresholds:[F

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/os/PowerManager;->mThermalHeadroomThresholds:[F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWakeLockPackageList()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getWakeLockPackageList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist goToSleep(IJII)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IPowerManager;->goToSleepWithDisplayId(IJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist goToSleep(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public greylist goToSleep(JII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAllowedInLowPowerStandby(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isReasonAllowedInLowPowerStandby(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAllowedInLowPowerStandby(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isFeatureAllowedInLowPowerStandby(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientDisplayAvailable()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isAmbientDisplayAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientDisplaySuppressed()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isBatteryDischargePredictionPersonalized()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isBatteryDischargePredictionPersonalized()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isBatterySaverSupported()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isBatterySaverSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceIdleMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isDeviceIdleMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceLightIdleMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLightDeviceIdleMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isDozeAfterScreenOff()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isDozeAfterScreenOff()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isExemptFromLowPowerStandby()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isExemptFromLowPowerStandby()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isIgnoringBatteryOptimizations(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Landroid/os/PowerManager;->getPowerExemptionManager()Landroid/os/PowerExemptionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/PowerExemptionManager;->isAllowListed(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist isInteractive()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, v0}, Landroid/os/IPowerManager;->isInteractiveForDisplay(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isInteractive(I)Z
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mInteractiveCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isLightDeviceIdleMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceLightIdleMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isLowPowerStandbyEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLowPowerStandbyEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isLowPowerStandbySupported()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLowPowerStandbySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isPowerSaveMode()Z
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isRebootingUserspaceSupported()Z
    .locals 1

    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    return v0
.end method

.method public blacklist isScreenCurtainEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenCurtainEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method blacklist isScreenCurtainEntryAvailable()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenCurtainEntryAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isScreenOn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public whitelist isSustainedPerformanceModeSupported()Z
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWakeLockLevelSupported(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist nap(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist newLowPowerStandbyPortsLock(Ljava/util/List;)Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;)",
            "Landroid/os/PowerManager$LowPowerStandbyPortsLock;"
        }
    .end annotation

    new-instance v0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;

    invoke-direct {v0, p0, p1}, Landroid/os/PowerManager$LowPowerStandbyPortsLock;-><init>(Landroid/os/PowerManager;Ljava/util/List;)V

    return-object v0
.end method

.method public whitelist newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 7

    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    new-instance v6, Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public blacklist newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;
    .locals 7

    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    new-instance v6, Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public whitelist reboot(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "userspace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager;->isRebootingUserspaceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o rebootSafeMode()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->rebootSafeMode(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .locals 3

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IThermalStatusListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Listener was not added"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v1, v0}, Landroid/os/IThermalService;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    return-void

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Listener failed to remove"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist semGetMaximumScreenBrightnessSetting()I
    .locals 1

    invoke-virtual {p0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public whitelist semGetMaximumSubScreenBrightnessSetting()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public whitelist semGetMinimumScreenBrightnessSetting()I
    .locals 1

    invoke-virtual {p0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public whitelist semGoToSleep(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method

.method public whitelist semGoToSleep(JII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public whitelist semIsSubAutoBrightnessSupported()Z
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist semSetAutoBrightnessLimit(FF)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    nop

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move v0, v2

    iget-object v2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    return-void
.end method

.method public whitelist semSetAutoBrightnessLimit(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist semSetLcdFlashModeEnabled(ZLandroid/os/IBinder;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setLCDFlashMode(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist semWakeUp(JILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public whitelist setAdaptivePowerSaveEnabled(Z)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAdaptivePowerSaveEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAutoBrightnessLimit(IIZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist setBatteryDischargePrediction(Ljava/time/Duration;Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    new-instance v1, Landroid/os/ParcelDuration;

    invoke-direct {v1, p1}, Landroid/os/ParcelDuration;-><init>(Ljava/time/Duration;)V

    invoke-interface {v0, v1, p2}, Landroid/os/IPowerManager;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "time remaining must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCoverType(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setCoverType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public greylist-max-o setDozeAfterScreenOff(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setDozeAfterScreenOff(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDynamicPowerSaveHint(ZI)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setDynamicPowerSaveHint(ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEarlyWakeUp(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setEarlyWakeUp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setFreezingScreenBrightness(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setFreezingScreenBrightness(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setHdrBrightnessLimit(Landroid/os/IBinder;II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->setHdrBrightnessLimit(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist setLCDFlashMode(ZLandroid/os/IBinder;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setLCDFlashMode(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist setLowPowerStandbyActiveDuringMaintenance(Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setLowPowerStandbyActiveDuringMaintenance(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLowPowerStandbyEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setLowPowerStandbyEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLowPowerStandbyPolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-static {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->toParcelable(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setLowPowerStandbyPolicy(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMasterBrightnessLimit(III)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->setMasterBrightnessLimit(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist setPowerSaveModeEnabled(Z)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setPowerSaveModeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setScreenCurtainEnabled(Landroid/os/IBinder;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/PowerManager;->setScreenCurtainEnabled(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public blacklist setScreenCurtainEnabled(Landroid/os/IBinder;ZI)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->setScreenCurtainEnabled(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public greylist-max-o shutdown(ZLjava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist suppressAmbientDisplay(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist switchForceLcdBacklightOffState()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->switchForceLcdBacklightOffState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist updateCoverState(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->updateCoverState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist userActivity(JII)V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IPowerManager;->userActivity(IJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist userActivity(JZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    nop

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method

.method public greylist wakeUp(J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "wakeUp"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public blacklist wakeUp(JILjava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IPowerManager;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist wakeUp(JLjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
