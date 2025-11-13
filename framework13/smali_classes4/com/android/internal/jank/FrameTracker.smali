.class public Lcom/android/internal/jank/FrameTracker;
.super Landroid/view/SurfaceControl$OnJankDataListener;
.source "FrameTracker.java"

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;,
        Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;,
        Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;,
        Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;,
        Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;,
        Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;,
        Lcom/android/internal/jank/FrameTracker$JankInfo;,
        Lcom/android/internal/jank/FrameTracker$Reasons;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist INVALID_ID:J = -0x1L

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

.field private final blacklist mDeferMonitoring:Z

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

.field public final blacklist mMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field private final blacklist mObserver:Landroid/graphics/HardwareRendererObserver;

.field private final blacklist mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

.field private final blacklist mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

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
.method public static synthetic blacklist $r8$lambda$yUh_IPnq4vh9-DHGeZ74lqvEy84(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    return-wide v0
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

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Session;Landroid/os/Handler;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .locals 13
    .param p1, "monitor"    # Lcom/android/internal/jank/InteractionJankMonitor;
    .param p2, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "renderer"    # Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
    .param p5, "viewRootWrapper"    # Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .param p6, "surfaceControlWrapper"    # Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
    .param p7, "choreographer"    # Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;
    .param p8, "metrics"    # Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;
    .param p9, "statsLog"    # Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;
    .param p10, "traceThresholdMissedFrames"    # I
    .param p11, "traceThresholdFrameTimeMillis"    # I
    .param p12, "listener"    # Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;
    .param p13, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 192
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct {p0}, Landroid/view/SurfaceControl$OnJankDataListener;-><init>()V

    .line 97
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    .line 112
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 113
    iput-wide v2, v0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 116
    iput-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 193
    move-object v3, p1

    iput-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 194
    invoke-virtual/range {p13 .. p13}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->isSurfaceOnly()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    .line 195
    move-object v5, p2

    iput-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 196
    iput-object v1, v0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    .line 197
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 198
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    .line 199
    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    .line 200
    invoke-virtual/range {p13 .. p13}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->shouldDeferMonitor()Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    .line 203
    const/4 v9, 0x0

    if-eqz v4, :cond_0

    move-object v10, v9

    goto :goto_0

    :cond_0
    move-object/from16 v10, p4

    :goto_0
    iput-object v10, v0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    .line 204
    if-eqz v4, :cond_1

    move-object v10, v9

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    iput-object v10, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 205
    if-eqz v4, :cond_2

    move-object v11, v9

    goto :goto_2

    :cond_2
    move-object/from16 v11, p5

    :goto_2
    iput-object v11, v0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    .line 206
    if-eqz v4, :cond_3

    .line 207
    move-object v12, v9

    goto :goto_3

    .line 208
    :cond_3
    new-instance v12, Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v10}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v10

    invoke-direct {v12, p0, v10, v1, v2}, Landroid/graphics/HardwareRendererObserver;-><init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V

    :goto_3
    iput-object v12, v0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    .line 211
    move/from16 v2, p10

    iput v2, v0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    .line 212
    move/from16 v10, p11

    iput v10, v0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    .line 213
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    .line 215
    if-eqz v4, :cond_4

    .line 216
    invoke-virtual/range {p13 .. p13}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 217
    iput-object v9, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    goto :goto_4

    .line 221
    :cond_4
    invoke-virtual {v11}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 222
    invoke-virtual {v11}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 225
    :cond_5
    new-instance v4, Lcom/android/internal/jank/FrameTracker$1;

    invoke-direct {v4, p0}, Lcom/android/internal/jank/FrameTracker$1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    .line 264
    invoke-virtual {v11, v4}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 266
    :goto_4
    return-void
.end method

.method private blacklist beginInternal()V
    .locals 4

    .line 318
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 322
    const-string v0, "FT#begin"

    invoke-direct {p0, v0}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V

    .line 325
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 328
    :cond_1
    return-void

    .line 319
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 513
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v0, :cond_0

    .line 514
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    goto :goto_0

    .line 515
    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 513
    :goto_0
    return v0
.end method

.method private blacklist findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 2
    .param p1, "frameVsyncId"    # J

    .line 437
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    return-object v0
.end method

