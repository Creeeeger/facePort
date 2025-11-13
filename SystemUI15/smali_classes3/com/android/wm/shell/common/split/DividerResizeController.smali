.class public final Lcom/android/wm/shell/common/split/DividerResizeController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static USE_GUIDE_VIEW_EFFECTS:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDividerPosition:I

.field public mDefaultHandleMoveThreshold:I

.field public mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

.field public mDividerSize:I

.field public mDividerView:Lcom/android/wm/shell/common/split/DividerView;

.field public mHalfSplitStageType:I

.field public mIsFinishing:Z

.field public mIsHorizontalDivision:Z

.field public mIsResizing:Z

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

.field public mResizingRequested:Z

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mSyncAppsCallbackTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

.field public mSyncAppsId:I

.field public mUseGuideViewByMultiStar:Z

.field public mWaitingForSyncAppsCallback:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mUseGuideViewByMultiStar:Z

    new-instance v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;-><init>(Lcom/android/wm/shell/common/split/DividerResizeController;)V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    new-instance v0, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerResizeController;I)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mHalfSplitStageType:I

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsHorizontalDivision:Z

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "remove"

    const-string v4, "DividerResizeLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object v5, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object v5, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iput-object v1, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    iput-object v1, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iput-object v1, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iput-boolean v0, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    iput-boolean v0, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    iget-boolean v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    if-nez v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeWindow: failed, window isn\'t added, Callers="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-boolean v0, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    iput v0, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    iput-object v1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mHalfSplitStageType:I

    :cond_2
    return-void
.end method

.method public final finishResizing(I)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    const-string v1, "DividerResizeController"

    if-nez v0, :cond_0

    const-string p0, "finishResizing: failed, NOT resizing state!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    if-eqz v0, :cond_1

    const-string p0, "finishResizing: failed, already finishing state!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mCurrentDividerPosition:I

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    invoke-static {v2, p1}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->-$$Nest$mupdate(Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;I)V

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInStartDismissZone()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInEndDismissZone()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    goto :goto_1

    :cond_4
    iget p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    iget v4, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    if-ge p1, v4, :cond_5

    iget-object p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    goto :goto_1

    :cond_5
    iget v4, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    if-le p1, v4, :cond_6

    iget-object p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    goto :goto_1

    :cond_6
    iget-object v4, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    invoke-virtual {v4, p1, v3}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateSnapTarget(IZ)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    :goto_1
    iget v4, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    if-eqz v4, :cond_7

    move v5, v0

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    iget v6, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v7, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mCurrentDividerPosition:I

    if-eq v6, v7, :cond_8

    move v7, v0

    goto :goto_3

    :cond_8
    move v7, v3

    :goto_3
    iget-boolean v8, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    new-instance v9, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    invoke-direct {v9, v8, v6, v4}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;II)V

    invoke-virtual {v8}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->isReadyToShow()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v9}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->run()V

    goto :goto_4

    :cond_9
    iput-object v9, v8, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    const-string v4, "DividerResizeLayout"

    const-string v6, "onActionDrop: defer action drop, isn\'t ready to show yet"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v7, :cond_b

    iget-boolean v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "startWaitingForSyncAppsCallback: failed, already waiting!"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v4, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {v4, v6, v8, v9}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startWaitingForSyncAppsCallback: reason=resize_split, SyncId="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    invoke-static {v6, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_5

    :cond_b
    move v5, v0

    :goto_5
    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->shouldDeferRemove(Z)Z

    move-result v4

    goto :goto_6

    :cond_c
    move v4, v3

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "finishResizing: snapTargetPosition="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", positionChanged="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isInDismissZone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInStartDismissZone()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInEndDismissZone()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    move v0, v3

    :cond_e
    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", deferStopDragging="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/DividerResizeController;Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V

    if-eqz v4, :cond_f

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    :cond_f
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;->run()V

    :goto_8
    return-void
.end method

.method public final stopWaitingForSyncAppsCallback(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    const-string v3, "DividerResizeController"

    if-nez v2, :cond_0

    const-string/jumbo p0, "stopWaitingForSyncAppsCallback: failed, there is no waiting!"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stopWaitingForSyncAppsCallback: reason="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", SyncId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    invoke-static {p1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v2, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    if-eqz v3, :cond_1

    iget v4, v3, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, v1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$1;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$1;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-wide v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->WINDOW_ALPHA_ANIM_DURATION:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-instance p1, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerResizeController;I)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->shouldDeferRemove(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;->run()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
