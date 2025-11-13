.class public Lcom/android/internal/jank/InteractionJankMonitor;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$InstanceHolder;,
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration;,
        Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;,
        Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;,
        Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_PREFIX:Ljava/lang/String;

.field public static final blacklist ACTION_SESSION_CANCEL:Ljava/lang/String;

.field public static final blacklist ACTION_SESSION_END:Ljava/lang/String;

.field public static final blacklist CUJ_BIOMETRIC_PROMPT_TRANSITION:I = 0x38
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_ALL_APPS_SEARCH_BACK:I = 0x5f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_LAUNCH_APP_PAIR_FROM_TASKBAR:I = 0x5c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_LAUNCH_APP_PAIR_FROM_WORKSPACE:I = 0x5b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_SAVE_APP_PAIR:I = 0x5d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_TASKBAR_ALL_APPS_CLOSE_BACK:I = 0x60
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_TASKBAR_ALL_APPS_SEARCH_BACK:I = 0x61
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_WIDGET_BOTTOM_SHEET_CLOSE_BACK:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_WIDGET_EDU_SHEET_CLOSE_BACK:I = 0x65
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_WIDGET_PICKER_CLOSE_BACK:I = 0x62
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_WIDGET_PICKER_SEARCH_BACK:I = 0x63
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_CLOCK_MOVE_ANIMATION:I = 0x46
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_OCCLUSION:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_APPEAR:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_DISAPPEAR:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_APPEAR:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_DISAPPEAR:I = 0x15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PIN_APPEAR:I = 0x13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PIN_DISAPPEAR:I = 0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_FROM_AOD:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_TO_AOD:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_UNLOCK_ANIMATION:I = 0x1d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_ADD:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_APP_START:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_APPEAR:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_DISAPPEAR:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_REMOVE:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_EXPAND_COLLAPSE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_SCROLL_SWIPE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_EXPAND:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_SWIPE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_SCROLL_FLING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_PIP_TRANSITION:I = 0x23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_PREDICTIVE_BACK_CROSS_ACTIVITY:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_PREDICTIVE_BACK_CROSS_TASK:I = 0x55
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_PREDICTIVE_BACK_HOME:I = 0x56
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SCREEN_OFF:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SCREEN_OFF_SHOW_AOD:I = 0x29
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SETTINGS_PAGE_SCROLL:I = 0x1c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SETTINGS_SLIDER:I = 0x35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SETTINGS_TOGGLE:I = 0x39
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER:I = 0x1f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_QS_TILE:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON:I = 0x21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_CLEAR_ALL:I = 0x3e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_DIALOG_OPEN:I = 0x3a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SPLASHSCREEN_AVD:I = 0x26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SPLASHSCREEN_EXIT_ANIM:I = 0x27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SPLIT_SCREEN_DOUBLE_TAP_DIVIDER:I = 0x52
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SPLIT_SCREEN_RESIZE:I = 0x34
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP:I = 0x22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SUW_LOADING_SCREEN_FOR_STATUS:I = 0x30
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SUW_LOADING_TO_NEXT_FLOW:I = 0x2f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS:I = 0x2d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS:I = 0x2e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_TAKE_SCREENSHOT:I = 0x36
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_TASKBAR_COLLAPSE:I = 0x3d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_TASKBAR_EXPAND:I = 0x3c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_UNFOLD_ANIM:I = 0x2c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_USER_DIALOG_OPEN:I = 0x3b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_USER_SWITCH:I = 0x25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_VOLUME_CONTROL:I = 0x37
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist DEFAULT_DEBUG_OVERLAY_ENABLED:Z = false

.field private static final blacklist DEFAULT_ENABLED:Z

.field private static final blacklist DEFAULT_SAMPLING_INTERVAL:I = 0x1

.field private static final blacklist DEFAULT_TIMEOUT_MS:J

.field private static final blacklist DEFAULT_TRACE_THRESHOLD_FRAME_TIME_MILLIS:I = 0x40

.field private static final blacklist DEFAULT_TRACE_THRESHOLD_MISSED_FRAMES:I = 0x3

.field private static final blacklist DEFAULT_WORKER_NAME:Ljava/lang/String;

.field static final blacklist EXECUTOR_TASK_TIMEOUT:J = 0x1f4L

.field private static final blacklist MAX_LENGTH_SESSION_NAME:I = 0x64

