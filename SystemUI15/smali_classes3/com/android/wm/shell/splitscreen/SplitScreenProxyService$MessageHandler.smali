.class public final Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p1

    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    iget-object v11, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const-string v12, "SplitScreenProxyService"

    if-nez v11, :cond_0

    sget-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    const-string v0, "mSplitScreenController is null"

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_1

    sget-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    const-string v0, "msg data is empty"

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v11, v0, Landroid/os/Message;->what:I

    const/16 v13, 0x3e8

    if-eq v11, v13, :cond_29

    new-instance v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;-><init>(Landroid/os/Bundle;)V

    iget v13, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    iget v15, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    iget v6, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    iget-object v14, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mPendingMsg:Landroid/os/Message;

    if-nez v14, :cond_2

    iget v14, v0, Landroid/os/Message;->what:I

    if-eq v14, v7, :cond_3

    if-eq v14, v8, :cond_3

    if-eq v14, v3, :cond_3

    if-eq v14, v4, :cond_3

    if-eq v14, v5, :cond_3

    if-eq v14, v1, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    iget-object v5, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v4, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    iget-object v5, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v4, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    if-eqz v4, :cond_7

    iget-object v5, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v4, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapIntent:Landroid/content/Intent;

    if-eqz v4, :cond_8

    iget-object v5, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v4, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    if-eq v4, v2, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eq v6, v2, :cond_a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eq v15, v2, :cond_b

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v4, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    if-eq v4, v2, :cond_c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eq v13, v2, :cond_d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v4

    invoke-virtual {v4, v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->shouldDeferEnterSplit(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mPendingMsg:Landroid/os/Message;

    return-void

    :goto_0
    iput-object v3, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mPendingMsg:Landroid/os/Message;

    sget-boolean v3, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handle msg, what:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " called:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_8

    :pswitch_1
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v10, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :pswitch_2
    iget v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    if-ne v0, v2, :cond_e

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    if-nez v0, :cond_e

    const-string v0, "OPEN_IN_SPLIT_WITH_ALLAPPS has no valid start info"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, v11, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :pswitch_3
    if-eq v6, v2, :cond_10

    if-ne v15, v2, :cond_f

    goto :goto_1

    :cond_f
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    const/16 v2, 0x9

    invoke-direct {v1, v11, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :cond_10
    :goto_1
    const-string v0, "START_MULTI_SPLIT_TASKS has not enough task ids"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapIntent:Landroid/content/Intent;

    if-nez v0, :cond_11

    if-ne v13, v2, :cond_11

    const-string v0, "OPEN_IN_SPLIT_WITH_TAP has no valid start info"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, v11, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :pswitch_5
    if-eq v6, v2, :cond_13

    if-ne v15, v2, :cond_12

    goto :goto_2

    :cond_12
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v11, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :cond_13
    :goto_2
    const-string v0, "START_SPLIT_TASKS has not enough task ids"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_6
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    if-nez v0, :cond_14

    const-string v0, "START_INTENT has no intent"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v0, :cond_15

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_15

    iget v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    if-eqz v0, :cond_15

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, v11, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :cond_15
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_16

    iget v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    if-eq v0, v2, :cond_16

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, v11, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :cond_16
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v11, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :pswitch_7
    iget v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    if-eq v0, v2, :cond_18

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    if-nez v0, :cond_17

    goto :goto_3

    :cond_17
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v11, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :cond_18
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "START_TASK_AND_INTENT has less data. taskId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sideStageIntent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_8
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    if-eqz v0, :cond_28

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    if-nez v0, :cond_19

    goto/16 :goto_9

    :cond_19
    sget-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "START_INTENTS: client request("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is ignored, reason=test_remote_transition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/window/RemoteTransition;

    iget-object v1, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mTestRemoteTransition:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;

    invoke-direct {v0, v1}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    iput-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    :cond_1a
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CREATE_MODE:Z

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitCreateMode:I

    if-eq v0, v8, :cond_1e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_4

    :cond_1b
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iput v7, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const/16 v1, 0x48

    iput v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    goto :goto_4

    :cond_1c
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iput v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const/16 v1, 0x60

    iput v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    goto :goto_4

    :cond_1d
    const/4 v0, 0x0

    iput v7, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iput v7, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const/16 v1, 0x30

    iput v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    goto :goto_4

    :cond_1e
    const/4 v0, 0x0

    iput v7, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iput v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const/16 v0, 0x18

    iput v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    goto :goto_4

    :cond_1f
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v0, v2, :cond_20

    iput v7, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    goto :goto_4

    :cond_20
    if-nez v0, :cond_21

    iput v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    iget-object v3, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    iput-object v3, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iget-object v3, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    iput-object v3, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    iput-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    iput-object v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    goto :goto_4

    :cond_21
    iput v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    :goto_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v0, :cond_22

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    if-eqz v1, :cond_22

    iget-object v1, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v11, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    goto :goto_5

    :cond_22
    const/4 v4, 0x0

    iget-object v1, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v3, v11, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    invoke-static {v10, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->-$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V

    :goto_5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_APP_PAIR_SA_LOGGING:Z

    if-eqz v1, :cond_27

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchFrom:Ljava/lang/String;

    if-nez v1, :cond_23

    const-string v0, "mLaunchFrom is null"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v3, "appsEdge"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_6

    :cond_24
    move v2, v8

    goto :goto_6

    :sswitch_1
    const-string v3, "home"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_6

    :cond_25
    move v2, v7

    goto :goto_6

    :sswitch_2
    const-string/jumbo v3, "taskbar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_6

    :cond_26
    move v2, v4

    :goto_6
    packed-switch v2, :pswitch_data_1

    const/4 v14, 0x0

    goto :goto_7

    :pswitch_9
    const-string v14, "From Apps edge_AppPair"

    goto :goto_7

    :pswitch_a
    const-string v14, "From App pair on Home"

    goto :goto_7

    :pswitch_b
    const-string v14, "From App pair on TaskBar"

    :goto_7
    if-eqz v14, :cond_27

    const-string v1, "1000"

    invoke-static {v1, v14}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_27

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    if-eqz v0, :cond_27

    const-string v0, "1021"

    invoke-static {v0, v14}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_8
    return-void

    :cond_28
    :goto_9
    const-string v0, "START_INTENTS StageLaunchOptions has less intent"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "recent_tasks_max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string/jumbo v1, "recent_tasks_flag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x5ba06392 -> :sswitch_2
        0x30f4df -> :sswitch_1
        0x46a0234f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
