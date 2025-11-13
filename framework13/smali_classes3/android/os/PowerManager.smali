.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;,
        Landroid/os/PowerManager$WakeLockStateListener;,
        Landroid/os/PowerManager$OnThermalStatusChangedListener;,
        Landroid/os/PowerManager$ThermalStatus;,
        Landroid/os/PowerManager$AutoPowerSaveModeTriggers;,
        Landroid/os/PowerManager$SoundTriggerPowerSaveMode;,
        Landroid/os/PowerManager$LocationPowerSaveMode;,
        Landroid/os/PowerManager$ServiceType;,
        Landroid/os/PowerManager$ShutdownReason;,
        Landroid/os/PowerManager$SleepData;,
        Landroid/os/PowerManager$WakeData;,
        Landroid/os/PowerManager$GoToSleepReason;,
        Landroid/os/PowerManager$WakeReason;,
        Landroid/os/PowerManager$BrightnessConstraint;
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

.field public static final whitelist ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final greylist-max-o ACTION_POWER_SAVE_MODE_CHANGED_INTERNAL:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

.field public static final greylist-max-o ACTION_POWER_SAVE_TEMP_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

.field public static final greylist-max-o ACTION_POWER_SAVE_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

.field public static final blacklist ACTION_SCREEN_OFF_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

.field public static final blacklist ACTION_SCREEN_ON_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DEFAULT:I = 0x2

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DEFAULT_VR:I = 0x7

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DIM:I = 0x3

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DOZE:I = 0x4

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MAXIMUM:I = 0x1

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MAXIMUM_VR:I = 0x6

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MINIMUM:I = 0x0

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MINIMUM_VR:I = 0x5

.field public static final greylist-max-o BRIGHTNESS_DEFAULT:I = -0x1

.field public static final blacklist BRIGHTNESS_INVALID:I = -0x1

.field public static final blacklist BRIGHTNESS_INVALID_FLOAT:F = NaNf

.field public static final blacklist BRIGHTNESS_MAX:F = 1.0f

.field public static final blacklist BRIGHTNESS_MIN:F = 0.0f

.field public static final greylist-max-o BRIGHTNESS_OFF:I = 0x0

.field public static final blacklist BRIGHTNESS_OFF_FLOAT:F = 0.0f

.field public static final greylist BRIGHTNESS_ON:I = 0xff

.field private static final blacklist CACHE_KEY_IS_INTERACTIVE_PROPERTY:Ljava/lang/String; = "cache_key.is_interactive"

.field private static final blacklist CACHE_KEY_IS_POWER_SAVE_MODE_PROPERTY:Ljava/lang/String; = "cache_key.is_power_save_mode"

.field public static final greylist-max-o DOZE_WAKE_LOCK:I = 0x40

.field public static final greylist-max-o DRAW_WAKE_LOCK:I = 0x80

.field public static final blacklist DUAL_SCREEN_STATE_INNER:I = 0x0

.field public static final blacklist DUAL_SCREEN_STATE_OUTER:I = 0x1

.field public static final blacklist DUAL_SCREEN_STATE_UNKNOWN:I = -0x1

.field public static final whitelist FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final greylist-max-o GO_TO_SLEEP_REASON_ACCESSIBILITY:I = 0x7

.field public static final greylist-max-o GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final blacklist GO_TO_SLEEP_REASON_COVER_CLOSE:I = 0x14

.field public static final greylist-max-o GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final blacklist GO_TO_SLEEP_REASON_DEVICE_FOLD:I = 0xd

.field public static final blacklist GO_TO_SLEEP_REASON_DEX_DUAL_DEFAULT_SCREEN_OFF:I = 0x15

.field public static final blacklist GO_TO_SLEEP_REASON_DISPLAY_GROUPS_TURNED_OFF:I = 0xc

.field public static final blacklist GO_TO_SLEEP_REASON_DISPLAY_GROUP_REMOVED:I = 0xb

.field public static final blacklist GO_TO_SLEEP_REASON_DOUBLE_TAP:I = 0x17

.field public static final blacklist GO_TO_SLEEP_REASON_FORCE_SUSPEND:I = 0x8

.field public static final greylist-max-o GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final blacklist GO_TO_SLEEP_REASON_INATTENTIVE:I = 0x9

