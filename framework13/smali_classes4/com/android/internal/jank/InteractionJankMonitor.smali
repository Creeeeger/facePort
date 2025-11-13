.class public Lcom/android/internal/jank/InteractionJankMonitor;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$Session;,
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration;,
        Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;,
        Lcom/android/internal/jank/InteractionJankMonitor$CujType;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_PREFIX:Ljava/lang/String;

.field public static final blacklist ACTION_SESSION_CANCEL:Ljava/lang/String;

.field public static final blacklist ACTION_SESSION_END:Ljava/lang/String;

.field public static final blacklist CUJ_BIOMETRIC_PROMPT_TRANSITION:I = 0x38

.field public static final blacklist CUJ_LAUNCHER_ALL_APPS_SCROLL:I = 0x1a

.field public static final blacklist CUJ_LAUNCHER_APP_CLOSE_TO_HOME:I = 0x9

.field public static final blacklist CUJ_LAUNCHER_APP_CLOSE_TO_PIP:I = 0xa

.field public static final blacklist CUJ_LAUNCHER_APP_LAUNCH_FROM_ICON:I = 0x8

.field public static final blacklist CUJ_LAUNCHER_APP_LAUNCH_FROM_RECENTS:I = 0x7

.field public static final blacklist CUJ_LAUNCHER_APP_LAUNCH_FROM_WIDGET:I = 0x1b

.field public static final blacklist CUJ_LAUNCHER_OPEN_ALL_APPS:I = 0x19

.field public static final blacklist CUJ_LAUNCHER_QUICK_SWITCH:I = 0xb

.field public static final blacklist CUJ_LOCKSCREEN_LAUNCH_CAMERA:I = 0x33

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_APPEAR:I = 0x11

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_DISAPPEAR:I = 0x14

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_APPEAR:I = 0x12

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_DISAPPEAR:I = 0x15

.field public static final blacklist CUJ_LOCKSCREEN_PIN_APPEAR:I = 0x13

.field public static final blacklist CUJ_LOCKSCREEN_PIN_DISAPPEAR:I = 0x16

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_FROM_AOD:I = 0x17

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_TO_AOD:I = 0x18

.field public static final blacklist CUJ_LOCKSCREEN_UNLOCK_ANIMATION:I = 0x1d

.field public static final blacklist CUJ_NOTIFICATION_ADD:I = 0xe

.field public static final blacklist CUJ_NOTIFICATION_APP_START:I = 0x10

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_APPEAR:I = 0xc

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_DISAPPEAR:I = 0xd

.field public static final blacklist CUJ_NOTIFICATION_REMOVE:I = 0xf

.field public static final blacklist CUJ_NOTIFICATION_SHADE_EXPAND_COLLAPSE:I = 0x0

.field public static final blacklist CUJ_NOTIFICATION_SHADE_EXPAND_COLLAPSE_LOCK:I = 0x1

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE:I = 0x5

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_SCROLL_SWIPE:I = 0x6

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_EXPAND:I = 0x3

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_SWIPE:I = 0x4

.field public static final blacklist CUJ_NOTIFICATION_SHADE_SCROLL_FLING:I = 0x2

.field public static final blacklist CUJ_ONE_HANDED_ENTER_TRANSITION:I = 0x2a

.field public static final blacklist CUJ_ONE_HANDED_EXIT_TRANSITION:I = 0x2b

.field public static final blacklist CUJ_PIP_TRANSITION:I = 0x23

.field public static final blacklist CUJ_SCREEN_OFF:I = 0x28

.field public static final blacklist CUJ_SCREEN_OFF_SHOW_AOD:I = 0x29

.field public static final blacklist CUJ_SETTINGS_PAGE_SCROLL:I = 0x1c

.field public static final blacklist CUJ_SETTINGS_SLIDER:I = 0x35

.field public static final blacklist CUJ_SETTINGS_TOGGLE:I = 0x39

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON:I = 0x1e

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER:I = 0x1f

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_QS_TILE:I = 0x20

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON:I = 0x21

.field public static final blacklist CUJ_SPLASHSCREEN_AVD:I = 0x26

