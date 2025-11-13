.class public final Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# instance fields
.field public mDimValue1:F

.field public mDimValue2:F

.field public final mDisplayId:I

.field public mEndImeTop:I

.field public mHasImeFocus:Z

.field public mImeShown:Z

.field public mLastYOffset:I

.field public mStartImeTop:I

.field public mTargetYOffset:I

.field public mTaskBoundsAdjusted:Z

.field public mYOffsetForIme:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    return-void
.end method


# virtual methods
.method public final adjustSurfaceLayoutForIme(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz p2, :cond_2

    iget-object v5, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    iget-object v5, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, p2, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v5, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v5, v6

    invoke-virtual {p1, p3, p2, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object p3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    iget p3, p3, Landroid/graphics/Rect;->top:I

    neg-int p3, p3

    invoke-virtual {p2, v5, p3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, p4, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v3

    :goto_2
    if-eqz v0, :cond_6

    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    invoke-virtual {p1, p5, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    cmpl-float p3, p3, v1

    if-lez p3, :cond_4

    move p3, v2

    goto :goto_3

    :cond_4
    move p3, v3

    :goto_3
    invoke-virtual {p2, p5, p3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    invoke-virtual {p1, p6, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_5

    move v3, v2

    :cond_5
    invoke-virtual {p1, p6, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    :cond_6
    move v2, p2

    :goto_4
    return v2
.end method

.method public final getMinTopStackBottom()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0
.end method

.method public final onImeControlTargetChanged(IZ)V
    .locals 10

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_5

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    const-string p2, "onImeControlTargetChanged"

    invoke-virtual {p0, p2, p1, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-object p2, p1

    check-cast p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    int-to-long v2, v1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v8, "setLayoutOffsetTarget: x=%d y=%d"

    const-wide v5, 0xaeb55a2879c37baL

    const/4 v7, 0x5

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget-object v2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v3, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-nez v0, :cond_2

    move-object v4, v3

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getBottomStages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->applyLayoutOffsetTargetForMultiSplit(Landroid/window/WindowContainerTransaction;ILjava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    iget-object v3, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v3, v1, v1}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2, v1, v1}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    :goto_2
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p2, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_5
    return-void
.end method

.method public final onImeEndPositioning(IZ)V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    if-eqz p1, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v3, 0x3

    const-string v4, "Split IME animation ending, canceled=%b"

    const-wide v1, -0x7efadb833a15c22cL    # -9.634547369590513E-304

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->onProgress(F)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onImePositionChanged(II)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    if-eqz p1, :cond_1

    :cond_0
    int-to-float p1, p2

    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    int-to-float v0, p2

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->onProgress(F)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_1
    return-void
.end method

.method public final onImeStartPositioning(IIZZI)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    const/4 v3, 0x0

    iget v4, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    move/from16 v5, p1

    if-ne v5, v4, :cond_1d

    iget-object v5, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v6, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-nez v6, :cond_0

    goto/16 :goto_16

    :cond_0
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    iget-object v7, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v8, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    if-eqz v6, :cond_1

    invoke-virtual {v7, v4}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object v4

    move-object v7, v8

    check-cast v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemStagePosition(Landroid/window/WindowContainerToken;)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v4}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object v4

    move-object v7, v8

    check-cast v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    move-result v4

    :goto_0
    const/4 v7, 0x1

    if-eqz v6, :cond_3

    if-eqz v4, :cond_2

    :goto_1
    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v3

    goto :goto_2

    :cond_3
    const/4 v9, -0x1

    if-eq v4, v9, :cond_2

    goto :goto_1

    :goto_2
    iput-boolean v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    const-string v10, "SplitLayout"

    const-string v11, "onImeStartPositioning"

    if-nez v9, :cond_7

    iget v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "onImeStartPositioning: start animation, showing="

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", shownTop="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", reason=AdjustedByIme"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    if-nez v1, :cond_6

    iget-object v0, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v11, v7, v3}, Lcom/android/wm/shell/common/split/DividerView;->setInteractive(Ljava/lang/String;ZZ)V

    :cond_6
    :goto_3
    return v3

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    move/from16 v9, p2

    goto :goto_5

    :cond_8
    move v9, v2

    :goto_5
    iput v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    if-eqz v1, :cond_9

    move v9, v2

    goto :goto_6

    :cond_9
    move/from16 v9, p2

    :goto_6
    iput v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    iput-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    iget v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    iput v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    if-eqz v6, :cond_b

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_a

    if-nez p4, :cond_a

    if-eqz v1, :cond_a

    :goto_7
    move v1, v7

    goto :goto_8

    :cond_a
    move v1, v3

    goto :goto_8

    :cond_b
    if-ne v4, v7, :cond_a

    if-nez p4, :cond_a

    iget-object v1, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz v1, :cond_a

    goto :goto_7

    :goto_8
    iget-object v4, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v9, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v4, v9

    const v9, 0x40038e39

    cmpl-float v4, v4, v9

    if-ltz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getMinTopStackBottom()I

    move-result v4

    iget v9, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr v4, v9

    iget v9, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    int-to-float v9, v9

    const/high16 v12, 0x43200000    # 160.0f

    div-float/2addr v9, v12

    sub-int/2addr v2, v4

    const/high16 v4, 0x43040000    # 132.0f

    mul-float/2addr v9, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v9, v4

    float-to-int v4, v9

    if-lt v2, v4, :cond_c

    move v2, v7

    goto :goto_9

    :cond_c
    move v2, v3

    :goto_9
    if-eqz v1, :cond_12

    iget v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    iget v4, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v4, :cond_d

    iget-object v4, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTopStageBottom()I

    move-result v4

    goto :goto_a

    :cond_d
    iget-object v4, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getMinTopStackBottom()I

    move-result v9

    if-eqz v2, :cond_e

    sub-int/2addr v4, v9

    goto :goto_b

    :cond_e
    const v2, 0x3f333333    # 0.7f

    if-eqz v6, :cond_f

    iget-object v4, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v4

    iget-object v4, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTopStageBottom()I

    move-result v4

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v2, v9

    sub-int/2addr v4, v2

    goto :goto_b

    :cond_f
    iget-object v4, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    :goto_b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v2, :cond_10

    goto :goto_d

    :cond_10
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_c
    neg-int v1, v1

    goto :goto_e

    :cond_11
    :goto_d
    iget-object v2, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerRadius(Landroid/content/Context;)I

    move-result v2

    iget-object v9, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v2

    sub-int/2addr v1, v9

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_c

    :cond_12
    move v1, v3

    :goto_e
    iput v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iget v2, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    if-eq v1, v2, :cond_15

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_13

    int-to-long v9, v2

    int-to-long v1, v1

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v17

    const/4 v15, 0x5

    const-string v16, "Split IME animation starting, fromY=%d toY=%d"

    const-wide v13, 0x7082c27f3183842L

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    if-eqz v1, :cond_14

    move v2, v7

    goto :goto_f

    :cond_14
    move v2, v3

    :goto_f
    iput-boolean v2, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTaskBoundsAdjusted:Z

    check-cast v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v8, v5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setLayoutOffsetTargetForEnsureDock(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    goto :goto_10

    :cond_15
    iget-boolean v2, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTaskBoundsAdjusted:Z

    if-eqz v2, :cond_16

    if-nez v1, :cond_16

    const-string v1, "onImeStartPositioning. y offset is 0 but task adjusted. reset task bounds."

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTaskBoundsAdjusted:Z

    check-cast v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v8, v5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setLayoutOffsetTargetForEnsureDock(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    :cond_16
    :goto_10
    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    if-eqz v1, :cond_18

    if-eqz p4, :cond_17

    goto :goto_11

    :cond_17
    move v1, v3

    goto :goto_12

    :cond_18
    :goto_11
    move v1, v7

    :goto_12
    invoke-virtual {v5, v11, v1, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(Ljava/lang/String;ZZ)V

    if-eqz v6, :cond_1c

    iget-object v1, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    if-nez v1, :cond_19

    goto :goto_13

    :cond_19
    move v1, v3

    goto :goto_14

    :cond_1a
    :goto_13
    move v1, v7

    :goto_14
    iget-object v2, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v2, v2, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-nez v2, :cond_1b

    goto :goto_15

    :cond_1b
    invoke-virtual {v2, v11, v1, v7}, Lcom/android/wm/shell/common/split/DividerView;->setInteractive(Ljava/lang/String;ZZ)V

    :cond_1c
    :goto_15
    iget v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    if-eq v1, v0, :cond_1d

    move v3, v7

    :cond_1d
    :goto_16
    return v3
.end method

.method public final onProgress(F)V
    .locals 2

    const/4 v0, 0x0

    mul-float v1, v0, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    int-to-float v1, v1

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    return-void
.end method
