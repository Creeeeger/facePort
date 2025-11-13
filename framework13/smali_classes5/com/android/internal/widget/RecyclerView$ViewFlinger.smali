.class Lcom/android/internal/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private blacklist mEatRunOnAnimationRequest:Z

.field blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mLastFlingX:I

.field private blacklist mLastFlingY:I

.field private blacklist mReSchedulePostAnimationCallback:Z

.field private blacklist mScroller:Landroid/widget/OverScroller;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;

    .line 4784
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4775
    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4782
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4785
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 4786
    return-void
.end method

.method private blacklist computeScrollDuration(IIII)I
    .locals 13
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 4951
    move-object v0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4952
    .local v1, "absDx":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4953
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4954
    .local v3, "horizontal":Z
    :goto_0
    mul-int v4, p3, p3

    mul-int v5, p4, p4

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4955
    .local v4, "velocity":I
    mul-int v5, p1, p1

    mul-int v6, p2, p2

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 4956
    .local v5, "delta":I
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    if-eqz v3, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    .line 4957
    .local v6, "containerSize":I
    :goto_1
    div-int/lit8 v7, v6, 0x2

    .line 4958
    .local v7, "halfContainerSize":I
    int-to-float v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    int-to-float v10, v6

    div-float/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 4959
    .local v8, "distanceRatio":F
    int-to-float v10, v7

    int-to-float v11, v7

    .line 4960
    invoke-direct {p0, v8}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 4963
    .local v10, "distance":F
    if-lez v4, :cond_2

    .line 4964
    const/high16 v9, 0x447a0000    # 1000.0f

    int-to-float v11, v4

    div-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    .local v9, "duration":I
    goto :goto_3

    .line 4966
    .end local v9    # "duration":I
    :cond_2
    if-eqz v3, :cond_3

    move v11, v1

    goto :goto_2

    :cond_3
    move v11, v2

    :goto_2
    int-to-float v11, v11

    .line 4967
    .local v11, "absDelta":F
    int-to-float v12, v6

    div-float v12, v11, v12

    add-float/2addr v12, v9

    const/high16 v9, 0x43960000    # 300.0f

    mul-float/2addr v12, v9

    float-to-int v9, v12

    .line 4969
    .end local v11    # "absDelta":F
    .restart local v9    # "duration":I
    :goto_3
    const/16 v11, 0x7d0

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11
.end method

.method private blacklist disableRunOnAnimationRequests()V
    .locals 1

    .line 4908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4909
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4910
    return-void
.end method

.method private blacklist distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 4945
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 4946
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 4947
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private blacklist enableRunOnAnimationRequests()V
    .locals 1

    .line 4913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4914
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 4915
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4917
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist fling(II)V
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 4929
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 4930
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4931
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4933
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4934
    return-void
.end method

.method blacklist postOnAnimation()V
    .locals 1

    .line 4920
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 4921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 4923
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4924
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4926
    :goto_0
    return-void
.end method

