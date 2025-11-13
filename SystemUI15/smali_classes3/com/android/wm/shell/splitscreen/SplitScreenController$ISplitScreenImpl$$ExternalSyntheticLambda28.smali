.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/Bundle;

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Ljava/lang/Object;

.field public final synthetic f$8:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$0:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$2:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$4:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$5:I

    iput p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$6:I

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$7:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$8:Lcom/android/internal/logging/InstanceId;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$0:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$2:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$4:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$5:I

    iput p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$6:I

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$7:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$8:Lcom/android/internal/logging/InstanceId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$0:Landroid/app/PendingIntent;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$1:I

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$2:Landroid/os/Bundle;

    iget v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$3:I

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$4:Landroid/os/Bundle;

    iget v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$5:I

    iget v9, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$6:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$7:Ljava/lang/Object;

    move-object v13, v6

    check-cast v13, Landroid/window/RemoteTransition;

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$8:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v4, v7}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    goto :goto_0

    :cond_0
    const/4 v7, -0x1

    :goto_0
    invoke-static {v2, v7, v6, v10}, Lcom/android/wm/shell/common/MultiInstanceHelper;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/wm/shell/common/MultiInstanceHelper;->Companion:Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;->getComponent(Landroid/app/PendingIntent;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMultiInstanceHelpher:Lcom/android/wm/shell/common/MultiInstanceHelper;

    invoke-virtual {v10, v2}, Lcom/android/wm/shell/common/MultiInstanceHelper;->supportsMultiInstanceSplit(Landroid/content/ComponentName;)Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_5

    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v16, 0x239667f0b48b3056L

    const/16 v18, 0x0

    const-string v19, "Adding MULTIPLE_TASK"

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_2
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_3

    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v16, 0x1e31b8e5049f37acL    # 3.077521414669058E-163

    const/16 v18, 0x0

    const-string v19, "Cancel entering split as not supporting multi-instances"

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "app package "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not support multi-instance"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "startIntentAndTask"

    invoke-static {v4, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SplitScreenController"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const v4, 0x7f130550

    invoke-static {v2, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v10, v7

    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    move v10, v7

    :cond_5
    :goto_1
    if-eqz v8, :cond_8

    const-string v6, "key_extra_widget_intent"

    const-class v12, Landroid/content/Intent;

    invoke-virtual {v8, v6, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    const/high16 v12, 0x8000000

    if-eqz v10, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v10, :cond_8

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v10, v10, v7

    if-eqz v10, :cond_9

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v12, v3

    int-to-long v2, v4

    move-object v15, v8

    int-to-long v7, v5

    move-object/from16 v17, v12

    int-to-long v11, v9

    sget-object v18, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v10, v2, v3, v7}, [Ljava/lang/Object;

    move-result-object v23

    const-wide v19, 0x7145a3426b573332L    # 4.4030978635135894E237

    const/16 v21, 0x54

    const-string/jumbo v22, "startIntentAndTask: intent=%s task1=%d position=%d snapPosition=%d"

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    move-object/from16 v17, v3

    move-object v15, v8

    :goto_3
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->isIntentInPip(Landroid/app/PendingIntent;)Z

    move-result v3

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v7, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    if-eqz v7, :cond_a

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v4, v8}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/wm/shell/pip/PipTransitionController;->isPackageActiveInPip(Ljava/lang/String;)Z

    move-result v7

    :goto_4
    const/4 v8, -0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :goto_5
    if-eq v4, v8, :cond_e

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    if-eqz v3, :cond_c

    move-object v3, v15

    invoke-virtual {v0, v4, v3, v2, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSingleTask(ILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    goto :goto_a

    :cond_c
    move-object v3, v15

    invoke-virtual {v0, v2, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    if-eqz v17, :cond_d

    move-object/from16 v5, v17

    goto :goto_6

    :cond_d
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :goto_6
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-static {v5, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v2, v1, v6, v5}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x1

    move-object v5, v0

    move-object v6, v2

    move v7, v4

    move-object v8, v3

    invoke-virtual/range {v5 .. v17}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFILandroid/os/Bundle;Landroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ZZLandroid/os/Bundle;)V

    goto :goto_a

    :cond_e
    :goto_7
    if-eqz v17, :cond_f

    move-object/from16 v3, v17

    :goto_8
    const/4 v4, 0x0

    goto :goto_9

    :cond_f
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_8

    :goto_9
    invoke-static {v3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v2, v1, v6, v3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v2, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    :goto_a
    return-void

    :pswitch_0
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$0:Landroid/app/PendingIntent;

    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$1:I

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$2:Landroid/os/Bundle;

    iget v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$3:I

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$4:Landroid/os/Bundle;

    iget v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$5:I

    iget v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$6:I

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$7:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, Landroid/view/RemoteAnimationAdapter;

    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;->f$8:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v3, v6}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    const/4 v8, -0x1

    if-eqz v6, :cond_10

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    goto :goto_b

    :cond_10
    move v6, v8

    :goto_b
    invoke-static {v1, v6, v5, v7}, Lcom/android/wm/shell/common/MultiInstanceHelper;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/wm/shell/common/MultiInstanceHelper;->Companion:Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;->getComponent(Landroid/app/PendingIntent;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMultiInstanceHelpher:Lcom/android/wm/shell/common/MultiInstanceHelper;

    invoke-virtual {v7, v1}, Lcom/android/wm/shell/common/MultiInstanceHelper;->supportsMultiInstanceSplit(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_12

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x8000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_11

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v17, 0x239667f0b48b3056L

    const/16 v19, 0x0

    const-string v20, "Adding MULTIPLE_TASK"

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    move-object v5, v1

    move v7, v3

    goto :goto_c

    :cond_12
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_13

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v17, 0x1e31b8e5049f37acL    # 3.077521414669058E-163

    const/16 v19, 0x0

    const-string v20, "Cancel entering split as not supporting multi-instances"

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "app package "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not support multi-instance"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "startIntentAndTaskWithLegacyTransition"

    invoke-static {v3, v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SplitScreenController"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const v3, 0x7f130550

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object v5, v6

    move v7, v8

    goto :goto_c

    :cond_14
    move v7, v3

    move-object v5, v6

    :goto_c
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez v2, :cond_15

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_15
    if-ne v7, v8, :cond_16

    const/4 v6, 0x0

    move-object v3, v0

    move-object v7, v2

    move-object v8, v14

    move-object v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    goto :goto_d

    :cond_16
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v1, v4, v5, v2}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v0, v7, v3, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/content/Intent;I)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v1

    invoke-virtual/range {v5 .. v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
