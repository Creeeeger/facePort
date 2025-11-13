.class public Lcom/android/internal/jank/FrameTracker;
.super Landroid/view/SurfaceControl$OnJankDataListener;
.source "FrameTracker.java"

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;,
        Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;,
        Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;,
        Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;,
        Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;,
        Lcom/android/internal/jank/FrameTracker$JankInfo;,
        Lcom/android/internal/jank/FrameTracker$Reasons;
    }
.end annotation


# static fields
.field private static final blacklist FLUSH_DELAY_MILLISECOND:I = 0x3c

.field private static final blacklist INVALID_ID:J = -0x1L

.field private static final blacklist MAX_FLUSH_ATTEMPTS:I = 0x3

.field private static final blacklist MAX_LENGTH_EVENT_DESC:I = 0x7f

.field public static final blacklist NANOS_IN_MILLISECOND:I = 0xf4240

.field static final blacklist REASON_CANCEL_NORMAL:I = 0x10

.field static final blacklist REASON_CANCEL_NOT_BEGUN:I = 0x11

.field static final blacklist REASON_CANCEL_SAME_VSYNC:I = 0x12

.field static final blacklist REASON_CANCEL_TIMEOUT:I = 0x13

.field static final blacklist REASON_END_NORMAL:I = 0x0

.field static final blacklist REASON_END_SURFACE_DESTROYED:I = 0x1

.field static final blacklist REASON_END_UNKNOWN:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FrameTracker"


# instance fields
.field private blacklist mBeginVsyncId:J

.field private blacklist mCancelled:Z

.field private final blacklist mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

.field private final blacklist mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

.field private final blacklist mDeferMonitoring:Z

.field private final blacklist mDisplayId:I

.field private blacklist mEndVsyncId:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mJankInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker$JankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

.field private blacklist mMetricsFinalized:Z

.field private final blacklist mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

.field private final blacklist mObserver:Landroid/graphics/HardwareRendererObserver;

.field private final blacklist mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

.field private final blacklist mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

.field private final blacklist mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

.field public final blacklist mSurfaceOnly:Z

.field private final blacklist mTraceThresholdFrameTimeMillis:I

.field private final blacklist mTraceThresholdMissedFrames:I

.field private blacklist mTracingStarted:Z

.field private final blacklist mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