.field public static final blacklist GO_TO_SLEEP_REASON_KEEP_SCREEN_OFF:I = 0x13

.field public static final greylist-max-o GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final blacklist GO_TO_SLEEP_REASON_MAX:I = 0x18

.field public static final blacklist GO_TO_SLEEP_REASON_MIN:I = 0x0

.field public static final blacklist GO_TO_SLEEP_REASON_PALM_TOUCH_DOWN:I = 0x18

.field public static final greylist-max-o GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final blacklist GO_TO_SLEEP_REASON_PROXIMITY:I = 0x12

.field public static final blacklist GO_TO_SLEEP_REASON_PUT_DOWN_MOTION:I = 0x16

.field public static final blacklist GO_TO_SLEEP_REASON_QUIESCENT:I = 0xa

.field public static final greylist-max-o GO_TO_SLEEP_REASON_SLEEP_BUTTON:I = 0x6

.field public static final greylist GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final whitelist LOCATION_MODE_ALL_DISABLED_WHEN_SCREEN_OFF:I = 0x2

.field public static final whitelist LOCATION_MODE_FOREGROUND_ONLY:I = 0x3

.field public static final whitelist LOCATION_MODE_GPS_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field public static final whitelist LOCATION_MODE_NO_CHANGE:I = 0x0

.field public static final whitelist LOCATION_MODE_THROTTLE_REQUESTS_WHEN_SCREEN_OFF:I = 0x4

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

.field public static final blacklist PRE_IDLE_TIMEOUT_MODE_LONG:I = 0x1

.field public static final blacklist PRE_IDLE_TIMEOUT_MODE_NORMAL:I = 0x0

.field public static final blacklist PRE_IDLE_TIMEOUT_MODE_SHORT:I = 0x2

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

.field public static final blacklist USER_ACTIVITY_EVENT_BUTTON_TOUCH:I = 0x7

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

.field public static final blacklist WAKE_REASON_PLUGGED_IN:I = 0x3

.field public static final blacklist WAKE_REASON_POWER_BUTTON:I = 0x1

.field public static final blacklist WAKE_REASON_PROXIMITY:I = 0x6d

.field public static final blacklist WAKE_REASON_SANDMAN:I = 0x6c

.field public static final blacklist WAKE_REASON_SENSOR_CA:I = 0x6b

.field public static final blacklist WAKE_REASON_SPEN:I = 0x66

.field public static final blacklist WAKE_REASON_UNFOLD_DEVICE:I = 0xc

.field public static final blacklist WAKE_REASON_UNKNOWN:I = 0x0

.field public static final blacklist WAKE_REASON_WAKE_KEY:I = 0x6

.field public static final blacklist WAKE_REASON_WAKE_MOTION:I = 0x7


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-p mHandler:Landroid/os/Handler;

.field private final blacklist mInteractiveCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Void;",
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

.field final blacklist mThermalService:Landroid/os/IThermalService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/IThermalService;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPowerManager;
    .param p3, "thermalService"    # Landroid/os/IThermalService;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1398
    new-instance v0, Landroid/os/PowerManager$1;

    const/4 v1, 0x1

    const-string v2, "cache_key.is_power_save_mode"

    invoke-direct {v0, p0, v1, v2}, Landroid/os/PowerManager$1;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/os/PowerManager;->mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;

    .line 1411
    new-instance v0, Landroid/os/PowerManager$2;

    const-string v2, "cache_key.is_interactive"

    invoke-direct {v0, p0, v1, v2}, Landroid/os/PowerManager$2;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/os/PowerManager;->mInteractiveCache:Landroid/app/PropertyInvalidatedCache;

    .line 1434
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    .line 2957
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1442
    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    .line 1443
    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 1444
    iput-object p3, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    .line 1445
    iput-object p4, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 1446
    return-void
.end method

.method private blacklist getPowerExemptionManager()Landroid/os/PowerExemptionManager;
    .locals 2

    .line 1449
    iget-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    if-nez v0, :cond_0

    .line 1451
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerExemptionManager;

    iput-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 1453
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    return-object v0
.end method

.method public static blacklist invalidateIsInteractiveCaches()V
    .locals 1

    .line 3979
    const-string v0, "cache_key.is_interactive"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3980
    return-void
