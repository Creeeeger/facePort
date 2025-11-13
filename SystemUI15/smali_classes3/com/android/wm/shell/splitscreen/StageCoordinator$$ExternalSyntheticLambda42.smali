.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic f$1:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

.field public final synthetic f$10:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$2:Landroid/window/TransitionInfo$Change;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroid/window/TransitionInfo$Change;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Landroid/window/TransitionInfo$Change;

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;Landroid/window/TransitionInfo$Change;ZZZLandroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$1:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$2:Landroid/window/TransitionInfo$Change;

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$3:Z

    iput-boolean p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$4:Z

    iput-boolean p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$5:Z

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$6:Landroid/window/TransitionInfo$Change;

    iput-boolean p8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$7:Z

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$8:Landroid/window/TransitionInfo$Change;

    iput-boolean p10, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$9:Z

    iput-object p11, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$10:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$2:Landroid/window/TransitionInfo$Change;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$6:Landroid/window/TransitionInfo$Change;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$8:Landroid/window/TransitionInfo$Change;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$10:Landroid/window/WindowContainerTransaction;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$1:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget-boolean v5, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->notifySplitAnimationFinished()V

    :cond_0
    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$3:Z

    iget-boolean v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$4:Z

    if-eqz p2, :cond_3

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v7, :cond_1

    if-nez v5, :cond_3

    :cond_1
    if-nez v6, :cond_3

    iget-boolean v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$5:Z

    iget-object v8, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-nez v7, :cond_2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v8, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v8, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz p2, :cond_4

    if-nez v5, :cond_6

    :cond_4
    if-nez v6, :cond_6

    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$7:Z

    iget-object v5, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-nez p2, :cond_5

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v5, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    :cond_6
    :goto_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz p2, :cond_9

    if-eqz v1, :cond_9

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz p2, :cond_7

    if-nez v6, :cond_9

    :cond_7
    iget-object p2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;->f$9:Z

    if-nez p0, :cond_8

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    :cond_9
    :goto_2
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_a

    invoke-virtual {p1, v2, p2}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    :cond_a
    iget-boolean p0, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    if-eqz p0, :cond_b

    iput-boolean p2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v0, 0x5

    invoke-direct {p2, v3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToCenter(Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;)V

    :cond_b
    iget-boolean p0, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsOpeningHomeDuringSplit:Z

    const/4 p2, 0x0

    if-eqz p0, :cond_c

    const-string p0, "StageCoordinator"

    const-string/jumbo p1, "skip to send reparentLeafTaskIfRelaunch"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsOpeningHomeDuringSplit:Z

    goto :goto_3

    :cond_c
    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0, p2}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_3
    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