.field private blacklist mWaitForFinishTimedOut:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$OVeLaqcN9IKIE5Wad60L5pZL8A0(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->lambda$onFrameMetricsAvailable$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dDKr_V-_msVAT9vJjSH5THIWrwU(Lcom/android/internal/jank/FrameTracker;[Landroid/view/SurfaceControl$JankData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/jank/FrameTracker;->lambda$onJankDataAvailable$0([Landroid/view/SurfaceControl$JankData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nODy56noZxnLNFzf_DRK46KMZpI(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;)V
    .locals 5

    invoke-direct {p0}, Landroid/view/SurfaceControl$OnJankDataListener;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->isSurfaceOnly()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    iput-object p4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    iput-object p7, p0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->shouldDeferMonitor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, p6

    :goto_1
    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, p3

    :goto_2
    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    new-instance v1, Landroid/graphics/HardwareRendererObserver;

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-virtual {v3}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3, v4, v0}, Landroid/graphics/HardwareRendererObserver;-><init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V

    :goto_3
    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    iput p8, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    iput p9, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    iput-object p10, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/FrameTracker;->mDisplayId:I

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_5
    new-instance v0, Lcom/android/internal/jank/FrameTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    :goto_4
    return-void
.end method

.method private blacklist beginInternal()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    const-string v1, "FT#beginVsync"

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "FT#layerId"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p0, v2}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V

    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    return-object v0
.end method

.method private blacklist finish()V
    .locals 32

    move-object/from16 v1, p0

    const-string v0, "/"

    iget-boolean v2, v1, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-nez v2, :cond_11

    iget-boolean v2, v1, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-eqz v2, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    iget-object v3, v1, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    iget-object v3, v1, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    int-to-long v3, v3

    const-string v5, "FT#finish"

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    iget-object v3, v1, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v14, v5

    move v6, v8

    move v5, v13

    move v8, v7

    move v13, v11

    move v11, v12

    move v12, v9

    :goto_0
    iget-object v7, v1, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_e

    iget-object v7, v1, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/jank/FrameTracker$JankInfo;

    iget-boolean v9, v1, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v9, :cond_1

    iget-boolean v9, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    if-eqz v9, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_2

    move/from16 v16, v2

    move-wide/from16 v20, v14

    move-object v15, v3

    goto/16 :goto_a

    :cond_2
    move-object/from16 v22, v3

    iget-wide v2, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    move-wide/from16 v23, v14

    iget-wide v14, v1, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v2, v2, v14

    if-lez v2, :cond_3

    move v3, v11

    move v2, v12

    move-object/from16 v15, v22

    move-wide/from16 v11, v23

    goto/16 :goto_b

    :cond_3
    iget-boolean v2, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    const-string v3, ", CUJ="

    const-string v14, "FrameTracker"

    if-eqz v2, :cond_b

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    iget v15, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    const-string v2, "Missed App frame:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v15, v22

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move/from16 v17, v2

    move-object/from16 v15, v22

    :goto_2
    move/from16 v17, v2

    iget v2, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    const/16 v16, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    iget v2, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    iget v2, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    iget v2, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_6

    iget v2, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v18, v4

    move/from16 v2, v17

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    const-string v4, "Missed SF frame:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_7

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_7
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v10, 0x0

    move v13, v10

    move v10, v4

    :goto_5
    iget v4, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    if-eqz v4, :cond_9

    iget v4, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    if-eq v4, v11, :cond_9

    if-nez v11, :cond_8

    iget v4, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    goto :goto_6

    :cond_8
    move/from16 v4, v16

    :goto_6
    move v11, v4

    :cond_9
    iget-boolean v4, v1, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v4, :cond_a

    iget-boolean v4, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-nez v4, :cond_a

    const-string v4, "FT#MissedHWUICallback"

    move/from16 v19, v8

    move/from16 v17, v9

    iget-wide v8, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-direct {v1, v4, v8, v9}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing HWUI jank callback for vsyncId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    move/from16 v19, v8

    move/from16 v17, v9

    :goto_7
    move/from16 v4, v18

    move/from16 v8, v19

    goto :goto_8

    :cond_b
    move/from16 v17, v9

    move-object/from16 v15, v22

    const/16 v16, 0x1

    :goto_8
    iget-boolean v2, v1, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v2, :cond_d

    iget-boolean v2, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v2, :cond_d

    move v2, v8

    iget-wide v8, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    move/from16 v18, v11

    move/from16 v19, v12

    move-wide/from16 v11, v23

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-boolean v11, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-nez v11, :cond_c

    const-string v11, "FT#MissedSFCallback"

    move-wide/from16 v20, v8

    iget-wide v8, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-direct {v1, v11, v8, v9}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing SF jank callback for vsyncId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v11, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_c
    move-wide/from16 v20, v8

    :goto_9
    move v8, v2

    move/from16 v11, v18

    move/from16 v12, v19

    goto :goto_a

    :cond_d
    move v2, v8

    move/from16 v18, v11

    move/from16 v19, v12

    move-wide/from16 v11, v23

    move v8, v2

    move-wide/from16 v20, v11

    move/from16 v11, v18

    move/from16 v12, v19

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move-object v3, v15

    move/from16 v2, v16

    move-wide/from16 v14, v20

    goto/16 :goto_0

    :cond_e
    move v2, v12

    move-wide/from16 v30, v14

    move-object v15, v3

    move v3, v11

    move-wide/from16 v11, v30

    :goto_b
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#missedFrames"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v9, 0x1000

    invoke-static {v9, v10, v5, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#missedAppFrames"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v5, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#missedSfFrames"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v5, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#totalFrames"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v5, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#maxFrameTimeMillis"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/32 v22, 0xf4240

    move/from16 v16, v2

    move/from16 v17, v3

    div-long v2, v11, v22

    long-to-int v2, v2

    invoke-static {v9, v10, v5, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#maxSuccessiveMissedFrames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v10, v2, v14}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v2, v1, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-eqz v2, :cond_f

    long-to-int v2, v11

    invoke-direct {v1, v8, v2}, Lcom/android/internal/jank/FrameTracker;->shouldTriggerPerfetto(II)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    iget-object v3, v1, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-interface {v2, v3}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->triggerPerfetto(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    :cond_f
    iget-object v2, v1, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->logToStatsd()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v5, v1, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget v7, v1, Lcom/android/internal/jank/FrameTracker;->mDisplayId:I

    iget-object v2, v1, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getStatsdInteractionType()I

    move-result v9

    int-to-long v2, v4

    move-wide/from16 v24, v11

    move/from16 v26, v17

    move-wide v10, v2

    int-to-long v2, v8

    move/from16 v27, v13

    move/from16 v1, v16

    move-wide v12, v2

    int-to-long v2, v1

    move-wide/from16 v16, v2

    int-to-long v2, v6

    move-wide/from16 v18, v2

    int-to-long v2, v14

    move-wide/from16 v20, v2

    const/16 v2, 0x131

    move v3, v6

    move v6, v2

    move v2, v8

    move/from16 v8, v26

    move/from16 v28, v2

    move/from16 v29, v14

    move-object v2, v15

    move-wide/from16 v14, v24

    invoke-virtual/range {v5 .. v21}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->write(IIIIJJJJJJ)V

    goto :goto_c

    :cond_10
    move v3, v6

    move/from16 v28, v8

    move-wide/from16 v24, v11

    move/from16 v27, v13

    move/from16 v29, v14

    move-object v2, v15

    move/from16 v1, v16

    move/from16 v26, v17

    :goto_c
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v7, v28

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-long v14, v24, v22

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v6, v29

    :try_start_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x1b

    invoke-static {v8, v0}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    move/from16 v6, v29

    goto :goto_d

    :catch_2
    move-exception v0

    move/from16 v7, v28

    move/from16 v6, v29

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void

    :cond_11
    :goto_f
    return-void
.end method

.method private blacklist hasReceivedCallbacksAfterEnd()Z
    .locals 9

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-wide v3, v0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v5, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_5

    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/FrameTracker$JankInfo;

    iget-wide v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v7, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    invoke-direct {p0, v4}, Lcom/android/internal/jank/FrameTracker;->callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private blacklist isInRange(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$onFrameMetricsAvailable$1()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-virtual {v4}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v4

    aget-wide v4, v4, v3

    invoke-direct {p0, v4, v5}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v4, v5}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    iput-boolean v3, v6, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    iput-wide v0, v6, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    iput-boolean v2, v6, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v7, v4

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic blacklist lambda$onJankDataAvailable$0([Landroid/view/SurfaceControl$JankData;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    iget-wide v3, v2, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    invoke-direct {p0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Landroid/view/SurfaceControl$JankData;->frameIntervalNs:J

    invoke-static {v3, v4}, Lcom/android/internal/jank/DisplayRefreshRate;->getRefreshRate(J)I

    move-result v3

    iget-wide v4, v2, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    invoke-direct {p0, v4, v5}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    iget v5, v2, Landroid/view/SurfaceControl$JankData;->jankType:I

    iput v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    iput v3, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    iget-wide v6, v2, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    long-to-int v6, v6

    iget-wide v7, v2, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    iget v9, v2, Landroid/view/SurfaceControl$JankData;->jankType:I

    invoke-static {v7, v8, v9, v3}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromSurfaceControlCallback(JII)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist markEvent(Ljava/lang/String;J)V
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s#%s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "The length of the trace event description <%s> exceeds %d"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist notifyCujEvent(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->onCujEvents(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist processJankInfos()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->hasReceivedCallbacksAfterEnd()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    return-void
.end method

.method private blacklist shouldTriggerPerfetto(II)Z
    .locals 5

    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    if-lt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    if-eq v4, v3, :cond_1

    iget v3, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    const v4, 0xf4240

    mul-int/2addr v3, v4

    if-lt p2, v3, :cond_1

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


# virtual methods
.method public blacklist begin()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    :cond_1
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-string v2, "FT#deferMonitoring"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    new-instance v2, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/jank/FrameTracker;->postTraceStartMarker(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist cancel(I)Z
    .locals 7

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    const-string v1, "FT#cancel"

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v3, v3

    const-wide/16 v4, 0x1000

    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;I)V

    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method public blacklist end(I)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v0

    return v0

    :cond_1
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FT#end"

    int-to-long v2, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    const-string v1, "FT#endVsync"

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    new-instance v1, Lcom/android/internal/jank/FrameTracker$2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/jank/FrameTracker$2;-><init>(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;I)V

    const/4 v1, 0x1

    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getThreadedRenderer()Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    return-object v0
.end method

.method blacklist getViewRoot()Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    return-object v0
.end method

.method public blacklist onFrameMetricsAvailable(I)V
    .locals 1

    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onJankDataAvailable([Landroid/view/SurfaceControl$JankData;)V
    .locals 1

    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/FrameTracker;[Landroid/view/SurfaceControl$JankData;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist postCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist postTraceStartMarker(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->-$$Nest$fgetmChoreographer(Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;)Landroid/view/Choreographer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist removeObservers()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->removeJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;)V

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    :cond_0
    return-void
.end method
