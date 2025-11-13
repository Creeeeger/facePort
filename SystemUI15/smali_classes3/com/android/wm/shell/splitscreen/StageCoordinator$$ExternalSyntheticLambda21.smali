.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda21;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-void
.end method


# virtual methods
.method public final onDisplayChange$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 20

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda21;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-nez v0, :cond_12

    iget-object v6, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v6, v6, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v6, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_2

    int-to-long v8, v0

    int-to-long v10, v1

    int-to-long v12, v2

    if-eqz v3, :cond_1

    iget-object v0, v3, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v6, v8, v9, v0}, [Ljava/lang/Object;

    move-result-object v19

    const-wide v15, -0x5e6711acf278c37cL    # -7.799037988047497E-147

    const/16 v17, 0x15

    const-string v18, "onDisplayChange: display=%d fromRot=%d toRot=%d config=%s"

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eq v1, v2, :cond_4

    iget-object v0, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-nez v0, :cond_3

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object v1, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget-object v1, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    :cond_4
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v0

    iget-object v1, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v6, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->rotateTo(I)V

    const/4 v1, 0x1

    if-eqz v3, :cond_8

    iget-object v8, v3, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    const-string v10, "StageCoordinator"

    if-eqz v9, :cond_5

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v12, v8, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v11, v12, :cond_5

    const/4 v11, 0x5

    if-ne v12, v11, :cond_5

    const-string v3, "onDisplayChange : defer updateConfig in splitVisible"

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v11, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v3, v3, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    :goto_1
    if-eqz v9, :cond_7

    iget v3, v8, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v3, :cond_7

    iget-object v9, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v3, v9, :cond_7

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    iget v9, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    if-eq v3, v9, :cond_7

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v9, :cond_6

    iget-boolean v9, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-nez v9, :cond_7

    :cond_6
    invoke-virtual {v5, v3, v7, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitDivision(IZZ)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Restore main Split Division="

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    iput v3, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    :cond_7
    iget-object v3, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v8}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_8
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v3, :cond_9

    iget-object v3, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v3, :cond_d

    iget-object v3, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    if-ne v3, v1, :cond_d

    :cond_9
    if-eq v6, v2, :cond_d

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    if-ne v6, v3, :cond_d

    :cond_a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v2, :cond_b

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    iget-object v2, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v3, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    iget v6, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v6, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {v6}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto :goto_2

    :cond_c
    iget-object v6, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    :goto_2
    int-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v3

    invoke-virtual {v2, v6, v7, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    iget v2, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v2

    invoke-virtual {v5, v4, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_3

    :cond_d
    iget-object v2, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v5, v2, v4, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    :goto_3
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v2

    if-eq v0, v2, :cond_11

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_e

    iget-object v0, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v0, :cond_10

    iget-object v0, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    if-ne v0, v1, :cond_10

    :cond_f
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {v5, v0, v7, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitDivision(IZZ)Z

    :cond_10
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    :cond_11
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    goto :goto_4

    :cond_12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    return-void
.end method
