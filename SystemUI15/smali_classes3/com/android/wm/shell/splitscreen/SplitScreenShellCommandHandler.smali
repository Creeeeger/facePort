.class public final Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# instance fields
.field public final mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-void
.end method

.method public static makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const v0, 0x10204000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public final onShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Error: start multiple tasks should be provided as arguments"

    const-string v6, "Error: task id should be provided as arguments"

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v14, "exitSplitScreen"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v13, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v14, "enterSplitByGesture"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v13, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v14, "startIntents"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v13, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v14, "startSplitTasks"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v13, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v14, "setSideStagePosition"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v13, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v14, "setSplitCreateMode"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v13, 0x7

    goto :goto_0

    :sswitch_6
    const-string/jumbo v14, "removeFromSideStage"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v13, 0x6

    goto :goto_0

    :sswitch_7
    const-string v14, "moveToSideStage"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v13, 0x5

    goto :goto_0

    :sswitch_8
    const-string v14, "openInSplitWithAllApps"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move v13, v8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v14, "startIntentToCell"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    move v13, v9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v14, "switchSplitPosition"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    move v13, v11

    goto :goto_0

    :sswitch_b
    const-string/jumbo v14, "startTaskWithAllApps"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_0

    :cond_b
    move v13, v12

    goto :goto_0

    :sswitch_c
    const-string/jumbo v14, "startTasks"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_0

    :cond_c
    move v13, v3

    :goto_0
    packed-switch v13, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Invalid command: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v2, v3

    invoke-static {v0, v2, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return v3

    :pswitch_0
    array-length v0, v2

    if-ge v0, v11, :cond_d

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    aget-object v0, v2, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen(II)V

    move v3, v12

    :goto_1
    return v3

    :pswitch_1
    array-length v0, v2

    if-ge v0, v8, :cond_e

    const-string v0, "Error: gestureFrom should be provided"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    aget-object v0, v2, v11

    const-string v1, "interface"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    aget-object v1, v2, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->startSplitByTwoTouchSwipeIfPossible(I)V

    :cond_f
    move v3, v12

    :goto_2
    return v3

    :pswitch_2
    array-length v0, v2

    if-ge v0, v8, :cond_10

    const-string v0, "Error: start intents should be provided as arguments"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ adb shell ~ WMShell splitscreen startIntents pkg1 pkg2 pkg3(optional) [splitDivision]"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    aget-object v0, v2, v12

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    aget-object v0, v2, v11

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    array-length v0, v2

    if-le v0, v8, :cond_11

    aget-object v0, v2, v9

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    aget-object v0, v2, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    move/from16 v27, v0

    move-object/from16 v18, v7

    goto :goto_4

    :cond_11
    aget-object v0, v2, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :goto_4
    iget-object v13, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v26, 0x1

    const/16 v28, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f000000    # 0.5f

    const/high16 v25, 0x3f000000    # 0.5f

    const/16 v29, 0x0

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-virtual/range {v13 .. v29}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    :goto_5
    return v12

    :pswitch_3
    array-length v4, v2

    if-ge v4, v8, :cond_12

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    aget-object v1, v2, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aget-object v1, v2, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aget-object v1, v2, v9

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    const/16 v18, 0x0

    const/high16 v20, 0x3f000000    # 0.5f

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/16 v16, -0x1

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v20}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startSplitTasks(IIIZIFF)V

    move v3, v12

    :goto_6
    return v3

    :pswitch_4
    array-length v0, v2

    if-ge v0, v11, :cond_13

    const-string v0, "Error: side stage position should be provided as arguments"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    new-instance v0, Ljava/lang/Integer;

    aget-object v1, v2, v12

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v1, :cond_14

    invoke-virtual {v10, v7, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_7

    :cond_14
    iget-object v1, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1, v7, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    :goto_7
    move v3, v12

    :goto_8
    return v3

    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CREATE_MODE:Z

    if-nez v0, :cond_15

    goto :goto_9

    :cond_15
    array-length v0, v2

    if-ge v0, v9, :cond_16

    const-string v0, "Error: A createMode should be provided as an argument"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    aget-object v0, v2, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2, v0, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitCreateMode(IZ)Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_DUMP:Z

    if-eqz v0, :cond_17

    const-string v0, "SplitScreenController"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz v0, :cond_17

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_17
    move v3, v12

    :goto_9
    return v3

    :pswitch_6
    array-length v0, v2

    if-ge v0, v11, :cond_18

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_18
    new-instance v0, Ljava/lang/Integer;

    aget-object v1, v2, v12

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->removeFromSideStage(I)Z

    move v3, v12

    :goto_a
    return v3

    :pswitch_7
    array-length v0, v2

    if-ge v0, v9, :cond_19

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_19
    new-instance v0, Ljava/lang/Integer;

    aget-object v1, v2, v12

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    array-length v1, v2

    if-le v1, v11, :cond_1a

    new-instance v1, Ljava/lang/Integer;

    aget-object v2, v2, v11

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b

    :cond_1a
    move v1, v12

    :goto_b
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveToStage(IILandroid/window/WindowContainerTransaction;)V

    move v3, v12

    :goto_c
    return v3

    :pswitch_8
    array-length v0, v2

    if-ge v0, v8, :cond_1b

    const-string v0, "Error: task id or intent to make split should be provided as arguments"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ adb shell ~ WMShell openInSplitWithAllApps [taskId] [package]"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_1b
    aget-object v0, v2, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, v2, v9

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v10, v0, v1, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->openInSplitWithAllApps(ILandroid/content/Intent;Landroid/os/UserHandle;)V

    move v3, v12

    :goto_d
    return v3

    :pswitch_9
    array-length v0, v2

    if-ge v0, v11, :cond_1c

    const-string v0, "Error: start intent should be provided as arguments"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_1c
    aget-object v0, v2, v12

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    array-length v1, v2

    if-lt v1, v9, :cond_1d

    aget-object v1, v2, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_1d
    invoke-virtual {v10, v7, v0, v7, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;I)V

    move v3, v12

    :goto_e
    return v3

    :pswitch_a
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const-string/jumbo v1, "shellCommand"

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->switchSplitPosition(Ljava/lang/String;)V

    :cond_1e
    return v12

    :pswitch_b
    array-length v4, v2

    if-ge v4, v11, :cond_1f

    const-string v0, "Error: start taskId to make split with allapps"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ adb shell ~ WMShell startTaskWithAllApps taskId"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_1f
    aget-object v1, v2, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    move v3, v12

    :goto_f
    return v3

    :pswitch_c
    array-length v4, v2

    if-ge v4, v9, :cond_20

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    :cond_20
    aget-object v1, v2, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v1, v2, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    move v3, v12

    :goto_10
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x5e67cbb4 -> :sswitch_c
        -0x5bc9c37a -> :sswitch_b
        -0x5aafd471 -> :sswitch_a
        -0x4c775645 -> :sswitch_9
        -0x4934e03e -> :sswitch_8
        -0x56f90e5 -> :sswitch_7
        0x119de939 -> :sswitch_6
        0x51013ab7 -> :sswitch_5
        0x5abe6dee -> :sswitch_4
        0x5c5f5e96 -> :sswitch_3
        0x6cb21e95 -> :sswitch_2
        0x723583f0 -> :sswitch_1
        0x7de33c28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    const-string p0, "    moveToSideStage <taskId> <SideStagePosition>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Move a task with given id in split-screen mode."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    removeFromSideStage <taskId>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Remove a task with given id in split-screen mode."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    setSideStagePosition <SideStagePosition>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Sets the position of the side-stage."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    switchSplitPosition"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Reverses the split."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    exitSplitScreen <taskId>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Exits split screen and leaves the provided split task on top."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