.field public static final blacklist CUJ_SPLASHSCREEN_EXIT_ANIM:I = 0x27

.field public static final blacklist CUJ_SPLIT_SCREEN_ENTER:I = 0x31

.field public static final blacklist CUJ_SPLIT_SCREEN_EXIT:I = 0x32

.field public static final blacklist CUJ_SPLIT_SCREEN_RESIZE:I = 0x34

.field public static final blacklist CUJ_STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP:I = 0x22

.field public static final blacklist CUJ_SUW_LOADING_SCREEN_FOR_STATUS:I = 0x30

.field public static final blacklist CUJ_SUW_LOADING_TO_NEXT_FLOW:I = 0x2f

.field public static final blacklist CUJ_SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS:I = 0x2d

.field public static final blacklist CUJ_SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS:I = 0x2e

.field public static final blacklist CUJ_TAKE_SCREENSHOT:I = 0x36

.field public static final blacklist CUJ_TO_STATSD_INTERACTION_TYPE:[I

.field public static final blacklist CUJ_UNFOLD_ANIM:I = 0x2c

.field public static final blacklist CUJ_USER_SWITCH:I = 0x25

.field public static final blacklist CUJ_VOLUME_CONTROL:I = 0x37

.field public static final blacklist CUJ_WALLPAPER_TRANSITION:I = 0x24

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_ENABLED:Z

.field private static final blacklist DEFAULT_SAMPLING_INTERVAL:I = 0x1

.field private static final blacklist DEFAULT_TIMEOUT_MS:J

.field private static final blacklist DEFAULT_TRACE_THRESHOLD_FRAME_TIME_MILLIS:I = 0x40

.field private static final blacklist DEFAULT_TRACE_THRESHOLD_MISSED_FRAMES:I = 0x3

.field private static final blacklist DEFAULT_WORKER_NAME:Ljava/lang/String;

.field static final blacklist EXECUTOR_TASK_TIMEOUT:J = 0x1f4L

.field private static final blacklist NO_STATSD_LOGGING:I = -0x1

.field private static final blacklist SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final blacklist SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final blacklist SETTINGS_THRESHOLD_FRAME_TIME_MILLIS_KEY:Ljava/lang/String; = "trace_threshold_frame_time_millis"

.field private static final blacklist SETTINGS_THRESHOLD_MISSED_FRAMES_KEY:Ljava/lang/String; = "trace_threshold_missed_frames"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Lcom/android/internal/jank/InteractionJankMonitor;


# instance fields
.field private volatile blacklist mEnabled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final blacklist mRunningTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSamplingInterval:I

.field private final blacklist mTimeoutActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTraceThresholdFrameTimeMillis:I

.field private blacklist mTraceThresholdMissedFrames:I

.field private final blacklist mWorker:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic blacklist $r8$lambda$H_OZ99anWxwLySgdeSqJ03mcRzY(Lcom/android/internal/jank/InteractionJankMonitor;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_TIMEOUT_MS()J
    .locals 2

    sget-wide v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 127
    const-class v0, Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_PREFIX:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Worker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    .line 132
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    .line 141
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_SESSION_END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_SESSION_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    .line 216
    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    return-void

    nop

    :array_0
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
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/os/HandlerThread;)V
    .locals 4
    .param p1, "worker"    # Landroid/os/HandlerThread;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 288
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    .line 290
    sget-boolean v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    iput-boolean v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    .line 291
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    .line 292
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    .line 293
    const/16 v3, 0x40

    iput v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    .line 384
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    .line 385
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    .line 386
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    .line 387
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 388
    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    .line 392
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 398
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 396
    const-string v3, "interaction_jank_monitor"

    invoke-static {v3, v2, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 400
    iput-boolean v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    .line 401
    return-void
.end method

.method private blacklist beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z
    .locals 5
    .param p1, "conf"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 512
    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v0

    .line 513
    .local v0, "cujType":I
    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->shouldMonitor(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 514
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    .line 516
    .local v1, "tracker":Lcom/android/internal/jank/FrameTracker;
    if-eqz v1, :cond_1

    return v2

    .line 519
    :cond_1
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/internal/jank/InteractionJankMonitor$Session;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    .line 520
    invoke-direct {p0, v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->putTracker(ILcom/android/internal/jank/FrameTracker;)V

    .line 521
    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker;->begin()V

    .line 524
    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J

    move-result-wide v2

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;I)V

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->scheduleTimeoutAction(IJLjava/lang/Runnable;)V

    .line 526
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist cancelInternal(II)Z
    .locals 2
    .param p1, "cujType"    # I
    .param p2, "reason"    # I

    .line 636
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTimeout(I)V

    .line 637
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    .line 638
    .local v0, "tracker":Lcom/android/internal/jank/FrameTracker;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 640
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTracker(I)V

    .line 643
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist endInternal(I)Z
    .locals 2
    .param p1, "cujType"    # I

    .line 589
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTimeout(I)V

    .line 590
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    .line 591
    .local v0, "tracker":Lcom/android/internal/jank/FrameTracker;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 593
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker;->end(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTracker(I)V

    .line 596
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist getCujTypeFromInteraction(I)I
    .locals 1
    .param p0, "interactionType"    # I

    .line 708
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/jank/InteractionJankMonitor;
    .locals 4

    .line 367
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->sInstance:Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v0, :cond_1

    .line 368
    const-class v0, Lcom/android/internal/jank/InteractionJankMonitor;

    monitor-enter v0

    .line 369
    :try_start_0
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->sInstance:Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v1, :cond_0

    .line 370
    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor;

    new-instance v2, Landroid/os/HandlerThread;

    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;-><init>(Landroid/os/HandlerThread;)V

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->sInstance:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 372
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 374
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->sInstance:Lcom/android/internal/jank/InteractionJankMonitor;

    return-object v0
.end method

.method public static blacklist getNameOfCuj(I)Ljava/lang/String;
    .locals 1
    .param p0, "cujType"    # I

    .line 718
    packed-switch p0, :pswitch_data_0

    .line 836
    const-string v0, "UNKNOWN"

    return-object v0

    .line 834
    :pswitch_0
    const-string v0, "SETTINGS_TOGGLE"

    return-object v0

    .line 832
    :pswitch_1
    const-string v0, "BIOMETRIC_PROMPT_TRANSITION"

    return-object v0

    .line 830
    :pswitch_2
    const-string v0, "VOLUME_CONTROL"

    return-object v0

    .line 828
    :pswitch_3
    const-string v0, "TAKE_SCREENSHOT"

    return-object v0

    .line 826
    :pswitch_4
    const-string v0, "SETTINGS_SLIDER"

    return-object v0

    .line 824
    :pswitch_5
    const-string v0, "CUJ_SPLIT_SCREEN_RESIZE"

    return-object v0

    .line 822
    :pswitch_6
    const-string v0, "CUJ_LOCKSCREEN_LAUNCH_CAMERA"

    return-object v0

    .line 820
    :pswitch_7
    const-string v0, "SPLIT_SCREEN_EXIT"

    return-object v0

    .line 818
    :pswitch_8
    const-string v0, "SPLIT_SCREEN_ENTER"

    return-object v0

    .line 816
    :pswitch_9
    const-string v0, "SUW_LOADING_SCREEN_FOR_STATUS"

    return-object v0

    .line 814
    :pswitch_a
    const-string v0, "SUW_LOADING_TO_NEXT_FLOW"

    return-object v0

    .line 812
    :pswitch_b
    const-string v0, "SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS"

    return-object v0

    .line 810
    :pswitch_c
    const-string v0, "SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS"

    return-object v0

    .line 808
    :pswitch_d
    const-string v0, "UNFOLD_ANIM"

    return-object v0

    .line 806
    :pswitch_e
    const-string v0, "ONE_HANDED_EXIT_TRANSITION"

    return-object v0

    .line 804
    :pswitch_f
    const-string v0, "ONE_HANDED_ENTER_TRANSITION"

    return-object v0

    .line 802
    :pswitch_10
    const-string v0, "SCREEN_OFF_SHOW_AOD"

    return-object v0

    .line 800
    :pswitch_11
    const-string v0, "SCREEN_OFF"

    return-object v0

    .line 798
    :pswitch_12
    const-string v0, "SPLASHSCREEN_EXIT_ANIM"

    return-object v0

    .line 796
    :pswitch_13
    const-string v0, "SPLASHSCREEN_AVD"

    return-object v0

    .line 794
    :pswitch_14
    const-string v0, "USER_SWITCH"

    return-object v0

    .line 792
    :pswitch_15
    const-string v0, "WALLPAPER_TRANSITION"

    return-object v0

    .line 790
    :pswitch_16
    const-string v0, "PIP_TRANSITION"

    return-object v0

    .line 788
    :pswitch_17
    const-string v0, "STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP"

    return-object v0

    .line 786
    :pswitch_18
    const-string v0, "SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON"

    return-object v0

    .line 784
    :pswitch_19
    const-string v0, "SHADE_APP_LAUNCH_FROM_QS_TILE"

    return-object v0

    .line 782
    :pswitch_1a
    const-string v0, "SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER"

    return-object v0

    .line 780
    :pswitch_1b
    const-string v0, "SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON"

    return-object v0

    .line 778
    :pswitch_1c
    const-string v0, "LOCKSCREEN_UNLOCK_ANIMATION"

    return-object v0

    .line 776
    :pswitch_1d
    const-string v0, "SETTINGS_PAGE_SCROLL"

    return-object v0

    .line 774
    :pswitch_1e
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_WIDGET"

    return-object v0

    .line 772
    :pswitch_1f
    const-string v0, "LAUNCHER_ALL_APPS_SCROLL"

    return-object v0

    .line 770
    :pswitch_20
    const-string v0, "LAUNCHER_OPEN_ALL_APPS"

    return-object v0

    .line 768
    :pswitch_21
    const-string v0, "LOCKSCREEN_TRANSITION_TO_AOD"

    return-object v0

    .line 766
    :pswitch_22
    const-string v0, "LOCKSCREEN_TRANSITION_FROM_AOD"

    return-object v0

    .line 764
    :pswitch_23
    const-string v0, "LOCKSCREEN_PIN_DISAPPEAR"

    return-object v0

    .line 762
    :pswitch_24
    const-string v0, "LOCKSCREEN_PATTERN_DISAPPEAR"

    return-object v0

    .line 760
    :pswitch_25
    const-string v0, "LOCKSCREEN_PASSWORD_DISAPPEAR"

    return-object v0

    .line 758
    :pswitch_26
    const-string v0, "LOCKSCREEN_PIN_APPEAR"

    return-object v0

    .line 756
    :pswitch_27
    const-string v0, "LOCKSCREEN_PATTERN_APPEAR"

    return-object v0

    .line 754
    :pswitch_28
    const-string v0, "LOCKSCREEN_PASSWORD_APPEAR"

    return-object v0

    .line 752
    :pswitch_29
    const-string v0, "NOTIFICATION_APP_START"

    return-object v0

    .line 750
    :pswitch_2a
    const-string v0, "NOTIFICATION_REMOVE"

    return-object v0

    .line 748
    :pswitch_2b
    const-string v0, "NOTIFICATION_ADD"

    return-object v0

    .line 746
    :pswitch_2c
    const-string v0, "NOTIFICATION_HEADS_UP_DISAPPEAR"

    return-object v0

    .line 744
    :pswitch_2d
    const-string v0, "NOTIFICATION_HEADS_UP_APPEAR"

    return-object v0

    .line 742
    :pswitch_2e
    const-string v0, "LAUNCHER_QUICK_SWITCH"

    return-object v0

    .line 740
    :pswitch_2f
    const-string v0, "LAUNCHER_APP_CLOSE_TO_PIP"

    return-object v0

    .line 738
    :pswitch_30
    const-string v0, "LAUNCHER_APP_CLOSE_TO_HOME"

    return-object v0

    .line 736
    :pswitch_31
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_ICON"

    return-object v0

    .line 734
    :pswitch_32
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_RECENTS"

    return-object v0

    .line 732
    :pswitch_33
    const-string v0, "SHADE_QS_SCROLL_SWIPE"

    return-object v0

    .line 730
    :pswitch_34
    const-string v0, "SHADE_QS_EXPAND_COLLAPSE"

    return-object v0

    .line 728
    :pswitch_35
    const-string v0, "SHADE_ROW_SWIPE"

    return-object v0

    .line 726
    :pswitch_36
    const-string v0, "SHADE_ROW_EXPAND"

    return-object v0

    .line 724
    :pswitch_37
    const-string v0, "SHADE_SCROLL_FLING"

    return-object v0

    .line 722
    :pswitch_38
    const-string v0, "SHADE_EXPAND_COLLAPSE_LOCK"

    return-object v0

    .line 720
    :pswitch_39
    const-string v0, "SHADE_EXPAND_COLLAPSE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getNameOfInteraction(I)Ljava/lang/String;
    .locals 1
    .param p0, "interactionType"    # I

    .line 698
    invoke-static {p0}, Lcom/android/internal/jank/InteractionJankMonitor;->getCujTypeFromInteraction(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getTracker(I)Lcom/android/internal/jank/FrameTracker;
    .locals 2
    .param p1, "cuj"    # I

    .line 653
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/FrameTracker;

    monitor-exit v0

    return-object v1

    .line 655
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleCujEvents(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->needRemoveTasks(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getCuj()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 440
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$trigger$7(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .locals 1
    .param p0, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getPerfettoTrigger()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PerfettoTrigger;->trigger(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist needRemoveTasks(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 443
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 445
    .local v0, "badEnd":Z
    :goto_0
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 446
    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 447
    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 448
    .local v3, "badCancel":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method private blacklist putTracker(ILcom/android/internal/jank/FrameTracker;)V
    .locals 2
    .param p1, "cuj"    # I
    .param p2, "tracker"    # Lcom/android/internal/jank/FrameTracker;

    .line 647
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    monitor-exit v0

    .line 650
    return-void

    .line 649
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removeTimeout(I)V
    .locals 3
    .param p1, "cujType"    # I

    .line 452
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 454
    .local v1, "timeout":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 458
    .end local v1    # "timeout":Ljava/lang/Runnable;
    :cond_0
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removeTracker(I)V
    .locals 2
    .param p1, "cuj"    # I

    .line 659
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 661
    monitor-exit v0

    .line 662
    return-void

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 665
    const-string/jumbo v0, "sampling_interval"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    .line 667
    const-string/jumbo v0, "trace_threshold_missed_frames"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    .line 669
    const-string/jumbo v0, "trace_threshold_frame_time_millis"

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    .line 673
    sget-boolean v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    const-string v1, "enabled"

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    .line 674
    return-void
.end method


# virtual methods
.method public blacklist begin(Landroid/view/View;I)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cujType"    # I

    .line 480
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Build configuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z
    .locals 7
    .param p1, "builder"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 495
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->build()Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    move-result-object v1

    .line 496
    .local v1, "config":Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V

    .line 497
    .local v2, "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 499
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 500
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return v0

    .line 503
    :cond_0
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 504
    .end local v1    # "config":Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .end local v2    # "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .end local v3    # "success":Z
    :catch_0
    move-exception v1

    .line 505
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Build configuration failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    return v0
.end method

.method public blacklist cancel(I)Z
    .locals 1
    .param p1, "cujType"    # I

    .line 605
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    move-result v0

    return v0
.end method

.method public blacklist cancel(II)Z
    .locals 7
    .param p1, "cujType"    # I
    .param p2, "reason"    # I

    .line 615
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    .line 617
    .local v0, "tracker":Lcom/android/internal/jank/FrameTracker;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 619
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V

    .line 620
    .local v2, "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 622
    .local v3, "success":Z
    if-nez v3, :cond_1

    .line 623
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return v1

    .line 626
    :cond_1
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 627
    .end local v2    # "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .end local v3    # "success":Z
    :catch_0
    move-exception v2

    .line 628
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Execute cancel task failed!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    return v1
.end method

.method public blacklist createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Lcom/android/internal/jank/FrameTracker;
    .locals 17
    .param p1, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .param p2, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 412
    move-object/from16 v14, p0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;

    move-result-object v15

    .line 414
    .local v15, "view":Landroid/view/View;
    const/4 v0, 0x0

    if-nez v15, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    invoke-virtual {v15}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;-><init>(Landroid/view/ThreadedRenderer;)V

    move-object v4, v1

    .line 416
    .local v4, "threadedRenderer":Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
    :goto_0
    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;-><init>(Landroid/view/ViewRootImpl;)V

    :goto_1
    move-object v5, v0

    .line 418
    .local v5, "viewRoot":Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    new-instance v6, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    invoke-direct {v6}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;-><init>()V

    .line 419
    .local v6, "surfaceControl":Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
    new-instance v7, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 420
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;-><init>(Landroid/view/Choreographer;)V

    .line 421
    .local v7, "choreographer":Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;
    new-instance v12, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;

    invoke-direct {v12, v14}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    .line 422
    .local v12, "eventsListener":Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;
    new-instance v8, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-direct {v8}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;-><init>()V

    .line 424
    .local v8, "frameMetrics":Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;
    new-instance v16, Lcom/android/internal/jank/FrameTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v9, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    invoke-direct {v9}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;-><init>()V

    iget v10, v14, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    iget v11, v14, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v13, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/jank/FrameTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Session;Landroid/os/Handler;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    return-object v16
.end method

.method public blacklist end(I)Z
    .locals 7
    .param p1, "cujType"    # I

    .line 568
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    .line 570
    .local v0, "tracker":Lcom/android/internal/jank/FrameTracker;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 572
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V

    .line 573
    .local v2, "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v2, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 575
    .local v3, "success":Z
    if-nez v3, :cond_1

    .line 576
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v1

    .line 579
    :cond_1
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 580
    .end local v2    # "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .end local v3    # "success":Z
    :catch_0
    move-exception v2

    .line 581
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Execute end task failed!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    return v1
.end method

.method public blacklist getPropertiesChangedListener()Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    return-object v0
.end method

.method public blacklist isInstrumenting(I)Z
    .locals 2
    .param p1, "cujType"    # I

    .line 466
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$begin$3$com-android-internal-jank-InteractionJankMonitor(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .locals 1
    .param p1, "result"    # Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .param p2, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 498
    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method synthetic blacklist lambda$beginInternal$4$com-android-internal-jank-InteractionJankMonitor(I)V
    .locals 1
    .param p1, "cujType"    # I

    .line 525
    const/16 v0, 0x13

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    return-void
.end method

.method synthetic blacklist lambda$cancel$6$com-android-internal-jank-InteractionJankMonitor(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V
    .locals 1
    .param p1, "result"    # Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .param p2, "cujType"    # I
    .param p3, "reason"    # I

    .line 621
    invoke-direct {p0, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor;->cancelInternal(II)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method synthetic blacklist lambda$createFrameTracker$1$com-android-internal-jank-InteractionJankMonitor(Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;
    .param p2, "act"    # Ljava/lang/String;

    .line 421
    invoke-direct {p0, p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->handleCujEvents(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    return-void
.end method

.method synthetic blacklist lambda$end$5$com-android-internal-jank-InteractionJankMonitor(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;I)V
    .locals 1
    .param p1, "result"    # Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .param p2, "cujType"    # I

    .line 574
    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->endInternal(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method synthetic blacklist lambda$handleCujEvents$2$com-android-internal-jank-InteractionJankMonitor(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .locals 1
    .param p1, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 436
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getCuj()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTimeout(I)V

    .line 437
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getCuj()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTracker(I)V

    .line 438
    return-void
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-jank-InteractionJankMonitor()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 394
    const-string v2, "interaction_jank_monitor"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 393
    invoke-interface {v0, v1}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public blacklist scheduleTimeoutAction(IJLjava/lang/Runnable;)V
    .locals 2
    .param p1, "cuj"    # I
    .param p2, "timeout"    # J
    .param p4, "action"    # Ljava/lang/Runnable;

    .line 555
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 558
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist shouldMonitor(I)Z
    .locals 4
    .param p1, "cujType"    # I

    .line 535
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    rem-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 536
    .local v0, "shouldSample":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 544
    :cond_1
    return v1

    .line 542
    :cond_2
    :goto_1
    return v2
.end method

.method public blacklist trigger(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .locals 2
    .param p1, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 686
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 688
    return-void
.end method
