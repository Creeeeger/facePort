.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/Object;

.field public final synthetic f$7:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$0:Landroid/content/pm/ShortcutInfo;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$1:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$2:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$3:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$4:I

    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$5:I

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$6:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$7:Lcom/android/internal/logging/InstanceId;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$0:Landroid/content/pm/ShortcutInfo;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$1:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$2:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$3:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$4:I

    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$5:I

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$6:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$7:Lcom/android/internal/logging/InstanceId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$0:Landroid/content/pm/ShortcutInfo;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$1:Landroid/os/Bundle;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$2:I

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$3:Landroid/os/Bundle;

    iget v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$4:I

    iget v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$5:I

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$6:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Landroid/view/RemoteAnimationAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$7:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {v1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v2, v6}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v8

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    const/4 v9, -0x1

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    goto :goto_0

    :cond_1
    move v6, v9

    :goto_0
    invoke-static {v8, v6, v4, v7}, Lcom/android/wm/shell/common/MultiInstanceHelper;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMultiInstanceHelpher:Lcom/android/wm/shell/common/MultiInstanceHelper;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/common/MultiInstanceHelper;->supportsMultiInstanceSplit(Landroid/content/ComponentName;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {v1, v7}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_4

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v20, "Adding MULTIPLE_TASK"

    const/16 v21, 0x0

    const-wide v17, 0x239667f0b48b3056L

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_3

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v20, "Cancel entering split as not supporting multi-instances"

    const/16 v21, 0x0

    const-wide v17, 0x1e31b8e5049f37acL    # 3.077521414669058E-163

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "app package "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not support multi-instance"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "startShortcutAndTaskWithLegacyTransition"

    invoke-static {v4, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SplitScreenController"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const v4, 0x7f130550

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v8, v9

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v2

    :goto_2
    iget-object v6, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroid/window/WindowContainerTransaction;

    invoke-direct {v10}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez v1, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_5
    if-ne v8, v9, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v6

    move-object v6, v1

    move-object v7, v15

    move-object v8, v10

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    :cond_6
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-static {v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v5, v1}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object v7, v10

    move-object v10, v1

    move-object/from16 v16, v0

    invoke-virtual/range {v6 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    :goto_3
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$0:Landroid/content/pm/ShortcutInfo;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$1:Landroid/os/Bundle;

    iget v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$2:I

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$3:Landroid/os/Bundle;

    iget v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$4:I

    iget v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$5:I

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$6:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, Landroid/window/RemoteTransition;

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;->f$7:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_7
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v3, v6}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v10

    invoke-virtual {v6, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    goto :goto_4

    :cond_8
    const/4 v6, -0x1

    :goto_4
    invoke-static {v10, v6, v5, v9}, Lcom/android/wm/shell/common/MultiInstanceHelper;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMultiInstanceHelpher:Lcom/android/wm/shell/common/MultiInstanceHelper;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/wm/shell/common/MultiInstanceHelper;->supportsMultiInstanceSplit(Landroid/content/ComponentName;)Z

    move-result v6

    const/4 v10, 0x1

    if-eqz v6, :cond_9

    invoke-virtual {v2, v10}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v5, v5, v10

    if-eqz v5, :cond_c

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v18, "Adding MULTIPLE_TASK"

    const/16 v19, 0x0

    const-wide v15, 0x239667f0b48b3056L

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v6, v3}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_a
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v3, v3, v10

    if-eqz v3, :cond_b

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v18, "Cancel entering split as not supporting multi-instances"

    const/16 v19, 0x0

    const-wide v15, 0x1e31b8e5049f37acL    # 3.077521414669058E-163

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "app package "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not support multi-instance"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "startShortcutAndTask"

    invoke-static {v5, v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "SplitScreenController"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const v5, 0x7f130550

    invoke-static {v3, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v6, -0x1

    goto :goto_6

    :cond_c
    :goto_5
    move v6, v3

    :goto_6
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v9, v6

    int-to-long v14, v4

    move-object/from16 v16, v12

    int-to-long v11, v8

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v3, v5, v9, v10}, [Ljava/lang/Object;

    move-result-object v22

    const-string/jumbo v21, "startShortcutAndTask: shortcut=%s task1=%d position=%d snapPosition=%d"

    const-wide v18, 0x2de3a3d38cfa304aL    # 1.2341034788546347E-87

    const/16 v20, 0x54

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    move-object/from16 v16, v12

    :goto_7
    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v3, -0x1

    if-ne v6, v3, :cond_f

    if-eqz v2, :cond_e

    goto :goto_8

    :cond_e
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_8
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v1, v2}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object/from16 v3, v16

    invoke-virtual {v0, v5, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    goto :goto_a

    :cond_f
    move-object/from16 v3, v16

    invoke-virtual {v0, v5, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_9
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v1, v2}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v4, v0

    move-object v12, v3

    invoke-virtual/range {v4 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFILandroid/os/Bundle;Landroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ZZLandroid/os/Bundle;)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
