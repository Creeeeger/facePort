.class public final synthetic Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerResizeController;

.field public final synthetic f$1:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeController;Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/split/DividerResizeController;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz v4, :cond_0

    iget-boolean v4, v4, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget v5, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->snapPosition:I

    const/16 v6, 0xb

    const/4 v7, 0x4

    if-eq v5, v6, :cond_6

    const/16 v6, 0xc

    if-eq v5, v6, :cond_5

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v6, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v8, v7, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const-string v9, "GuideViewEffects"

    if-eqz v8, :cond_2

    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v7, :cond_1

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v7, v3, v9}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :cond_1
    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v7, :cond_2

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v7, v3, v9}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :cond_2
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v7, :cond_3

    iget-object v6, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v7, v6, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v7, :cond_3

    iget-object v6, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v6, :cond_3

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v6, v3, v9}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :cond_3
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1, p0, v5, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1, p0, v5, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    goto :goto_1

    :cond_5
    iget-object p0, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    sget-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    invoke-virtual {p0, v7, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSnappedToDismiss(IZZ)V

    goto :goto_1

    :cond_6
    iget-object p0, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    sget-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    invoke-virtual {p0, v7, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSnappedToDismiss(IZZ)V

    :goto_1
    iget-object p0, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanging(Lcom/android/wm/shell/common/split/SplitLayout;IIZ)V

    iget-boolean p0, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    if-eqz p0, :cond_7

    const-string p0, "DividerResizeController"

    const-string v0, "onStopDraggingFinished: WaitingForSyncAppsCallback"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerResizeController;->clear()V

    :goto_2
    return-void
.end method
