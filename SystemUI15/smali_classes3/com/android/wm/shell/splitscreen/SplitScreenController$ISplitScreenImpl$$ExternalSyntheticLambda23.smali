.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;III)V
    .locals 0

    iput p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->$r8$classId:I

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;

    iget v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$1:I

    iget v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$2:I

    iget v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$3:I

    move-object/from16 v5, p1

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v11, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->TAG:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->DEBUG:Z

    if-eqz v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "top task: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v7

    iget-boolean v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->originallySupportedMultiWindow:Z

    iget-object v12, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v9, :cond_5

    if-eq v7, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    iget v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    move-result-object v1

    if-eqz v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enterSplitIfPossible: start intent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    iget-object v4, v12, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v4, v4, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v4, :cond_4

    iget-object v13, v12, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x42000000    # 32.0f

    move-object v15, v1

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v13, Landroid/window/WindowContainerTransaction;

    invoke-direct {v13}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v12, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v6, -0x1

    move v7, v8

    move-object v8, v9

    move-object v9, v13

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v13, v4, v1, v0}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v13}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, v12

    move-object v6, v1

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;IILandroid/os/Bundle;)V

    :goto_1
    iget-object v0, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->mRealWm:Landroid/view/IWindowSession;

    const/16 v1, 0x31

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-interface {v0, v1, v2, v2}, Landroid/view/IWindowSession;->performHapticFeedback(IZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v1, "Failed to launch activity"

    invoke-static {v11, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FULL_TO_SPLIT_BY_GESTURE_SA_LOGGING:Z

    if-eqz v0, :cond_b

    const-string v0, "1000"

    const-string v1, "From Gesture"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_5
    :goto_4
    if-ne v7, v1, :cond_a

    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    if-eqz v0, :cond_9

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v8, 0x4

    if-eq v4, v1, :cond_8

    const/4 v1, 0x3

    if-eq v4, v1, :cond_7

    if-eq v4, v8, :cond_6

    move v8, v2

    goto :goto_5

    :cond_6
    const/4 v8, 0x2

    goto :goto_5

    :cond_7
    const/16 v8, 0x8

    :cond_8
    :goto_5
    invoke-virtual {v0, v7, v8}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->animForAffordance(II)V

    :try_start_1
    iget-object v0, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->mRealWm:Landroid/view/IWindowSession;

    const/16 v1, 0x7f

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-interface {v0, v1, v2, v2}, Landroid/view/IWindowSession;->performHapticFeedback(IZZ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    :goto_6
    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const v1, 0x10404a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_a
    if-eqz v6, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "top task doesn\'t fit in split. info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_7
    return-void

    :pswitch_0
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    check-cast v3, [Z

    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$1:I

    iget v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$2:I

    iget v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;->f$3:I

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    new-array v0, v1, [Z

    aput-boolean v2, v0, v2

    iget-object v1, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v10, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;

    move-object v4, v10

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;III[Z)V

    invoke-virtual {v1, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    aget-boolean v0, v0, v2

    aput-boolean v0, v3, v2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