.end method

.method public static blacklist invalidatePowerSaveModeCaches()V
    .locals 1

    .line 3972
    const-string v0, "cache_key.is_power_save_mode"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3973
    return-void
.end method

.method public static blacklist isRebootingUserspaceSupportedImpl()Z
    .locals 2

    .line 2192
    invoke-static {}, Landroid/sysprop/InitProperties;->is_userspace_reboot_supported()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist locationPowerSaveModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 1375
    packed-switch p0, :pswitch_data_0

    .line 1387
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1385
    :pswitch_0
    const-string v0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    return-object v0

    .line 1383
    :pswitch_1
    const-string v0, "FOREGROUND_ONLY"

    return-object v0

    .line 1381
    :pswitch_2
    const-string v0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    return-object v0

    .line 1379
    :pswitch_3
    const-string v0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    return-object v0

    .line 1377
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

.method public static blacklist sleepReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "sleepReason"    # I

    .line 592
    packed-switch p0, :pswitch_data_0

    .line 618
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 615
    :pswitch_1
    const-string/jumbo v0, "palm_touch_down"

    return-object v0

    .line 614
    :pswitch_2
    const-string v0, "double_tap"

    return-object v0

    .line 613
    :pswitch_3
    const-string/jumbo v0, "put_down_motion"

    return-object v0

    .line 612
    :pswitch_4
    const-string v0, "dex_dual_default_screen_off"

    return-object v0

    .line 611
    :pswitch_5
    const-string v0, "cover_close"

    return-object v0

    .line 610
    :pswitch_6
    const-string/jumbo v0, "keep_screen_off"

    return-object v0

    .line 609
    :pswitch_7
    const-string/jumbo v0, "proximity"

    return-object v0

    .line 596
    :pswitch_8
    const-string v0, "device_folded"

    return-object v0

    .line 598
    :pswitch_9
    const-string v0, "display_groups_turned_off"

    return-object v0

    .line 597
    :pswitch_a
    const-string v0, "display_group_removed"

    return-object v0

    .line 604
    :pswitch_b
    const-string/jumbo v0, "quiescent"

    return-object v0

    .line 601
    :pswitch_c
    const-string/jumbo v0, "inattentive"

    return-object v0

    .line 599
    :pswitch_d
    const-string v0, "force_suspend"

    return-object v0

    .line 593
    :pswitch_e
    const-string v0, "accessibility"

    return-object v0

    .line 605
    :pswitch_f
    const-string/jumbo v0, "sleep_button"

    return-object v0

    .line 600
    :pswitch_10
    const-string/jumbo v0, "hdmi"

    return-object v0

    .line 603
    :pswitch_11
    const-string/jumbo v0, "power_button"

    return-object v0

    .line 602
    :pswitch_12
    const-string/jumbo v0, "lid_switch"

    return-object v0

    .line 606
    :pswitch_13
    const-string/jumbo v0, "timeout"

    return-object v0

    .line 595
    :pswitch_14
    const-string v0, "device_admin"

    return-object v0

    .line 594
    :pswitch_15
    const-string v0, "application"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist validateWakeLockParameters(ILjava/lang/String;)V
    .locals 2
    .param p0, "levelAndFlags"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .line 1680
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 1690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1688
    :sswitch_0
    nop

    .line 1692
    if-eqz p1, :cond_0

    .line 1695
    return-void

    .line 1693
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
    .end sparse-switch
.end method

