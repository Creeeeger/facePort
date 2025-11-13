.class public Lcom/android/internal/util/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/LatencyTracker$ActionProperties;,
        Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;,
        Lcom/android/internal/util/LatencyTracker$Session;,
        Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;,
        Lcom/android/internal/util/LatencyTracker$Action;
    }
.end annotation


# static fields
.field private static final blacklist ACTIONS_ALL:[I

.field public static final blacklist ACTION_BACK_SYSTEM_ANIMATION:I = 0x19

.field public static final blacklist ACTION_CHECK_CREDENTIAL:I = 0x3

.field public static final blacklist ACTION_CHECK_CREDENTIAL_UNLOCKED:I = 0x4

.field public static final blacklist ACTION_EXPAND_PANEL:I = 0x0

.field public static final blacklist ACTION_FACE_WAKE_AND_UNLOCK:I = 0x7

.field public static final blacklist ACTION_FINGERPRINT_WAKE_AND_UNLOCK:I = 0x2

.field public static final blacklist ACTION_FOLD_TO_AOD:I = 0x12

.field public static final blacklist ACTION_KEYGUARD_FPS_UNLOCK_TO_HOME:I = 0x18

.field public static final blacklist ACTION_LOAD_SHARE_SHEET:I = 0x10

.field public static final blacklist ACTION_LOCKSCREEN_UNLOCK:I = 0xb

.field public static final blacklist ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE:I = 0x1a

.field public static final blacklist ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE_WITH_SHADE_OPEN:I = 0x1b

.field public static final blacklist ACTION_NOTIFICATION_BIG_PICTURE_LOADED:I = 0x17

.field public static final blacklist ACTION_REQUEST_IME_HIDDEN:I = 0x15

.field public static final blacklist ACTION_REQUEST_IME_SHOWN:I = 0x14

.field public static final blacklist ACTION_ROTATE_SCREEN:I = 0x6

.field public static final blacklist ACTION_ROTATE_SCREEN_CAMERA_CHECK:I = 0x9

.field public static final blacklist ACTION_ROTATE_SCREEN_SENSOR:I = 0xa

.field public static final blacklist ACTION_SHOW_BACK_ARROW:I = 0xf

.field public static final blacklist ACTION_SHOW_SELECTION_TOOLBAR:I = 0x11

.field public static final blacklist ACTION_SHOW_VOICE_INTERACTION:I = 0x13

.field public static final blacklist ACTION_SMARTSPACE_DOORBELL:I = 0x16

.field public static final blacklist ACTION_START_RECENTS_ANIMATION:I = 0x8

.field public static final blacklist ACTION_SWITCH_DISPLAY_UNFOLD:I = 0xd

.field public static final blacklist ACTION_TOGGLE_RECENTS:I = 0x1

.field public static final blacklist ACTION_TURN_ON_SCREEN:I = 0x5

.field public static final blacklist ACTION_UDFPS_ILLUMINATE:I = 0xe

.field public static final blacklist ACTION_USER_SWITCH:I = 0xc

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_ENABLED:Z

.field private static final blacklist DEFAULT_SAMPLING_INTERVAL:I = 0x5

.field public static final blacklist SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final blacklist SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field public static final blacklist STATSD_ACTION:[I

.field private static final blacklist TAG:Ljava/lang/String; = "LatencyTracker"


# instance fields
.field private final blacklist mActionPropertiesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$ActionProperties;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnabled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final blacklist mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$GEhnnM5WqqSsZoU7jDo0aVrxC_k(Lcom/android/internal/util/LatencyTracker;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y9m-lxB8Y_JCGfiPUyJnYUMmGg4(Lcom/android/internal/util/LatencyTracker;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->lambda$startListeningForLatencyTrackerConfigChanges$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bfKG0XUlZp6yLm2EoLfYk1sdLw8(Lcom/android/internal/util/LatencyTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->lambda$onActionStart$1(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/LatencyTracker;->getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/LatencyTracker;)V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    sget-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;
    .locals 1

    invoke-static {}, Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;->-$$Nest$sfgetsLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNameOfAction(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE_WITH_SHADE_OPEN"

    return-object v0

    :pswitch_2
    const-string v0, "ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE"

    return-object v0

    :pswitch_3
    const-string v0, "ACTION_BACK_SYSTEM_ANIMATION"

    return-object v0

    :pswitch_4
    const-string v0, "ACTION_KEYGUARD_FPS_UNLOCK_TO_HOME"

    return-object v0

    :pswitch_5
    const-string v0, "ACTION_NOTIFICATION_BIG_PICTURE_LOADED"

    return-object v0

    :pswitch_6
    const-string v0, "ACTION_SMARTSPACE_DOORBELL"

    return-object v0

    :pswitch_7
    const-string v0, "ACTION_REQUEST_IME_HIDDEN"

    return-object v0

    :pswitch_8
    const-string v0, "ACTION_REQUEST_IME_SHOWN"

    return-object v0

    :pswitch_9
    const-string v0, "ACTION_SHOW_VOICE_INTERACTION"

    return-object v0

    :pswitch_a
    const-string v0, "ACTION_FOLD_TO_AOD"

    return-object v0

    :pswitch_b
    const-string v0, "ACTION_SHOW_SELECTION_TOOLBAR"

    return-object v0

    :pswitch_c
    const-string v0, "ACTION_LOAD_SHARE_SHEET"

    return-object v0

    :pswitch_d
    const-string v0, "ACTION_SHOW_BACK_ARROW"

    return-object v0

    :pswitch_e
    const-string v0, "ACTION_UDFPS_ILLUMINATE"

    return-object v0

    :pswitch_f
    const-string v0, "ACTION_SWITCH_DISPLAY_UNFOLD"

    return-object v0

    :pswitch_10
    const-string v0, "ACTION_USER_SWITCH"

    return-object v0

    :pswitch_11
    const-string v0, "ACTION_LOCKSCREEN_UNLOCK"

    return-object v0

    :pswitch_12
    const-string v0, "ACTION_ROTATE_SCREEN_SENSOR"

    return-object v0

    :pswitch_13
    const-string v0, "ACTION_ROTATE_SCREEN_CAMERA_CHECK"

    return-object v0

    :pswitch_14
    const-string v0, "ACTION_START_RECENTS_ANIMATION"

    return-object v0

    :pswitch_15
    const-string v0, "ACTION_FACE_WAKE_AND_UNLOCK"

    return-object v0

    :pswitch_16
    const-string v0, "ACTION_ROTATE_SCREEN"

    return-object v0

    :pswitch_17
    const-string v0, "ACTION_TURN_ON_SCREEN"

    return-object v0

    :pswitch_18
    const-string v0, "ACTION_CHECK_CREDENTIAL_UNLOCKED"

    return-object v0

    :pswitch_19
    const-string v0, "ACTION_CHECK_CREDENTIAL"

    return-object v0

    :pswitch_1a
    const-string v0, "ACTION_FINGERPRINT_WAKE_AND_UNLOCK"

    return-object v0

    :pswitch_1b
    const-string v0, "ACTION_TOGGLE_RECENTS"

    return-object v0

    :pswitch_1c
    const-string v0, "ACTION_EXPAND_PANEL"

    return-object v0

    :pswitch_1d
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ">"

    const-string v2, "L<"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v2, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v2, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTraceTriggerNameForAction(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.telemetry.latency-tracker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v1, v1, p0

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isEnabled(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isEnabled(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$onActionStart$1(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    return-void
.end method

.method private synthetic blacklist lambda$startListeningForLatencyTrackerConfigChanges$0(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "latency_tracker"

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    nop

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get properties: READ_DEVICE_CONFIG granted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LatencyTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v0, "sampling_interval"

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v4, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    const-string v5, "enabled"

    sget-boolean v6, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    invoke-virtual {v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    iget-boolean v5, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    if-eq v4, v5, :cond_1

    const-string v5, "LatencyTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Latency tracker "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    if-eqz v7, :cond_0

    const-string v7, "enabled"

    goto :goto_0

    :cond_0
    const-string v7, "disabled"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v5, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    sget-object v9, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v9, v9, v8

    invoke-static {v9}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v2, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, v1, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    new-instance v12, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_enable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-boolean v14, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    invoke-virtual {v2, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_sample_interval"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v0

    const-string v0, "_trace_threshold"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v10}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v12, v8, v13, v14, v0}, Lcom/android/internal/util/LatencyTracker$ActionProperties;-><init>(IZII)V

    invoke-virtual {v11, v8, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    goto/16 :goto_1

    :cond_2
    move/from16 v16, v0

    iget-object v0, v1, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/LatencyTracker;->onDeviceConfigPropertiesUpdated(Landroid/util/SparseArray;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public blacklist getActiveActionStartTime(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker$Session;->-$$Nest$fgetmStartRtc(Lcom/android/internal/util/LatencyTracker$Session;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :cond_0
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isEnabled(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$ActionProperties;->isEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist logAction(II)V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$ActionProperties;->getSamplingInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$ActionProperties;->getTraceThreshold()I

    move-result v6

    move v1, v6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_3

    if-lt p2, v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    move v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x8ce6

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getTraceTriggerNameForAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/LatencyTracker;->onTriggerPerfetto(Ljava/lang/String;)V

    :cond_4
    if-eqz v5, :cond_5

    new-instance v2, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;

    sget-object v3, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v9, v3, p1

    const/4 v11, 0x0

    const/16 v8, 0x132

    move-object v6, v2

    move v7, p1

    move v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;-><init>(IIIILcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent-IA;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/util/LatencyTracker;->onLogToFrameworkStats(Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onActionCancel(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->cancel()V

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onActionEnd(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->end()V

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->duration()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onActionStart(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist onActionStart(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Lcom/android/internal/util/LatencyTracker$Session;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/util/LatencyTracker$Session;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/LatencyTracker;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker$Session;->begin(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onDeviceConfigPropertiesUpdated(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$ActionProperties;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist onLogToFrameworkStats(Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;)V
    .locals 3

    iget v0, p1, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->logCode:I

    iget v1, p1, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->statsdAction:I

    iget v2, p1, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->durationMillis:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public blacklist onTriggerPerfetto(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/util/PerfettoTrigger;->trigger(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist startListeningForLatencyTrackerConfigChanges()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/util/LatencyTracker;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist stopListeningForLatencyTrackerConfigChanges()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