.method public whitelist test-api run()V
    .locals 16

    .line 4790
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 4791
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->stop()V

    .line 4792
    return-void

    .line 4794
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 4795
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4798
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 4799
    .local v1, "scroller":Landroid/widget/OverScroller;
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 4800
    .local v2, "smoothScroller":Lcom/android/internal/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    .line 4801
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 4802
    .local v3, "x":I
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    .line 4803
    .local v5, "y":I
    iget v6, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v3, v6

    .line 4804
    .local v6, "dx":I
    iget v7, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v7, v5, v7

    .line 4805
    .local v7, "dy":I
    const/4 v8, 0x0

    .line 4806
    .local v8, "hresult":I
    const/4 v9, 0x0

    .line 4807
    .local v9, "vresult":I
    iput v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4808
    iput v5, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4809
    const/4 v10, 0x0

    .local v10, "overscrollX":I
    const/4 v11, 0x0

    .line 4810
    .local v11, "overscrollY":I
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v12, :cond_5

    .line 4811
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 4812
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4813
    const-string v12, "RV Scroll"

    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4814
    if-eqz v6, :cond_1

    .line 4815
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v12, v6, v13, v14}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v8

    .line 4816
    sub-int v10, v6, v8

    .line 4818
    :cond_1
    if-eqz v7, :cond_2

    .line 4819
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v12, v7, v13, v14}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v9

    .line 4820
    sub-int v11, v7, v9

    .line 4822
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 4823
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->repositionShadowingViews()V

    .line 4825
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4826
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12, v4}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4828
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v12

    if-nez v12, :cond_5

    .line 4829
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 4830
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    .line 4831
    .local v12, "adapterSize":I
    if-nez v12, :cond_3

    .line 4832
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 4833
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v13

    if-lt v13, v12, :cond_4

    .line 4834
    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v2, v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4835
    sub-int v13, v6, v10

    sub-int v14, v7, v11

    invoke-static {v2, v13, v14}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->-$$Nest$monAnimation(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_0

    .line 4837
    :cond_4
    sub-int v13, v6, v10

    sub-int v14, v7, v11

    invoke-static {v2, v13, v14}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->-$$Nest$monAnimation(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    .line 4841
    .end local v12    # "adapterSize":I
    :cond_5
    :goto_0
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 4842
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 4844
    :cond_6
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    .line 4845
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12, v6, v7}, Lcom/android/internal/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 4847
    :cond_7
    if-nez v10, :cond_8

    if-eqz v11, :cond_12

    .line 4848
    :cond_8
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v12

    float-to-int v12, v12

    .line 4850
    .local v12, "vel":I
    const/4 v14, 0x0

    .line 4851
    .local v14, "velX":I
    if-eq v10, v3, :cond_b

    .line 4852
    if-gez v10, :cond_9

    neg-int v15, v12

    goto :goto_1

    :cond_9
    if-lez v10, :cond_a

    move v15, v12

    goto :goto_1

    :cond_a
    move v15, v4

    :goto_1
    move v14, v15

    .line 4855
    :cond_b
    const/4 v15, 0x0

    .line 4856
    .local v15, "velY":I
    if-eq v11, v5, :cond_e

    .line 4857
    if-gez v11, :cond_c

    neg-int v4, v12

    goto :goto_2

    :cond_c
    if-lez v11, :cond_d

    move v4, v12

    goto :goto_2

    :cond_d
    const/4 v4, 0x0

    :goto_2
    move v15, v4

    .line 4860
    :cond_e
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    if-eq v4, v13, :cond_f

    .line 4861
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v14, v15}, Lcom/android/internal/widget/RecyclerView;->absorbGlows(II)V

    .line 4863
    :cond_f
    if-nez v14, :cond_10

    if-eq v10, v3, :cond_10

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-nez v4, :cond_12

    :cond_10
    if-nez v15, :cond_11

    if-eq v11, v5, :cond_11

    .line 4864
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    if-nez v4, :cond_12

    .line 4865
    :cond_11
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4868
    .end local v12    # "vel":I
    .end local v14    # "velX":I
    .end local v15    # "velY":I
    :cond_12
    if-nez v8, :cond_13

    if-eqz v9, :cond_14

    .line 4869
    :cond_13
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4872
    :cond_14
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->access$200(Lcom/android/internal/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 4873
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 4876
    :cond_15
    const/4 v4, 0x1

    if-eqz v7, :cond_16

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    if-eqz v12, :cond_16

    if-ne v9, v7, :cond_16

    move v12, v4

    goto :goto_3

    :cond_16
    const/4 v12, 0x0

    .line 4878
    .local v12, "fullyConsumedVertical":Z
    :goto_3
    if-eqz v6, :cond_17

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v13

    if-eqz v13, :cond_17

    if-ne v8, v6, :cond_17

    move v13, v4

    goto :goto_4

    :cond_17
    const/4 v13, 0x0

    .line 4880
    .local v13, "fullyConsumedHorizontal":Z
    :goto_4
    if-nez v6, :cond_18

    if-eqz v7, :cond_1a

    :cond_18
    if-nez v13, :cond_1a

    if-eqz v12, :cond_19

    goto :goto_5

    :cond_19
    const/4 v4, 0x0

    .line 4883
    .local v4, "fullyConsumedAny":Z
    :cond_1a
    :goto_5
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1c

    if-nez v4, :cond_1b

    goto :goto_6

    .line 4889
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4890
    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    if-eqz v14, :cond_1d

    .line 4891
    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v14, v15, v6, v7}, Lcom/android/internal/widget/GapWorker;->postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V

    goto :goto_7

    .line 4884
    :cond_1c
    :goto_6
    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 4885
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 4886
    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v14}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 4896
    .end local v3    # "x":I
    .end local v4    # "fullyConsumedAny":Z
    .end local v5    # "y":I
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    .end local v8    # "hresult":I
    .end local v9    # "vresult":I
    .end local v10    # "overscrollX":I
    .end local v11    # "overscrollY":I
    .end local v12    # "fullyConsumedVertical":Z
    .end local v13    # "fullyConsumedHorizontal":Z
    :cond_1d
    :goto_7
    if-eqz v2, :cond_1f

    .line 4897
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4898
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->-$$Nest$monAnimation(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    .line 4900
    :cond_1e
    iget-boolean v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v3, :cond_1f

    .line 4901
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4904
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 4905
    return-void
.end method

.method public blacklist setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 4998
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 4999
    return-void
.end method

.method public blacklist smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 4937
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 4938
    return-void
.end method

.method public blacklist smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 4973
    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4974
    return-void
.end method

.method public blacklist smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 4941
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 4942
    return-void
.end method

.method public blacklist smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 4982
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4983
    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4984
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 4986
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 4987
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4988
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4989
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4990
    return-void
.end method

.method public blacklist smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 4977
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    .line 4978
    if-nez p3, :cond_0

    sget-object v1, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 4977
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4979
    return-void
.end method

.method public blacklist stop()V
    .locals 1

    .line 4993
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4994
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4995
    return-void
.end method