.method public static blacklist wakeReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "wakeReason"    # I

    .line 938
    sparse-switch p0, :sswitch_data_0

    .line 987
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 985
    :sswitch_0
    const-string v0, "dex_dual_default_screen_on"

    return-object v0

    .line 984
    :sswitch_1
    const-string v0, "double_tap"

    return-object v0

    .line 983
    :sswitch_2
    const-string v0, "bixby"

    return-object v0

    .line 982
    :sswitch_3
    const-string v0, "fingerprint"

    return-object v0

    .line 981
    :sswitch_4
    const-string v0, "application_window_manager_turn_on_flag"

    return-object v0

    .line 980
    :sswitch_5
    const-string/jumbo v0, "proximity"

    return-object v0

    .line 979
    :sswitch_6
    const-string/jumbo v0, "sandman"

    return-object v0

    .line 978
    :sswitch_7
    const-string/jumbo v0, "sensor_ca"

    return-object v0

    .line 977
    :sswitch_8
    const-string v0, "ear_jack"

    return-object v0

    .line 976
    :sswitch_9
    const-string v0, "dock"

    return-object v0

    .line 975
    :sswitch_a
    const-string v0, "dream"

    return-object v0

    .line 974
    :sswitch_b
    const-string v0, "cover_open"

    return-object v0

    .line 973
    :sswitch_c
    const-string/jumbo v0, "spen"

    return-object v0

    .line 972
    :sswitch_d
    const-string v0, "camera_lens_cover"

    return-object v0

    .line 970
    :sswitch_e
    const-string v0, "dream_finished"

    return-object v0

    .line 969
    :sswitch_f
    const-string/jumbo v0, "unfold_device"

    return-object v0

    .line 968
    :sswitch_10
    const-string v0, "display_group_turned_on"

    return-object v0

    .line 967
    :sswitch_11
    const-string v0, "display_group_added"

    return-object v0

    .line 966
    :sswitch_12
    const-string/jumbo v0, "lid"

    return-object v0

    .line 965
    :sswitch_13
    const-string/jumbo v0, "hdmi"

    return-object v0

    .line 964
    :sswitch_14
    const-string/jumbo v0, "wake_motion"

    return-object v0

    .line 963
    :sswitch_15
    const-string/jumbo v0, "wake_key"

    return-object v0

    .line 962
    :sswitch_16
    const-string v0, "camera_launch"

    return-object v0

    .line 961
    :sswitch_17
    const-string v0, "gesture"

    return-object v0

    .line 960
    :sswitch_18
    const-string/jumbo v0, "plugged_in"

    return-object v0

    .line 959
    :sswitch_19
    const-string v0, "application"

    return-object v0

    .line 958
    :sswitch_1a
    const-string/jumbo v0, "power_button"

    return-object v0

    .line 957
    :sswitch_1b
    const-string/jumbo v0, "unknown"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1b
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_19
        0x3 -> :sswitch_18
        0x4 -> :sswitch_17
        0x5 -> :sswitch_16
        0x6 -> :sswitch_15
        0x7 -> :sswitch_14
        0x8 -> :sswitch_13
        0x9 -> :sswitch_12
        0xa -> :sswitch_11
        0xb -> :sswitch_10
        0xc -> :sswitch_f
        0xd -> :sswitch_e
        0x65 -> :sswitch_d
        0x66 -> :sswitch_c
        0x67 -> :sswitch_b
        0x68 -> :sswitch_a
        0x69 -> :sswitch_9
        0x6a -> :sswitch_8
        0x6b -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x6e -> :sswitch_4
        0x6f -> :sswitch_3
        0x70 -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 2899
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2900
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 2901
    return-void
.end method

