.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$MultiWindowCoreStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-void
.end method


# virtual methods
.method public final onMultiWindowCoreStateChanged(I)Z
    .locals 8

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    and-int/lit16 v1, p1, 0x400

    const/4 v3, 0x1

    if-nez v1, :cond_1

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_6

    :cond_1
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Ljava/lang/Runnable;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v6, v5, Lcom/android/wm/shell/common/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Ljava/lang/Runnable;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    const/16 v1, 0x12c

    :goto_2
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Ljava/lang/Runnable;

    int-to-long v6, v1

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_6
    and-int/2addr p1, v3

    if-eqz p1, :cond_a

    sget-boolean p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_3
    iget-object p1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v0, "SplitScreenController"

    if-nez p1, :cond_8

    const-string p0, "onMultiWindowCoreStateChanged: cannot find focusedInfo"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFocusedTaskPosition:I

    if-nez v1, :cond_9

    const-string p1, "onMultiWindowCoreStateChanged: dismiss split"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen(II)V

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onMultiWindowCoreStateChanged: maximize split #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->maximizeSplitTask(Landroid/window/WindowContainerToken;)V

    :cond_a
    :goto_4
    return v2
.end method
