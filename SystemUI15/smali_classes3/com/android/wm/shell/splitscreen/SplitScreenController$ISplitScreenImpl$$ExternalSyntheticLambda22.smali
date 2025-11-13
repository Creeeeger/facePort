.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:I

.field public final synthetic f$10:Ljava/lang/Object;

.field public final synthetic f$11:Lcom/android/internal/logging/InstanceId;

.field public final synthetic f$2:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Landroid/app/PendingIntent;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$7:Landroid/os/Bundle;

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$0:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$2:Landroid/content/pm/ShortcutInfo;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$3:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$4:Landroid/app/PendingIntent;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$5:I

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$6:Landroid/content/pm/ShortcutInfo;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$7:Landroid/os/Bundle;

    iput p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$8:I

    iput p10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$9:I

    iput-object p11, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$10:Ljava/lang/Object;

    iput-object p12, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$11:Lcom/android/internal/logging/InstanceId;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$0:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$2:Landroid/content/pm/ShortcutInfo;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$3:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$4:Landroid/app/PendingIntent;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$5:I

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$6:Landroid/content/pm/ShortcutInfo;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$7:Landroid/os/Bundle;

    iput p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$8:I

    iput p10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$9:I

    iput-object p11, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$10:Ljava/lang/Object;

    iput-object p12, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$11:Lcom/android/internal/logging/InstanceId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$0:Landroid/app/PendingIntent;

    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$1:I

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$2:Landroid/content/pm/ShortcutInfo;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$3:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$4:Landroid/app/PendingIntent;

    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$5:I

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$6:Landroid/content/pm/ShortcutInfo;

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$7:Landroid/os/Bundle;

    iget v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$8:I

    iget v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$9:I

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$10:Ljava/lang/Object;

    move-object/from16 v16, v7

    check-cast v16, Landroid/view/RemoteAnimationAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$11:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v7, p1

    check-cast v7, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v6, v8, v9}, Lcom/android/wm/shell/common/MultiInstanceHelper;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/wm/shell/common/MultiInstanceHelper;->Companion:Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;->getComponent(Landroid/app/PendingIntent;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v9, v7, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMultiInstanceHelpher:Lcom/android/wm/shell/common/MultiInstanceHelper;

    invoke-virtual {v9, v1}, Lcom/android/wm/shell/common/MultiInstanceHelper;->supportsMultiInstanceSplit(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x8000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v6, v6, v9

    if-eqz v6, :cond_0

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v18, 0x239667f0b48b3056L

    const/16 v20, 0x0

    const-string v21, "Adding MULTIPLE_TASK"

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v10, v4

    move-object v11, v8

    move-object v4, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_2

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v18, 0x1e31b8e5049f37acL    # 3.077521414669058E-163

    const/16 v20, 0x0

    const-string v21, "Cancel entering split as not supporting multi-instances"

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "app package "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not support multi-instance"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "startIntentsWithLegacyTransition"

    invoke-static {v4, v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SplitScreenController"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const v4, 0x7f130550

    const/4 v8, 0x0

    invoke-static {v1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object v4, v6

    move-object v10, v4

    move-object v11, v10

    goto :goto_0

    :cond_3
    move-object v10, v4

    move-object v4, v6

    move-object v11, v4

    :goto_0
    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/window/WindowContainerTransaction;

    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez v2, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v6, v1

    goto :goto_1

    :cond_4
    move-object v6, v2

    :goto_1
    if-nez v10, :cond_5

    move-object v2, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    :cond_5
    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-static {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz v5, :cond_6

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v5, v6}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_2

    :cond_6
    invoke-virtual {v8, v3, v4, v6}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v7, v2, v3, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;Landroid/content/Intent;I)V

    iput-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    :goto_2
    const/4 v9, -0x1

    move-object/from16 v17, v0

    invoke-virtual/range {v7 .. v17}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    :goto_3
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$0:Landroid/app/PendingIntent;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$1:I

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$2:Landroid/content/pm/ShortcutInfo;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$3:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$4:Landroid/app/PendingIntent;

    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$5:I

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$6:Landroid/content/pm/ShortcutInfo;

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$7:Landroid/os/Bundle;

    iget v9, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$8:I

    iget v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$9:I

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$10:Ljava/lang/Object;

    move-object v14, v11

    check-cast v14, Landroid/window/RemoteTransition;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;->f$11:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v11, p1

    check-cast v11, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v13

    if-eqz v4, :cond_7

    invoke-static {v4}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_4

    :cond_7
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    :goto_4
    if-eqz v8, :cond_8

    invoke-static {v8}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v15

    goto :goto_5

    :cond_8
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v15

    :goto_5
    invoke-static {v2, v6, v12, v13}, Lcom/android/wm/shell/common/MultiInstanceHelper;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/high16 v6, 0x8000000

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/wm/shell/common/MultiInstanceHelper;->Companion:Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;->getComponent(Landroid/app/PendingIntent;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v13, v11, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMultiInstanceHelpher:Lcom/android/wm/shell/common/MultiInstanceHelper;

    invoke-virtual {v13, v2}, Lcom/android/wm/shell/common/MultiInstanceHelper;->supportsMultiInstanceSplit(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v12, 0x1

    if-eqz v3, :cond_9

    invoke-virtual {v4, v12}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v15, v12}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    :cond_a
    sget-object v13, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v13, v13, v12

    if-eqz v13, :cond_b

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v18, 0x239667f0b48b3056L

    const/16 v20, 0x0

    const-string v21, "Adding MULTIPLE_TASK"

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v5, 0x1

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_d

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v18, 0x1e31b8e5049f37acL    # 3.077521414669058E-163

    const/16 v20, 0x0

    const-string v21, "Cancel entering split as not supporting multi-instances"

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "app package "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not support multi-instance"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "startIntents"

    invoke-static {v5, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "SplitScreenController"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v11, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const v5, 0x7f130550

    const/4 v12, 0x0

    invoke-static {v2, v5, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_6
    const/4 v12, 0x0

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    :goto_7
    if-eqz v8, :cond_11

    const-string v13, "key_extra_widget_intent"

    const-class v6, Landroid/content/Intent;

    invoke-virtual {v8, v13, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    if-eqz v12, :cond_f

    if-eqz v6, :cond_f

    const/high16 v8, 0x8000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_8

    :cond_f
    const/high16 v8, 0x8000000

    if-eqz v6, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v12, :cond_11

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    :goto_8
    iget-object v8, v11, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v13, 0x0

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_13

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v13

    goto :goto_9

    :cond_12
    const-string v13, "null"

    :goto_9
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v6

    move-object v15, v7

    int-to-long v6, v9

    move-object/from16 v18, v11

    int-to-long v10, v10

    sget-object v19, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v12, v13, v6, v7}, [Ljava/lang/Object;

    move-result-object v24

    const-wide v20, -0x2a253df6d74bc2b8L    # -3.8355829040093913E105

    const/16 v22, 0x50

    const-string/jumbo v23, "startIntents: intent1=%s intent2=%s position=%d snapPosition=%d"

    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_13
    move-object/from16 v17, v6

    move-object v15, v7

    move-object/from16 v18, v11

    :goto_a
    new-instance v13, Landroid/window/WindowContainerTransaction;

    invoke-direct {v13}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez v5, :cond_16

    if-eqz v4, :cond_14

    :goto_b
    const/4 v0, 0x0

    goto :goto_c

    :cond_14
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto :goto_b

    :goto_c
    invoke-static {v4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz v3, :cond_15

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0, v3, v4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_d

    :cond_15
    invoke-virtual {v13, v1, v2, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_d
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v13, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    goto/16 :goto_19

    :cond_16
    iget-object v6, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->isIntentInPip(Landroid/app/PendingIntent;)Z

    move-result v6

    iget-object v7, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual {v7, v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->isIntentInPip(Landroid/app/PendingIntent;)Z

    move-result v7

    if-nez v6, :cond_17

    if-eqz v7, :cond_18

    :cond_17
    move-object v6, v15

    move-object/from16 v9, v17

    goto/16 :goto_13

    :cond_18
    iget-object v6, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v7, v6, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v7, :cond_19

    const/4 v7, 0x0

    invoke-virtual {v6, v13, v7}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_e

    :cond_19
    const/4 v7, 0x0

    :goto_e
    invoke-virtual {v8, v13, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    iget-object v9, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    iget-object v9, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v8, v9, v13, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    iget-object v9, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v13, v9, v11}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v9, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v13, v9, v7}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v8, v13, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    if-eqz v4, :cond_1a

    goto :goto_f

    :cond_1a
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_f
    iget-object v7, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-static {v4, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz v3, :cond_1b

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v3, v4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_10

    :cond_1b
    invoke-virtual {v13, v1, v2, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_10
    if-eqz v18, :cond_1c

    move-object/from16 v11, v18

    goto :goto_11

    :cond_1c
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    :goto_11
    invoke-static {v11, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz v15, :cond_1d

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v15

    invoke-virtual {v13, v1, v6, v11}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_12

    :cond_1d
    move-object/from16 v9, v17

    invoke-virtual {v13, v5, v9, v11}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_12
    iget-object v12, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/16 v16, 0x3ec

    const/16 v17, 0x0

    move-object v15, v8

    invoke-virtual/range {v12 .. v17}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    if-eqz v0, :cond_25

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iput-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    const/4 v0, 0x3

    iput v0, v1, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    goto :goto_19

    :goto_13
    if-eqz v7, :cond_1e

    goto :goto_14

    :cond_1e
    move-object/from16 v4, v18

    :goto_14
    if-nez v4, :cond_1f

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_1f
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-nez v3, :cond_23

    if-eqz v6, :cond_20

    goto :goto_17

    :cond_20
    if-eqz v7, :cond_21

    goto :goto_15

    :cond_21
    move-object v1, v5

    :goto_15
    if-eqz v7, :cond_22

    goto :goto_16

    :cond_22
    move-object v2, v9

    :goto_16
    invoke-static {v4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v13, v1, v2, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v13, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    goto :goto_19

    :cond_23
    :goto_17
    if-eqz v7, :cond_24

    goto :goto_18

    :cond_24
    move-object v3, v6

    :goto_18
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0, v3, v4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v13, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    :cond_25
    :goto_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
