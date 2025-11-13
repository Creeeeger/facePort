.class Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
.super Ljava/lang/Object;
.source "InteractionMonitorDebugOverlay.java"

# interfaces
.implements Landroid/view/WindowCallbacks;


# static fields
.field private static final blacklist REASON_STILL_RUNNING:I = -0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "InteractionMonitorDebug"

.field private static final blacklist TRACK_NAME:Ljava/lang/String; = "InteractionJankMonitor"


# instance fields
.field private final blacklist mBgColor:I

.field private final blacklist mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final blacklist mDebugPaint:Landroid/graphics/Paint;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRunningCujs:Landroid/util/SparseIntArray;

.field private blacklist mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

.field private final blacklist mYOffset:D


# direct methods
.method public static synthetic blacklist $r8$lambda$B_z1-Ij7mBvEMPj_kFkYy0Xgvyk(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->lambda$dispose$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d8gXR42MY5Dce79P26xijBsbFaY(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->lambda$attachViewRootIfNeeded$1(Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dkSQX-aJODGWRrTiB5PsrkCThzI(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->lambda$forceRedraw$2()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;ID)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mLock:Ljava/lang/Object;

    iput p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mBgColor:I

    iput-wide p3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mYOffset:D

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private blacklist attachViewRootIfNeeded(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->getViewRoot()Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "InteractionJankMonitor"

    const-string v3, "DEBUG_OVERLAY_DRAW"

    const-wide/16 v4, 0x1000

    invoke-static {v4, v5, v1, v3, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->forceRedraw()V

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2
.end method

.method private blacklist dipToPx(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->dipToPx(I)I

    move-result v0

    return v0

    :cond_0
    return p1
.end method

.method private blacklist forceRedraw()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private blacklist getTextHeight(I)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private blacklist getWidthOfLongestCujName(I)F
    .locals 5

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic blacklist lambda$attachViewRootIfNeeded$1(Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    return-void
.end method

.method private synthetic blacklist lambda$dispose$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    return-void
.end method

.method private synthetic blacklist lambda$forceRedraw$2()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->requestInvalidateRootRenderNode()V

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method blacklist dispose()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->forceRedraw()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    const-string v0, "InteractionJankMonitor"

    const/4 v1, 0x0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public blacklist onContentDrawn(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->dipToPx(I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RecordingCanvas;->getHeight()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RecordingCanvas;->getWidth()I

    move-result v11

    int-to-double v2, v10

    iget-wide v4, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mYOffset:D

    mul-double/2addr v2, v4

    double-to-int v12, v2

    const/16 v0, 0xc

    invoke-direct {v1, v0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->dipToPx(I)I

    move-result v13

    const/16 v0, 0x12

    invoke-direct {v1, v0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->dipToPx(I)I

    move-result v14

    invoke-direct {v1, v14}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->getTextHeight(I)F

    move-result v15

    invoke-direct {v1, v13}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->getTextHeight(I)F

    move-result v7

    iget-object v6, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {v1, v14}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->getWidthOfLongestCujName(I)F

    move-result v0

    int-to-float v2, v11

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v5, v2

    int-to-float v2, v5

    int-to-float v3, v12

    invoke-virtual {v8, v2, v3}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    iget-object v2, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mBgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    neg-int v2, v9

    mul-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    neg-int v2, v9

    int-to-float v4, v2

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    add-float v16, v2, v0

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v7

    move/from16 v17, v0

    iget-object v0, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v15

    add-float/2addr v0, v2

    iget-object v2, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move/from16 v19, v5

    move/from16 v5, v16

    move-object/from16 v16, v6

    move v6, v0

    move/from16 v20, v9

    move v9, v7

    move-object/from16 v7, v18

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float v2, v13

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v0, v0, v5}, Landroid/graphics/RecordingCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float v5, v14

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    const/16 v6, -0x3e8

    if-ne v5, v6, :cond_0

    iget-object v6, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    iget-object v6, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    goto :goto_1

    :cond_1
    iget-object v6, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    :goto_1
    iget-object v6, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v0, v15}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    iget-object v7, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6, v0, v0, v7}, Landroid/graphics/RecordingCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v16

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v20, v9

    move v9, v7

    :goto_2
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public blacklist onRequestDraw(Z)V
    .locals 0

    return-void
.end method

.method blacklist onTrackerAdded(ILcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V
    .locals 4

    const-string v0, "InteractionMonitorDebug"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InteractionMonitorDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    const/16 v2, -0x3e8

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->attachViewRootIfNeeded(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)Z

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->forceRedraw()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist onTrackerRemoved(IILandroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const-string v1, "InteractionMonitorDebug"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "InteractionMonitorDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_0

    const-string v5, " ended"

    goto :goto_0

    :cond_0
    const-string v5, " cancelled"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    const/16 v3, -0x3e8

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    if-gez v2, :cond_3

    if-eqz v1, :cond_2

    const-string v2, "InteractionMonitorDebug"

    const-string v3, "All CUJs ended"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->dispose()V

    goto :goto_5

    :cond_3
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    iget-object v5, v5, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v5}, Lcom/android/internal/jank/FrameTracker;->getViewRoot()Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->dispose()V

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    invoke-direct {p0, v4}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->attachViewRootIfNeeded(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    goto :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->forceRedraw()V

    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onWindowDragResizeEnd()V
    .locals 0

    return-void
.end method

.method public blacklist onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public blacklist onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
