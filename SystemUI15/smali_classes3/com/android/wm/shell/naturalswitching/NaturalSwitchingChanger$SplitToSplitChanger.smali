.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;
.super Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;-><init>()V

    return-void
.end method

.method public static isOneDirectionPosition(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final changeLayout()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mCurrentSplitMode:I

    if-nez v1, :cond_0

    goto/16 :goto_2b

    :cond_0
    iget v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    if-eqz v1, :cond_5a

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v1

    iget v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    if-eq v1, v2, :cond_5a

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_SA_LOGGING:Z

    if-eqz v1, :cond_1

    const-string v1, "1041"

    const-string v2, "Layout changed"

    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v1

    iget v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    if-eq v1, v2, :cond_58

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_MULTI_SPLIT:Z

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/16 v7, 0x8

    if-eqz v1, :cond_4c

    iget-object v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    move-result v8

    if-eqz v8, :cond_4c

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    invoke-direct {v8}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, -0x1

    if-eq v9, v4, :cond_4

    if-eq v9, v2, :cond_3

    if-eq v9, v10, :cond_2

    move v9, v11

    goto :goto_0

    :cond_2
    move v9, v2

    goto :goto_0

    :cond_3
    move v9, v4

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    iget v12, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    iget-object v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    move-result v13

    iput v13, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    iget-object v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    move-result v13

    iput v13, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget-object v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    move-result v13

    iput v13, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    iget-boolean v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/16 v3, 0x40

    if-eqz v13, :cond_16

    iget v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    if-eq v9, v11, :cond_14

    invoke-static {v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    move-result v13

    if-eq v9, v13, :cond_14

    iget v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    if-eq v9, v2, :cond_6

    if-eq v9, v15, :cond_5

    if-eq v9, v10, :cond_6

    if-eq v9, v14, :cond_5

    goto :goto_1

    :cond_5
    move v11, v4

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    :goto_1
    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    move-result v9

    if-eq v11, v9, :cond_12

    iput v11, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    invoke-static {v12}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;->isOneDirectionPosition(I)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result v9

    if-nez v9, :cond_9

    if-eq v12, v7, :cond_8

    if-ne v12, v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    move v9, v4

    :goto_3
    iput v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    goto :goto_6

    :cond_9
    if-eq v12, v7, :cond_b

    if-ne v12, v6, :cond_a

    goto :goto_4

    :cond_a
    move v9, v4

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v9, 0x0

    :goto_5
    iput v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    :goto_6
    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    move-result v9

    if-nez v11, :cond_e

    if-eq v12, v7, :cond_c

    if-ne v12, v5, :cond_11

    :cond_c
    and-int/lit8 v3, v9, -0x29

    if-ne v12, v7, :cond_d

    or-int/lit8 v9, v3, 0x20

    goto :goto_7

    :cond_d
    or-int/lit8 v9, v3, 0x8

    goto :goto_7

    :cond_e
    if-eq v12, v6, :cond_f

    if-ne v12, v3, :cond_11

    :cond_f
    and-int/lit8 v5, v9, -0x51

    if-ne v12, v6, :cond_10

    or-int/lit8 v9, v5, 0x40

    goto :goto_7

    :cond_10
    or-int/lit8 v9, v5, 0x10

    :cond_11
    :goto_7
    iput v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto :goto_8

    :cond_12
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    move-result v3

    iput v3, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    iput v11, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iput v12, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    :cond_13
    :goto_8
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result v5

    invoke-virtual {v3, v2, v5, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->swapStageTasks(IILandroid/window/WindowContainerTransaction;)V

    goto/16 :goto_21

    :cond_14
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    move-result v3

    iput v3, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    move-result v3

    iput v3, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    move-result v3

    iput v3, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result v3

    if-nez v3, :cond_15

    move v3, v4

    goto :goto_9

    :cond_15
    const/4 v3, 0x0

    :goto_9
    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v5, v2, v3, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->swapStageTasks(IILandroid/window/WindowContainerTransaction;)V

    goto/16 :goto_21

    :cond_16
    iget v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    if-eq v13, v11, :cond_39

    invoke-static {v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    move-result v11

    if-eq v13, v11, :cond_39

    iget v11, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    if-eq v11, v2, :cond_18

    if-eq v11, v15, :cond_17

    if-eq v11, v10, :cond_18

    if-eq v11, v14, :cond_17

    const/4 v11, -0x1

    goto :goto_a

    :cond_17
    move v11, v4

    goto :goto_a

    :cond_18
    const/4 v11, 0x0

    :goto_a
    iput v11, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    if-ne v9, v2, :cond_19

    iput v12, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    move-result v2

    iput v2, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    goto/16 :goto_21

    :cond_19
    invoke-static {v12}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;->isOneDirectionPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    if-nez v9, :cond_1c

    if-eq v12, v7, :cond_1b

    if-ne v12, v6, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v9, 0x0

    goto :goto_c

    :cond_1b
    :goto_b
    move v9, v4

    :goto_c
    iput v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    goto :goto_f

    :cond_1c
    if-ne v9, v4, :cond_1f

    if-eq v12, v7, :cond_1e

    if-ne v12, v6, :cond_1d

    goto :goto_d

    :cond_1d
    move v9, v4

    goto :goto_e

    :cond_1e
    :goto_d
    const/4 v9, 0x0

    :goto_e
    iput v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    :cond_1f
    :goto_f
    iget v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget-object v10, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    move-result v10

    if-eq v9, v10, :cond_25

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    move-result v2

    iget v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    if-eq v9, v15, :cond_22

    if-ne v9, v14, :cond_20

    goto :goto_10

    :cond_20
    and-int/lit8 v2, v2, -0x29

    if-ne v12, v7, :cond_21

    or-int/lit8 v2, v2, 0x20

    goto :goto_11

    :cond_21
    if-ne v12, v5, :cond_24

    or-int/lit8 v2, v2, 0x8

    goto :goto_11

    :cond_22
    :goto_10
    and-int/lit8 v2, v2, -0x51

    if-ne v12, v6, :cond_23

    or-int/lit8 v2, v2, 0x40

    goto :goto_11

    :cond_23
    if-ne v12, v3, :cond_24

    or-int/lit8 v2, v2, 0x10

    :cond_24
    :goto_11
    iput v2, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto/16 :goto_21

    :cond_25
    iget v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    if-eq v2, v9, :cond_2a

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    move-result v2

    not-int v9, v12

    and-int/2addr v2, v9

    if-ne v12, v5, :cond_26

    or-int/lit8 v2, v2, 0x8

    goto :goto_12

    :cond_26
    if-ne v12, v7, :cond_27

    or-int/lit8 v2, v2, 0x20

    goto :goto_12

    :cond_27
    if-ne v12, v6, :cond_28

    or-int/lit8 v2, v2, 0x40

    goto :goto_12

    :cond_28
    if-ne v12, v3, :cond_29

    or-int/lit8 v2, v2, 0x10

    :cond_29
    :goto_12
    iput v2, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto/16 :goto_21

    :cond_2a
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    move-result v2

    iput v2, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto/16 :goto_21

    :cond_2b
    if-nez v9, :cond_32

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result v2

    if-nez v2, :cond_4b

    and-int/lit8 v2, v12, 0x8

    if-nez v2, :cond_2d

    and-int/lit8 v9, v12, 0x10

    if-eqz v9, :cond_2c

    goto :goto_13

    :cond_2c
    const/4 v9, 0x0

    goto :goto_14

    :cond_2d
    :goto_13
    move v9, v4

    :goto_14
    iput v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    iget v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    if-nez v9, :cond_2f

    and-int/lit8 v2, v12, 0x40

    if-eqz v2, :cond_2e

    and-int/lit8 v2, v12, -0x41

    or-int/lit8 v12, v2, 0x10

    goto :goto_15

    :cond_2e
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_31

    and-int/lit8 v2, v12, -0x11

    or-int/lit8 v12, v2, 0x40

    goto :goto_15

    :cond_2f
    and-int/lit8 v3, v12, 0x20

    if-eqz v3, :cond_30

    and-int/lit8 v2, v12, -0x21

    or-int/lit8 v12, v2, 0x8

    goto :goto_15

    :cond_30
    if-eqz v2, :cond_31

    and-int/lit8 v2, v12, -0x9

    or-int/lit8 v12, v2, 0x20

    :cond_31
    :goto_15
    iput v12, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto/16 :goto_21

    :cond_32
    if-ne v9, v4, :cond_4b

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result v2

    if-ne v2, v4, :cond_4b

    and-int/lit8 v2, v12, 0x8

    if-nez v2, :cond_34

    and-int/lit8 v9, v12, 0x10

    if-eqz v9, :cond_33

    goto :goto_16

    :cond_33
    move v9, v4

    goto :goto_17

    :cond_34
    :goto_16
    const/4 v9, 0x0

    :goto_17
    iput v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    iget v9, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    if-nez v9, :cond_36

    and-int/lit8 v2, v12, 0x40

    if-eqz v2, :cond_35

    and-int/lit8 v2, v12, -0x41

    or-int/lit8 v12, v2, 0x10

    goto :goto_18

    :cond_35
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_38

    and-int/lit8 v2, v12, -0x11

    or-int/lit8 v12, v2, 0x40

    goto :goto_18

    :cond_36
    and-int/lit8 v3, v12, 0x20

    if-eqz v3, :cond_37

    and-int/lit8 v2, v12, -0x21

    or-int/lit8 v12, v2, 0x8

    goto :goto_18

    :cond_37
    if-eqz v2, :cond_38

    and-int/lit8 v2, v12, -0x9

    or-int/lit8 v12, v2, 0x20

    :cond_38
    :goto_18
    iput v12, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto/16 :goto_21

    :cond_39
    iget-object v11, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    move-result v11

    iput v11, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    invoke-static {v12}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;->isOneDirectionPosition(I)Z

    move-result v11

    if-eqz v11, :cond_3f

    if-nez v9, :cond_3c

    if-eq v12, v7, :cond_3b

    if-ne v12, v6, :cond_3a

    goto :goto_19

    :cond_3a
    const/4 v3, 0x0

    goto :goto_1a

    :cond_3b
    :goto_19
    move v3, v4

    :goto_1a
    iput v3, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    goto/16 :goto_21

    :cond_3c
    if-ne v9, v4, :cond_4b

    if-eq v12, v7, :cond_3e

    if-ne v12, v6, :cond_3d

    goto :goto_1b

    :cond_3d
    move v3, v4

    goto :goto_1c

    :cond_3e
    :goto_1b
    const/4 v3, 0x0

    :goto_1c
    iput v3, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    goto/16 :goto_21

    :cond_3f
    iget v11, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    if-eq v11, v2, :cond_43

    if-eq v11, v15, :cond_42

    if-eq v11, v10, :cond_41

    if-eq v11, v14, :cond_40

    goto :goto_1f

    :cond_40
    and-int/lit8 v10, v12, 0x40

    if-eqz v10, :cond_49

    goto :goto_1d

    :cond_41
    and-int/lit8 v10, v12, 0x20

    if-eqz v10, :cond_49

    goto :goto_1d

    :cond_42
    and-int/lit8 v10, v12, 0x10

    if-eqz v10, :cond_49

    goto :goto_1d

    :cond_43
    and-int/lit8 v10, v12, 0x8

    if-eqz v10, :cond_49

    :goto_1d
    if-ne v9, v2, :cond_44

    iput v12, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto :goto_21

    :cond_44
    iget v2, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    if-nez v2, :cond_46

    and-int/lit8 v2, v12, 0x40

    if-eqz v2, :cond_45

    and-int/lit8 v2, v12, -0x41

    or-int/lit8 v12, v2, 0x10

    goto :goto_1e

    :cond_45
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_48

    and-int/lit8 v2, v12, -0x11

    or-int/lit8 v12, v2, 0x40

    goto :goto_1e

    :cond_46
    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_47

    and-int/lit8 v2, v12, -0x21

    or-int/lit8 v12, v2, 0x8

    goto :goto_1e

    :cond_47
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_48

    and-int/lit8 v2, v12, -0x9

    or-int/lit8 v12, v2, 0x20

    :cond_48
    :goto_1e
    iput v12, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto :goto_21

    :cond_49
    :goto_1f
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    move-result v2

    if-nez v2, :cond_4a

    move v3, v4

    goto :goto_20

    :cond_4a
    const/4 v3, 0x0

    :goto_20
    iput v3, v8, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    :cond_4b
    :goto_21
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2, v8, v4, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;I)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto/16 :goto_2a

    :cond_4c
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    move-result v3

    iget v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    and-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_4e

    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_4d

    goto :goto_22

    :cond_4d
    move v9, v4

    goto :goto_23

    :cond_4e
    :goto_22
    const/4 v9, 0x0

    :goto_23
    if-ne v3, v9, :cond_4f

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->invertDividerPosition(Landroid/window/WindowContainerTransaction;)V

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;I)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto/16 :goto_2a

    :cond_4f
    if-eqz v1, :cond_59

    and-int/lit8 v1, v8, 0x8

    if-nez v1, :cond_51

    and-int/lit8 v1, v8, 0x20

    if-eqz v1, :cond_50

    goto :goto_24

    :cond_50
    move v1, v4

    goto :goto_25

    :cond_51
    :goto_24
    const/4 v1, 0x0

    :goto_25
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    invoke-direct {v5}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    iget-object v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v8

    if-eq v8, v4, :cond_52

    if-eq v8, v2, :cond_53

    :cond_52
    const/4 v2, 0x0

    goto :goto_27

    :cond_53
    iget v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    if-eq v2, v6, :cond_54

    if-ne v2, v7, :cond_55

    :cond_54
    const/4 v2, 0x0

    goto :goto_26

    :cond_55
    iput v4, v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    const/4 v2, 0x0

    goto :goto_29

    :goto_26
    iput v2, v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    goto :goto_29

    :goto_27
    iget v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    if-eq v8, v6, :cond_57

    if-ne v8, v7, :cond_56

    goto :goto_28

    :cond_56
    iput v2, v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    goto :goto_29

    :cond_57
    :goto_28
    iput v4, v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    :goto_29
    iput v1, v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iput v2, v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1, v5, v4, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;I)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_2a

    :cond_58
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_59
    :goto_2a
    return-void

    :cond_5a
    :goto_2b
    const-string v1, "NaturalSwitchingChanger"

    const-string v2, "changeLayout: failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