.method private blacklist finish()V
    .locals 28

    .line 520
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 521
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 522
    iget-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-eqz v1, :cond_0

    goto/16 :goto_9

    .line 523
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FT#finish#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, "totalFramesCount":I
    const-wide/16 v3, 0x0

    .line 531
    .local v3, "maxFrameTimeNanos":J
    const/4 v5, 0x0

    .line 532
    .local v5, "missedFramesCount":I
    const/4 v6, 0x0

    .line 533
    .local v6, "missedAppFramesCount":I
    const/4 v7, 0x0

    .line 534
    .local v7, "missedSfFramesCount":I
    const/4 v8, 0x0

    .line 535
    .local v8, "maxSuccessiveMissedFramesCount":I
    const/4 v9, 0x0

    .line 537
    .local v9, "successiveMissedFramesCount":I
    const/4 v10, 0x0

    move-wide v14, v3

    move v12, v5

    move v13, v6

    move v11, v9

    move v3, v10

    move v10, v7

    .end local v5    # "missedFramesCount":I
    .end local v6    # "missedAppFramesCount":I
    .end local v7    # "missedSfFramesCount":I
    .end local v9    # "successiveMissedFramesCount":I
    .local v3, "i":I
    .local v10, "missedSfFramesCount":I
    .local v11, "successiveMissedFramesCount":I
    .local v12, "missedFramesCount":I
    .local v13, "missedAppFramesCount":I
    .local v14, "maxFrameTimeNanos":J
    :goto_0
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 538
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 539
    .local v4, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    iget-boolean v5, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v5, :cond_1

    iget-boolean v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 540
    .local v5, "isFirstDrawn":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 541
    goto/16 :goto_6

    .line 543
    :cond_2
    iget-wide v6, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    move/from16 v18, v2

    .end local v2    # "totalFramesCount":I
    .local v18, "totalFramesCount":I
    iget-wide v1, v0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v1, v6, v1

    if-lez v1, :cond_3

    .line 544
    goto/16 :goto_7

    .line 546
    :cond_3
    iget-boolean v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    const-string v2, ", CUJ="

    const-string v6, "FrameTracker"

    if-eqz v1, :cond_9

    .line 547
    add-int/lit8 v1, v18, 0x1

    .line 548
    .end local v18    # "totalFramesCount":I
    .local v1, "totalFramesCount":I
    const/4 v7, 0x0

    .line 549
    .local v7, "missedFrame":Z
    iget v9, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_4

    .line 550
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    .end local v1    # "totalFramesCount":I
    .local v17, "totalFramesCount":I
    const-string v1, "Missed App frame:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v9}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    add-int/lit8 v13, v13, 0x1

    .line 552
    const/4 v7, 0x1

    goto :goto_2

    .line 549
    .end local v17    # "totalFramesCount":I
    .restart local v1    # "totalFramesCount":I
    :cond_4
    move/from16 v17, v1

    .line 554
    .end local v1    # "totalFramesCount":I
    .restart local v17    # "totalFramesCount":I
    :goto_2
    iget v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    const/4 v9, 0x1

    and-int/2addr v1, v9

    if-nez v1, :cond_5

    iget v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    iget v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    iget v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_5

    iget v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 559
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missed SF frame:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v9}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    add-int/lit8 v10, v10, 0x1

    .line 561
    const/4 v7, 0x1

    .line 563
    :cond_6
    if-eqz v7, :cond_7

    .line 564
    add-int/lit8 v12, v12, 0x1

    .line 565
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 567
    :cond_7
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 569
    const/4 v1, 0x0

    move v11, v1

    .line 573
    :goto_3
    iget-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v1, :cond_8

    iget-boolean v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-nez v1, :cond_8

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing HWUI jank callback for vsyncId: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v9, v7

    move/from16 v18, v8

    .end local v7    # "missedFrame":Z
    .end local v8    # "maxSuccessiveMissedFramesCount":I
    .local v9, "missedFrame":Z
    .local v18, "maxSuccessiveMissedFramesCount":I
    iget-wide v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 575
    invoke-virtual {v7}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 573
    .end local v9    # "missedFrame":Z
    .end local v18    # "maxSuccessiveMissedFramesCount":I
    .restart local v7    # "missedFrame":Z
    .restart local v8    # "maxSuccessiveMissedFramesCount":I
    :cond_8
    move v9, v7

    move/from16 v18, v8

    .line 578
    .end local v7    # "missedFrame":Z
    .end local v8    # "maxSuccessiveMissedFramesCount":I
    .restart local v18    # "maxSuccessiveMissedFramesCount":I
    :goto_4
    move/from16 v8, v18

    goto :goto_5

    .line 546
    .end local v17    # "totalFramesCount":I
    .restart local v8    # "maxSuccessiveMissedFramesCount":I
    .local v18, "totalFramesCount":I
    :cond_9
    move/from16 v17, v18

    .line 578
    .end local v18    # "totalFramesCount":I
    .restart local v17    # "totalFramesCount":I
    :goto_5
    iget-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v1, :cond_b

    iget-boolean v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v1, :cond_b

    .line 579
    move v1, v8

    .end local v8    # "maxSuccessiveMissedFramesCount":I
    .local v1, "maxSuccessiveMissedFramesCount":I
    iget-wide v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 580
    .end local v14    # "maxFrameTimeNanos":J
    .local v7, "maxFrameTimeNanos":J
    iget-boolean v9, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-nez v9, :cond_a

    .line 581
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing SF jank callback for vsyncId: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v14, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 582
    invoke-virtual {v9}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    .end local v5    # "isFirstDrawn":Z
    :cond_a
    move-wide v14, v7

    move/from16 v2, v17

    move v8, v1

    goto :goto_6

    .line 578
    .end local v1    # "maxSuccessiveMissedFramesCount":I
    .end local v7    # "maxFrameTimeNanos":J
    .restart local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    .restart local v5    # "isFirstDrawn":Z
    .restart local v8    # "maxSuccessiveMissedFramesCount":I
    .restart local v14    # "maxFrameTimeNanos":J
    :cond_b
    move v1, v8

    .line 537
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    .end local v5    # "isFirstDrawn":Z
    .end local v8    # "maxSuccessiveMissedFramesCount":I
    .restart local v1    # "maxSuccessiveMissedFramesCount":I
    move v8, v1

    move/from16 v2, v17

    .end local v1    # "maxSuccessiveMissedFramesCount":I
    .end local v17    # "totalFramesCount":I
    .restart local v2    # "totalFramesCount":I
    .restart local v8    # "maxSuccessiveMissedFramesCount":I
    :goto_6
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    move/from16 v18, v2

    .line 586
    .end local v2    # "totalFramesCount":I
    .end local v3    # "i":I
    .restart local v18    # "totalFramesCount":I
    :goto_7
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 590
    .end local v8    # "maxSuccessiveMissedFramesCount":I
    .restart local v1    # "maxSuccessiveMissedFramesCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#missedFrames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v2, v12}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#missedAppFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v13}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#missedSfFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v10}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#totalFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v8, v18

    .end local v18    # "totalFramesCount":I
    .local v8, "totalFramesCount":I
    invoke-static {v3, v4, v2, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#maxFrameTimeMillis"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0xf4240

    div-long v5, v14, v5

    long-to-int v5, v5

    invoke-static {v3, v4, v2, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#maxSuccessiveMissedFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 604
    long-to-int v2, v14

    invoke-direct {v0, v12, v2}, Lcom/android/internal/jank/FrameTracker;->shouldTriggerPerfetto(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/jank/FrameTracker;->triggerPerfetto()V

    .line 607
    :cond_d
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->logToStatsd()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 608
    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 610
    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getStatsdInteractionType()I

    move-result v5

    int-to-long v6, v8

    move v9, v5

    int-to-long v4, v12

    move-wide/from16 v16, v4

    int-to-long v4, v10

    move-wide/from16 v18, v4

    int-to-long v4, v13

    move-wide/from16 v20, v4

    int-to-long v4, v1

    .line 608
    move-wide/from16 v22, v4

    const/16 v2, 0x131

    move v4, v2

    move v5, v9

    move v2, v8

    .end local v8    # "totalFramesCount":I
    .restart local v2    # "totalFramesCount":I
    move-wide/from16 v8, v16

    move/from16 v24, v10

    move/from16 v25, v11

    .end local v10    # "missedSfFramesCount":I
    .end local v11    # "successiveMissedFramesCount":I
    .local v24, "missedSfFramesCount":I
    .local v25, "successiveMissedFramesCount":I
    move-wide v10, v14

    move/from16 v26, v12

    move/from16 v27, v13

    .end local v12    # "missedFramesCount":I
    .end local v13    # "missedAppFramesCount":I
    .local v26, "missedFramesCount":I
    .local v27, "missedAppFramesCount":I
    move-wide/from16 v12, v18

    move-wide/from16 v18, v14

    .end local v14    # "maxFrameTimeNanos":J
    .local v18, "maxFrameTimeNanos":J
    move-wide/from16 v14, v20

    move-wide/from16 v16, v22

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->write(IIJJJJJJ)V

    goto :goto_8

    .line 607
    .end local v2    # "totalFramesCount":I
    .end local v18    # "maxFrameTimeNanos":J
    .end local v24    # "missedSfFramesCount":I
    .end local v25    # "successiveMissedFramesCount":I
    .end local v26    # "missedFramesCount":I
    .end local v27    # "missedAppFramesCount":I
    .restart local v8    # "totalFramesCount":I
    .restart local v10    # "missedSfFramesCount":I
    .restart local v11    # "successiveMissedFramesCount":I
    .restart local v12    # "missedFramesCount":I
    .restart local v13    # "missedAppFramesCount":I
    .restart local v14    # "maxFrameTimeNanos":J
    :cond_e
    move v2, v8

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move-wide/from16 v18, v14

    .line 628
    .end local v8    # "totalFramesCount":I
    .end local v10    # "missedSfFramesCount":I
    .end local v11    # "successiveMissedFramesCount":I
    .end local v12    # "missedFramesCount":I
    .end local v13    # "missedAppFramesCount":I
    .end local v14    # "maxFrameTimeNanos":J
    .restart local v2    # "totalFramesCount":I
    .restart local v18    # "maxFrameTimeNanos":J
    .restart local v24    # "missedSfFramesCount":I
    .restart local v25    # "successiveMissedFramesCount":I
    .restart local v26    # "missedFramesCount":I
    .restart local v27    # "missedAppFramesCount":I
    :goto_8
    return-void

    .line 522
    .end local v1    # "maxSuccessiveMissedFramesCount":I
    .end local v2    # "totalFramesCount":I
    .end local v18    # "maxFrameTimeNanos":J
    .end local v24    # "missedSfFramesCount":I
    .end local v25    # "successiveMissedFramesCount":I
    .end local v26    # "missedFramesCount":I
    .end local v27    # "missedAppFramesCount":I
    :cond_f
    :goto_9
    return-void
.end method

.method private blacklist hasReceivedCallbacksAfterEnd()Z
    .locals 9

    .line 480
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 481
    return v1

    .line 483
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

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 484
    .local v0, "last":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :goto_0
    if-nez v0, :cond_2

    .line 485
    return v1

    .line 487
    :cond_2
    iget-wide v3, v0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v5, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 488
    return v1

    .line 490
    :cond_3
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 491
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 492
    .local v4, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    iget-wide v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v7, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    .line 493
    invoke-direct {p0, v4}, Lcom/android/internal/jank/FrameTracker;->callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 494
    return v2

    .line 490
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 498
    .end local v3    # "i":I
    :cond_5
    return v1
.end method

.method private blacklist isInRange(J)Z
    .locals 2
    .param p1, "vsyncId"    # J

    .line 444
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

.method private blacklist markEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;

    .line 394
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "%s#%s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 396
    return-void
.end method

.method private blacklist notifyCujEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->onCujEvents(Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method private blacklist processJankInfos()V
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    .line 504
    return-void

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->hasReceivedCallbacksAfterEnd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    return-void

    .line 509
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    .line 510
    return-void
.end method

.method private blacklist shouldTriggerPerfetto(II)Z
    .locals 5
    .param p1, "missedFramesCount"    # I
    .param p2, "maxFrameTimeNanos"    # I

    .line 631
    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    if-lt p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 633
    .local v0, "overMissedFramesThreshold":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    if-eq v4, v1, :cond_1

    const v1, 0xf4240

    mul-int/2addr v4, v1

    if-lt p2, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 635
    .local v1, "overFrameTimeThreshold":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    return v2
.end method


# virtual methods
.method public blacklist begin()V
    .locals 6

    .line 278
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v0

    .line 282
    .local v0, "currentVsync":J
    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 283
    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3

    .line 290
    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 291
    const-string v2, "FT#deferMonitoring"

    invoke-direct {p0, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 294
    new-instance v2, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/jank/FrameTracker;->postTraceStartMarker(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 298
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    .line 306
    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist cancel(I)Z
    .locals 7
    .param p1, "reason"    # I

    .line 371
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-eq p1, v2, :cond_1

    const/16 v2, 0x12

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 373
    .local v2, "cancelFromEnd":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    goto :goto_2

    .line 374
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FT#cancel#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 377
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v3, v3

    invoke-static {v0, v3}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 386
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->setReason(I)V

    .line 389
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;)V

    .line 390
    return v1

    .line 373
    :cond_4
    :goto_2
    return v0
.end method

.method public blacklist end(I)Z
    .locals 6
    .param p1, "reason"    # I

    .line 335
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 340
    iget-wide v4, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 341
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v0

    return v0

    .line 342
    :cond_1
    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    .line 343
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v0

    return v0

    .line 349
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FT#end#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->setReason(I)V

    .line 356
    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method synthetic blacklist lambda$end$0$com-android-internal-jank-FrameTracker()V
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force finish cuj because of time out:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    .line 359
    return-void
.end method

.method synthetic blacklist lambda$onFrameMetricsAvailable$2$com-android-internal-jank-FrameTracker()V
    .locals 9

    .line 450
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v0

    .line 458
    .local v0, "totalDurationNanos":J
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

    .line 459
    .local v2, "isFirstFrame":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 460
    invoke-virtual {v4}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v4

    aget-wide v4, v4, v3

    .line 462
    .local v4, "frameVsyncId":J
    invoke-direct {p0, v4, v5}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v6

    if-nez v6, :cond_2

    .line 463
    return-void

    .line 465
    :cond_2
    invoke-direct {p0, v4, v5}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v6

    .line 466
    .local v6, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    if-eqz v6, :cond_3

    .line 467
    iput-boolean v3, v6, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    .line 468
    iput-wide v0, v6, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    .line 469
    iput-boolean v2, v6, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    goto :goto_1

    .line 471
    :cond_3
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v7, v4

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V

    .line 475
    return-void

    .line 451
    .end local v0    # "totalDurationNanos":J
    .end local v2    # "isFirstFrame":Z
    .end local v4    # "frameVsyncId":J
    .end local v6    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :cond_4
    :goto_2
    return-void
.end method

.method synthetic blacklist lambda$onJankDataAvailable$1$com-android-internal-jank-FrameTracker([Landroid/view/SurfaceControl$JankData;)V
    .locals 9
    .param p1, "jankData"    # [Landroid/view/SurfaceControl$JankData;

    .line 406
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 410
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 411
    .local v2, "jankStat":Landroid/view/SurfaceControl$JankData;
    iget-wide v3, v2, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    invoke-direct {p0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 412
    goto :goto_1

    .line 414
    :cond_1
    iget-wide v3, v2, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    invoke-direct {p0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v3

    .line 415
    .local v3, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    if-eqz v3, :cond_2

    .line 416
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    .line 417
    iget v4, v2, Landroid/view/SurfaceControl$JankData;->jankType:I

    iput v4, v3, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    goto :goto_1

    .line 419
    :cond_2
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    iget-wide v5, v2, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    long-to-int v5, v5

    iget-wide v6, v2, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    iget v8, v2, Landroid/view/SurfaceControl$JankData;->jankType:I

    .line 420
    invoke-static {v6, v7, v8}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromSurfaceControlCallback(JI)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v6

    .line 419
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    .end local v2    # "jankStat":Landroid/view/SurfaceControl$JankData;
    .end local v3    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V

    .line 425
    return-void

    .line 407
    :cond_4
    :goto_2
    return-void
.end method

.method public blacklist onFrameMetricsAvailable(I)V
    .locals 1
    .param p1, "dropCountSinceLastInvocation"    # I

    .line 449
    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    .line 476
    return-void
.end method

.method public blacklist onJankDataAvailable([Landroid/view/SurfaceControl$JankData;)V
    .locals 1
    .param p1, "jankData"    # [Landroid/view/SurfaceControl$JankData;

    .line 405
    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker;[Landroid/view/SurfaceControl$JankData;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method public blacklist postCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method public blacklist postTraceStartMarker(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 313
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->-$$Nest$fgetmChoreographer(Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;)Landroid/view/Choreographer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public blacklist removeObservers()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->removeJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;)V

    .line 645
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 648
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    if-eqz v0, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 652
    :cond_0
    return-void
.end method

.method public blacklist triggerPerfetto()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->trigger(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    .line 659
    return-void
.end method
