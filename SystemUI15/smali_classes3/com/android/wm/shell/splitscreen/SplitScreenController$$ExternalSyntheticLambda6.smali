.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "goToFullscreenFromSplit"

    const/4 v7, 0x0

    const-wide v3, -0x21da67ad513ac0d4L    # -3.370709813723639E145

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v0, v2, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(IZ)V

    :cond_3
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "onFinishedWakingUp"

    const/4 v6, 0x0

    const-wide v2, 0x1e415c238397395cL    # 6.029204247204683E-163

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSplitDivisionIfNeeded()V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCoverDisplaySplitLayoutIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSplitDivisionIfNeeded()V

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mBreakOnNextWake:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->dismissSplitKeepingLastActiveStage(I)V

    :cond_8
    :goto_2
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->recordLastActiveStage()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onInit()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