.field private static final blacklist SETTINGS_DEBUG_OVERLAY_ENABLED_KEY:Ljava/lang/String; = "debug_overlay_enabled"

.field private static final blacklist SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final blacklist SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final blacklist SETTINGS_THRESHOLD_FRAME_TIME_MILLIS_KEY:Ljava/lang/String; = "trace_threshold_frame_time_millis"

.field private static final blacklist SETTINGS_THRESHOLD_MISSED_FRAMES_KEY:Ljava/lang/String; = "trace_threshold_missed_frames"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mDebugBgColor:I

.field private blacklist mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

.field private blacklist mDebugYOffset:D

.field private final blacklist mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

.field private volatile blacklist mEnabled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRunningTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSamplingInterval:I

.field private blacklist mTraceThresholdFrameTimeMillis:I

.field private blacklist mTraceThresholdMissedFrames:I

.field private final blacklist mWorker:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$1H-AjAXc0amUzxB-nS7LQgEmepk(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$begin$2(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2OwsMSNHWzY8kGI7JUtxMziIFyQ(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$beginInternal$4(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9oh6FeI31KDrZz58JdrabS34-B4(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$end$6(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GO9QS63m2H7cb_mfuOrfZQon-m8(Lcom/android/internal/jank/InteractionJankMonitor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TYoMgVd2aY0Jj4m947rAwPJ7LWo(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$cancel$8(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yherwrn8RTaFXzcNjhm1YoyYrAg(Lcom/android/internal/jank/InteractionJankMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$beginInternal$3(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWorker(Lcom/android/internal/jank/InteractionJankMonitor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCujEvents(Lcom/android/internal/jank/InteractionJankMonitor;ILcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/jank/InteractionJankMonitor;->handleCujEvents(ILcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_TIMEOUT_MS()J
    .locals 2

    sget-wide v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_WORKER_NAME()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Worker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_SESSION_END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_SESSION_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/HandlerThread;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    const v0, -0xff0001

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugBgColor:I

    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugYOffset:D

    sget-boolean v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/jank/DisplayResolutionTracker;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/internal/jank/DisplayResolutionTracker;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing without READ_DEVICE_CONFIG permission. enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", missedFrameThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", frameTimeThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    const-string/jumbo v3, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor;->shouldMonitor()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->putTrackerIfNoCurrent(ILjava/util/function/Supplier;)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v2, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v2}, Lcom/android/internal/jank/FrameTracker;->begin()V

    iget-object v2, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iget-object v3, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTimeoutAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor;->scheduleTimeoutAction(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist cancelInternal(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTrackerIfCurrent(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v0, p2}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist endInternal(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTrackerIfCurrent(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/FrameTracker;->end(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/jank/InteractionJankMonitor;
    .locals 1

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor$InstanceHolder;->INSTANCE:Lcom/android/internal/jank/InteractionJankMonitor;

    return-object v0
.end method

.method public static blacklist getNameOfCuj(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNameOfInteraction(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/internal/jank/Cuj;->getNameOfInteraction(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getTracker(I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleCujEvents(ILcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p3, p4}, Lcom/android/internal/jank/InteractionJankMonitor;->needRemoveTasks(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTrackerIfCurrent(ILcom/android/internal/jank/FrameTracker;I)Z

    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$begin$1(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;JJJ)V
    .locals 8

    invoke-static {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;

    move-result-object v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/jank/EventLogTags;->writeJankCujEventsBeginRequest(IJJJLjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$begin$2(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$beginInternal$3(I)V
    .locals 1

    const/16 v0, 0x13

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    return-void
.end method

.method private synthetic blacklist lambda$beginInternal$4(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .locals 3

    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;I)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$cancel$7(IJJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/jank/EventLogTags;->writeJankCujEventsCancelRequest(IJJJ)V

    return-void
.end method

.method private synthetic blacklist lambda$cancel$8(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor;->cancelInternal(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$end$5(IJJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/jank/EventLogTags;->writeJankCujEventsEndRequest(IJJJ)V

    return-void
.end method

.method private synthetic blacklist lambda$end$6(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->endInternal(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "interaction_jank_monitor"

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get properties: READ_DEVICE_CONFIG granted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$postEventLogToWorkerThread$9(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;JJJ)V
    .locals 0

    invoke-interface/range {p0 .. p6}, Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;->invoke(JJJ)V

    return-void
.end method

.method private static blacklist needRemoveTasks(Ljava/lang/String;I)Z
    .locals 4

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    if-eq p1, v3, :cond_1

    const/16 v3, 0x13

    if-eq p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

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

.method private blacklist postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V
    .locals 19

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v13

    move-object/from16 v15, p0

    iget-object v11, v15, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    new-instance v12, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;

    move-object v5, v12

    move-object/from16 v6, p1

    move-wide v7, v1

    move-wide v9, v3

    move-object/from16 v16, v0

    move-wide/from16 v17, v1

    move-object v0, v11

    move-object v1, v12

    move-wide v11, v13

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;JJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist putTrackerIfNoCurrent(ILjava/util/function/Supplier;)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;",
            ">;)",
            "Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    if-nez v1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->onTrackerAdded(ILcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removeTrackerIfCurrent(ILcom/android/internal/jank/FrameTracker;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTimeoutAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p3, v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->onTrackerRemoved(IILandroid/util/SparseArray;)V

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removeTrackerIfCurrent(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z
    .locals 2

    iget-object v0, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-static {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v0

    iget-object v1, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTrackerIfCurrent(ILcom/android/internal/jank/FrameTracker;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist begin(Landroid/view/View;I)Z
    .locals 3

    :try_start_0
    invoke-static {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Build configuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->build()Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    move-result-object v1

    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    invoke-direct {p0, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V

    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Build configuration failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public blacklist cancel(I)Z
    .locals 1

    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    move-result v0

    return v0
.end method

.method public blacklist cancel(II)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V

    iget-object v3, v0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v2, v0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Execute cancel task failed!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist configDebugOverlay(ID)V
    .locals 0

    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugBgColor:I

    iput-wide p2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugYOffset:D

    return-void
.end method

.method public blacklist createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Lcom/android/internal/jank/FrameTracker;
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    invoke-virtual {v1}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;-><init>(Landroid/view/ThreadedRenderer;)V

    move-object v7, v3

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;-><init>(Landroid/view/ViewRootImpl;)V

    :goto_1
    move-object v8, v2

    new-instance v9, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    invoke-direct {v9}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;-><init>()V

    new-instance v10, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;-><init>(Landroid/view/Choreographer;)V

    new-instance v15, Lcom/android/internal/jank/InteractionJankMonitor$1;

    move-object/from16 v2, p1

    invoke-direct {v15, v0, v2}, Lcom/android/internal/jank/InteractionJankMonitor$1;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    new-instance v11, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-direct {v11}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;-><init>()V

    new-instance v3, Lcom/android/internal/jank/FrameTracker;

    new-instance v12, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget-object v4, v0, Lcom/android/internal/jank/InteractionJankMonitor;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-direct {v12, v4}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;-><init>(Lcom/android/internal/jank/DisplayResolutionTracker;)V

    iget v13, v0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    iget v14, v0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    move-object v5, v3

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v15}, Lcom/android/internal/jank/FrameTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;)V

    return-object v3
.end method

.method public blacklist end(I)Z
    .locals 7

    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V

    iget-object v3, v0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Execute end task failed!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist isInstrumenting(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist scheduleTimeoutAction(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public blacklist shouldMonitor()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .locals 8

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "trace_threshold_missed_frames"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_2

    :sswitch_1
    const-string v2, "debug_overlay_enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_2
    const-string/jumbo v2, "sampling_interval"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_2

    :sswitch_3
    const-string/jumbo v2, "trace_threshold_frame_time_millis"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_4
    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got a change event for an unknown property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_0
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v5

    goto :goto_3

    :cond_1
    nop

    :goto_3
    move v2, v4

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    iget-object v4, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugBgColor:I

    iget-wide v6, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugYOffset:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;-><init>(Ljava/lang/Object;ID)V

    iput-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    goto :goto_4

    :cond_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->dispose()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    :cond_3
    :goto_4
    goto :goto_5

    :pswitch_1
    sget-boolean v2, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    goto :goto_5

    :pswitch_2
    nop

    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    goto :goto_5

    :pswitch_3
    nop

    invoke-virtual {p1, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    goto :goto_5

    :pswitch_4
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    :goto_5
    goto/16 :goto_0

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ff074bf -> :sswitch_4
        -0x1bae52a8 -> :sswitch_3
        -0x59dc5e3 -> :sswitch_2
        0x446b0c66 -> :sswitch_1
        0x5ebc60fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