.method public whitelist addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 2911
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2912
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2913
    iget-object v0, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "Listener already registered: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2915
    new-instance v0, Landroid/os/PowerManager$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManager$3;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 2927
    .local v0, "internalListener":Landroid/os/IThermalStatusListener;
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v1, v0}, Landroid/os/IThermalService;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2928
    iget-object v1, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2934
    nop

    .line 2935
    return-void

    .line 2930
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Listener failed to set"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalListener":Landroid/os/IThermalStatusListener;
    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2932
    .restart local v0    # "internalListener":Landroid/os/IThermalStatusListener;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    :catch_0
    move-exception v1

    .line 2933
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o boostScreenBrightness(J)V
    .locals 2
    .param p1, "time"    # J

    .line 2094
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->boostScreenBrightness(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    nop

    .line 2098
    return-void

    .line 2095
    :catch_0
    move-exception v0

    .line 2096
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dream(J)V
    .locals 1
    .param p1, "time"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2074
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamByUserRequest(Landroid/content/Context;)V

    .line 2075
    return-void
.end method

.method public blacklist forceLowPowerStandbyActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 2759
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->forceLowPowerStandbyActive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2762
    nop

    .line 2763
    return-void

    .line 2760
    :catch_0
    move-exception v0

    .line 2761
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist forceSuspend()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3171
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->forceSuspend()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3172
    :catch_0
    move-exception v0

    .line 3173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBatteryDischargePrediction()Ljava/time/Duration;
    .locals 2

    .line 2534
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v0

    .line 2535
    .local v0, "parcelDuration":Landroid/os/ParcelDuration;
    if-nez v0, :cond_0

    .line 2536
    const/4 v1, 0x0

    return-object v1

    .line 2538
    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelDuration;->getDuration()Ljava/time/Duration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2539
    .end local v0    # "parcelDuration":Landroid/os/ParcelDuration;
    :catch_0
    move-exception v0

    .line 2540
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getBrightnessConstraint(I)F
    .locals 2
    .param p1, "constraint"    # I

    .line 1565
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getBrightnessConstraint(I)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1566
    :catch_0
    move-exception v0

    .line 1567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentBrightness(Z)F
    .locals 2
    .param p1, "ratio"    # Z

    .line 3425
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getCurrentBrightness(Z)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3426
    :catch_0
    move-exception v0

    .line 3427
    .local v0, "e":Landroid/os/RemoteException;
    const/high16 v1, -0x40800000    # -1.0f

    return v1
.end method

.method public whitelist getCurrentThermalStatus()I
    .locals 2

    .line 2870
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentThermalStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2871
    :catch_0
    move-exception v0

    .line 2872
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getDefaultScreenBrightnessForVrSetting()I
    .locals 2

    .line 1541
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public greylist getDefaultScreenBrightnessSetting()I
    .locals 2

    .line 1512
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public whitelist getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2307
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getLastShutdownReason()I
    .locals 2

    .line 3128
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLastShutdownReason()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3129
    :catch_0
    move-exception v0

    .line 3130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastSleepReason()I
    .locals 2

    .line 3145
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLastSleepReason()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3146
    :catch_0
    move-exception v0

    .line 3147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastUserActivityTime(I)J
    .locals 2
    .param p1, "userId"    # I

    .line 4009
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getLastUserActivityTime(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 4010
    :catch_0
    move-exception v0

    .line 4011
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLocationPowerSaveMode()I
    .locals 2

    .line 2588
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 2589
    .local v0, "powerSaveState":Landroid/os/PowerSaveState;
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v1, :cond_0

    .line 2590
    const/4 v1, 0x0

    return v1

    .line 2592
    :cond_0
    iget v1, v0, Landroid/os/PowerSaveState;->locationMode:I

    return v1
.end method

.method public blacklist getMaximumScreenBrightnessExtended()I
    .locals 2

    .line 1553
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getMaximumScreenBrightnessForVrSetting()I
    .locals 2

    .line 1532
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public greylist getMaximumScreenBrightnessSetting()I
    .locals 2

    .line 1476
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getMinimumScreenBrightnessForVrSetting()I
    .locals 2

    .line 1521
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public greylist getMinimumScreenBrightnessSetting()I
    .locals 2

    .line 1464
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public whitelist getPowerSaveModeTrigger()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2487
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getPowerSaveModeTrigger()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2488
    :catch_0
    move-exception v0

    .line 2489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getPowerSaveState(I)Landroid/os/PowerSaveState;
    .locals 2
    .param p1, "serviceType"    # I

    .line 2571
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2572
    :catch_0
    move-exception v0

    .line 2573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoundTriggerPowerSaveMode()I
    .locals 2

    .line 2608
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 2609
    .local v0, "powerSaveState":Landroid/os/PowerSaveState;
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v1, :cond_0

    .line 2610
    const/4 v1, 0x0

    return v1

    .line 2612
    :cond_0
    iget v1, v0, Landroid/os/PowerSaveState;->soundTriggerMode:I

    return v1
.end method

.method public whitelist getThermalHeadroom(I)F
    .locals 8
    .param p1, "forecastSeconds"    # I

    .line 2998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2999
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 3000
    .local v2, "timeSinceLastUpdate":J
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 3001
    const/high16 v4, 0x7fc00000    # Float.NaN

    return v4

    .line 3005
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v4, p1}, Landroid/os/IThermalService;->getThermalHeadroom(I)F

    move-result v4

    .line 3006
    .local v4, "forecast":F
    iget-object v5, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3007
    return v4

    .line 3008
    .end local v4    # "forecast":F
    :catch_0
    move-exception v4

    .line 3009
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public blacklist getWakeLockPackageList()[Ljava/lang/String;
    .locals 2

    .line 4021
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getWakeLockPackageList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4022
    :catch_0
    move-exception v0

    .line 4023
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist goToSleep(J)V
    .locals 1
    .param p1, "time"    # J

    .line 1797
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1798
    return-void
.end method

.method public greylist goToSleep(JII)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .line 1883
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1886
    nop

    .line 1887
    return-void

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientDisplayAvailable()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3034
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isAmbientDisplayAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3035
    :catch_0
    move-exception v0

    .line 3036
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientDisplaySuppressed()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3091
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3092
    :catch_0
    move-exception v0

    .line 3093
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3075
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3076
    :catch_0
    move-exception v0

    .line 3077
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .line 3112
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3113
    :catch_0
    move-exception v0

    .line 3114
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isBatteryDischargePredictionPersonalized()Z
    .locals 2

    .line 2554
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isBatteryDischargePredictionPersonalized()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2555
    :catch_0
    move-exception v0

    .line 2556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceIdleMode()Z
    .locals 2

    .line 2629
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isDeviceIdleMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2630
    :catch_0
    move-exception v0

    .line 2631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceLightIdleMode()Z
    .locals 2

    .line 2648
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLightDeviceIdleMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2649
    :catch_0
    move-exception v0

    .line 2650
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isIgnoringBatteryOptimizations(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2773
    invoke-direct {p0}, Landroid/os/PowerManager;->getPowerExemptionManager()Landroid/os/PowerExemptionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/PowerExemptionManager;->isAllowListed(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist isInteractive()Z
    .locals 2

    .line 2174
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 2175
    .local v0, "displayId":I
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, v0}, Landroid/os/IPowerManager;->isInteractiveForDisplay(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2176
    .end local v0    # "displayId":I
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isLightDeviceIdleMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2663
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceLightIdleMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isLowPowerStandbyEnabled()Z
    .locals 2

    .line 2697
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLowPowerStandbyEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2698
    :catch_0
    move-exception v0

    .line 2699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isLowPowerStandbySupported()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2678
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLowPowerStandbySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2679
    :catch_0
    move-exception v0

    .line 2680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isPowerSaveMode()Z
    .locals 2

    .line 2271
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

    .line 2200
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    return v0
.end method

.method public whitelist isScreenOn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2133
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public whitelist isSustainedPerformanceModeSupported()Z
    .locals 2

    .line 2809
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWakeLockLevelSupported(I)Z
    .locals 2
    .param p1, "level"    # I

    .line 2108
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2109
    :catch_0
    move-exception v0

    .line 2110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist nap(J)V
    .locals 2
    .param p1, "time"    # J

    .line 2045
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2048
    nop

    .line 2049
    return-void

    .line 2046
    :catch_0
    move-exception v0

    .line 2047
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 7
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 1653
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 1654
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
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 1673
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 1674
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
    .param p1, "reason"    # Ljava/lang/String;

    .line 2222
    const-string/jumbo v0, "userspace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager;->isRebootingUserspaceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2223
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2227
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2230
    nop

    .line 2231
    return-void

    .line 2228
    :catch_0
    move-exception v0

    .line 2229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o rebootSafeMode()V
    .locals 3

    .line 2256
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->rebootSafeMode(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2259
    nop

    .line 2260
    return-void

    .line 2257
    :catch_0
    move-exception v0

    .line 2258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 2943
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2944
    iget-object v0, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IThermalStatusListener;

    .line 2945
    .local v0, "internalListener":Landroid/os/IThermalStatusListener;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Listener was not added"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2947
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v1, v0}, Landroid/os/IThermalService;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2948
    iget-object v1, p0, Landroid/os/PowerManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2954
    nop

    .line 2955
    return-void

    .line 2950
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Listener failed to remove"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalListener":Landroid/os/IThermalStatusListener;
    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2952
    .restart local v0    # "internalListener":Landroid/os/IThermalStatusListener;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    :catch_0
    move-exception v1

    .line 2953
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist semGetMaximumScreenBrightnessSetting()I
    .locals 1

    .line 1502
    invoke-virtual {p0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public whitelist semGetMinimumScreenBrightnessSetting()I
    .locals 1

    .line 1490
    invoke-virtual {p0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public whitelist semGoToSleep(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1821
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1822
    return-void
.end method

.method public whitelist semGoToSleep(JII)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .line 1848
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1849
    return-void
.end method

.method public whitelist semSetAutoBrightnessLimit(FF)V
    .locals 4
    .param p1, "lowerLimit"    # F
    .param p2, "upperLimit"    # F

    .line 3386
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    .line 3387
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3388
    .local v1, "lowerLimitInt":I
    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_1

    .line 3389
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move v0, v2

    .line 3390
    .local v0, "upperLimitInt":I
    iget-object v2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3393
    .end local v0    # "upperLimitInt":I
    .end local v1    # "lowerLimitInt":I
    goto :goto_2

    .line 3391
    :catch_0
    move-exception v0

    .line 3394
    :goto_2
    return-void
.end method

.method public whitelist semSetAutoBrightnessLimit(II)V
    .locals 2
    .param p1, "lowerLimit"    # I
    .param p2, "upperLimit"    # I

    .line 3365
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3368
    goto :goto_0

    .line 3366
    :catch_0
    move-exception v0

    .line 3369
    :goto_0
    return-void
.end method

.method public whitelist semSetLcdFlashModeEnabled(ZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 3553
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setLCDFlashMode(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3556
    goto :goto_0

    .line 3554
    :catch_0
    move-exception v0

    .line 3557
    :goto_0
    return-void
.end method

.method public whitelist semWakeUp(JILjava/lang/String;)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;

    .line 2018
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2019
    return-void
.end method

.method public whitelist setAdaptivePowerSaveEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2431
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAdaptivePowerSaveEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2432
    :catch_0
    move-exception v0

    .line 2433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 2
    .param p1, "config"    # Landroid/os/BatterySaverPolicyConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2410
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAutoBrightnessLimit(II)V
    .locals 2
    .param p1, "lowerLimit"    # I
    .param p2, "upperLimit"    # I

    .line 3328
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3331
    goto :goto_0

    .line 3329
    :catch_0
    move-exception v0

    .line 3332
    :goto_0
    return-void
.end method

.method public blacklist setAutoBrightnessLimit(IIZ)V
    .locals 1
    .param p1, "lowerLimit"    # I
    .param p2, "upperLimit"    # I
    .param p3, "slowChange"    # Z

    .line 3346
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3349
    goto :goto_0

    .line 3347
    :catch_0
    move-exception v0

    .line 3350
    :goto_0
    return-void
.end method

.method public whitelist setBatteryDischargePrediction(Ljava/time/Duration;Z)V
    .locals 2
    .param p1, "timeRemaining"    # Ljava/time/Duration;
    .param p2, "isPersonalized"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2514
    if-eqz p1, :cond_0

    .line 2518
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    new-instance v1, Landroid/os/ParcelDuration;

    invoke-direct {v1, p1}, Landroid/os/ParcelDuration;-><init>(Ljava/time/Duration;)V

    invoke-interface {v0, v1, p2}, Landroid/os/IPowerManager;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2522
    nop

    .line 2523
    return-void

    .line 2520
    :catch_0
    move-exception v0

    .line 2521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2515
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "time remaining must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCoverType(I)V
    .locals 1
    .param p1, "coverType"    # I

    .line 3496
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setCoverType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3498
    goto :goto_0

    .line 3497
    :catch_0
    move-exception v0

    .line 3499
    :goto_0
    return-void
.end method

.method public greylist-max-o setDozeAfterScreenOff(Z)V
    .locals 2
    .param p1, "dozeAfterScreenOf"    # Z

    .line 3020
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setDozeAfterScreenOff(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3023
    nop

    .line 3024
    return-void

    .line 3021
    :catch_0
    move-exception v0

    .line 3022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDynamicPowerSaveHint(ZI)Z
    .locals 2
    .param p1, "powerSaveHint"    # Z
    .param p2, "disableThreshold"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2389
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setDynamicPowerSaveHint(ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2390
    :catch_0
    move-exception v0

    .line 2391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEarlyWakeUp(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 3992
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setEarlyWakeUp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3995
    goto :goto_0

    .line 3993
    :catch_0
    move-exception v0

    .line 3996
    :goto_0
    return-void
.end method

.method public blacklist setFreezingScreenBrightness(Z)V
    .locals 1
    .param p1, "freezing"    # Z

    .line 3459
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setFreezingScreenBrightness(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3461
    goto :goto_0

    .line 3460
    :catch_0
    move-exception v0

    .line 3462
    :goto_0
    return-void
.end method

.method public whitelist setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 2
    .param p1, "config"    # Landroid/os/BatterySaverPolicyConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2348
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2349
    :catch_0
    move-exception v0

    .line 2350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setLCDFlashMode(ZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 3534
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setLCDFlashMode(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3536
    goto :goto_0

    .line 3535
    :catch_0
    move-exception v0

    .line 3537
    :goto_0
    return-void
.end method

.method public whitelist setLowPowerStandbyActiveDuringMaintenance(Z)V
    .locals 2
    .param p1, "activeDuringMaintenance"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2739
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setLowPowerStandbyActiveDuringMaintenance(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    nop

    .line 2743
    return-void

    .line 2740
    :catch_0
    move-exception v0

    .line 2741
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLowPowerStandbyEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2718
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setLowPowerStandbyEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2721
    nop

    .line 2722
    return-void

    .line 2719
    :catch_0
    move-exception v0

    .line 2720
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMasterBrightnessLimit(III)V
    .locals 1
    .param p1, "lowerLimit"    # I
    .param p2, "upperLimit"    # I
    .param p3, "brightnessLimitPeriod"    # I

    .line 3407
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->setMasterBrightnessLimit(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3410
    goto :goto_0

    .line 3408
    :catch_0
    move-exception v0

    .line 3411
    :goto_0
    return-void
.end method

.method public whitelist setPowerSaveModeEnabled(Z)Z
    .locals 2
    .param p1, "mode"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2289
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setPowerSaveModeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2290
    :catch_0
    move-exception v0

    .line 2291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V
    .locals 1
    .param p1, "scaleFactor"    # F
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 3443
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3445
    goto :goto_0

    .line 3444
    :catch_0
    move-exception v0

    .line 3446
    :goto_0
    return-void
.end method

.method public greylist-max-o shutdown(ZLjava/lang/String;Z)V
    .locals 2
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .line 2787
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    nop

    .line 2791
    return-void

    .line 2788
    :catch_0
    move-exception v0

    .line 2789
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist suppressAmbientDisplay(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "suppress"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3056
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    nop

    .line 3060
    return-void

    .line 3057
    :catch_0
    move-exception v0

    .line 3058
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist switchForceLcdBacklightOffState()V
    .locals 1

    .line 3514
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->switchForceLcdBacklightOffState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3516
    goto :goto_0

    .line 3515
    :catch_0
    move-exception v0

    .line 3517
    :goto_0
    return-void
.end method

.method public blacklist systemReboot(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 2238
    :try_start_0
    const-string v0, "PowerManager"

    const-string v1, "calling systemReboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->systemReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    nop

    .line 2243
    return-void

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateCoverState(Z)V
    .locals 1
    .param p1, "closed"    # Z

    .line 3478
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->updateCoverState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3480
    goto :goto_0

    .line 3479
    :catch_0
    move-exception v0

    .line 3481
    :goto_0
    return-void
.end method

.method public whitelist userActivity(JII)V
    .locals 6
    .param p1, "when"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1761
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

    .line 1764
    nop

    .line 1765
    return-void

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist userActivity(JZ)V
    .locals 1
    .param p1, "when"    # J
    .param p3, "noChangeLights"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1726
    nop

    .line 1727
    nop

    .line 1726
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1728
    return-void
.end method

.method public greylist wakeUp(J)V
    .locals 2
    .param p1, "time"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1917
    const/4 v0, 0x0

    const-string/jumbo v1, "wakeUp"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 1918
    return-void
.end method

.method public blacklist wakeUp(JILjava/lang/String;)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;

    .line 1988
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

    .line 1991
    nop

    .line 1992
    return-void

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist wakeUp(JLjava/lang/String;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "details"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1952
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 1953
    return-void
.end method
