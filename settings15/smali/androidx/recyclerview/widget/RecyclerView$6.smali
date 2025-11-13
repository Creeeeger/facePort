.class public final Landroidx/recyclerview/widget/RecyclerView$6;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v1, v1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v2, :cond_1

    const-string v0, "SeslRecyclerView"

    const-string v1, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    iget-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    iget-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    if-eqz v4, :cond_2

    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    sub-long v5, v2, v5

    iget-wide v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollTimeInterval:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    goto/16 :goto_f

    :cond_2
    iget-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    if-eqz v5, :cond_3

    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    sub-long/2addr v2, v5

    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_3

    goto/16 :goto_f

    :cond_3
    const/4 v2, 0x1

    if-eqz v4, :cond_5

    iget-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    if-nez v3, :cond_5

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_4

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_4
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    :cond_5
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v2, :cond_6

    move v5, v2

    goto :goto_0

    :cond_6
    move v5, v6

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown$1()Z

    move-result v7

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp$1()Z

    move-result v8

    sget v9, Landroidx/recyclerview/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v2, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    iget-wide v10, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x2

    cmp-long v12, v10, v12

    const-wide/16 v13, 0x4

    if-lez v12, :cond_7

    cmp-long v12, v10, v13

    if-gez v12, :cond_7

    int-to-double v10, v9

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    goto :goto_1

    :cond_7
    cmp-long v12, v10, v13

    const-wide/16 v13, 0x5

    if-ltz v12, :cond_8

    cmp-long v12, v10, v13

    if-gez v12, :cond_8

    int-to-double v10, v9

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    goto :goto_1

    :cond_8
    cmp-long v10, v10, v13

    if-ltz v10, :cond_9

    int-to-double v10, v9

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    :cond_9
    :goto_1
    iget v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-ne v9, v11, :cond_b

    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    iget v12, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    goto :goto_2

    :cond_a
    iget v12, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    mul-int/lit8 v12, v12, -0x1

    :goto_2
    iget v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    if-eq v13, v9, :cond_d

    iget-boolean v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    if-ne v13, v2, :cond_d

    iput-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iput v6, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iget v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByBottom:I

    iput v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    goto :goto_4

    :cond_b
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    iget v12, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    mul-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_c
    iget v12, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    :goto_3
    iget v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    if-eq v13, v9, :cond_d

    iget-boolean v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    if-ne v13, v2, :cond_d

    iput-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iput v6, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iget v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByTop:I

    iput v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    :cond_d
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_e

    goto/16 :goto_f

    :cond_e
    if-gez v12, :cond_f

    if-nez v8, :cond_10

    :cond_f
    if-lez v12, :cond_1a

    if-eqz v7, :cond_1a

    :cond_10
    if-eqz v4, :cond_11

    move v11, v2

    :cond_11
    invoke-virtual {v1, v11, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)V

    if-eqz v4, :cond_13

    if-eqz v5, :cond_12

    neg-int v7, v12

    move v14, v7

    goto :goto_5

    :cond_12
    move v14, v12

    goto :goto_5

    :cond_13
    move v14, v6

    :goto_5
    if-eqz v3, :cond_14

    move v15, v12

    goto :goto_6

    :cond_14
    move v15, v6

    :goto_6
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(III[I[I)Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz v4, :cond_16

    if-eqz v5, :cond_15

    neg-int v0, v12

    goto :goto_7

    :cond_15
    move v0, v12

    goto :goto_7

    :cond_16
    move v0, v6

    :goto_7
    if-eqz v3, :cond_17

    goto :goto_8

    :cond_17
    move v12, v6

    :goto_8
    invoke-virtual {v1, v0, v12, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_19

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    invoke-virtual {v1, v0, v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    goto :goto_9

    :cond_18
    invoke-virtual {v1, v12}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRangeBy$1(I)V

    :cond_19
    :goto_9
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_f

    :cond_1a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_1e

    if-ne v0, v2, :cond_1d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    :cond_1b
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-eq v0, v3, :cond_1c

    goto :goto_b

    :cond_1c
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-lt v3, v5, :cond_1e

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    if-gt v0, v3, :cond_1e

    :cond_1d
    :goto_a
    move v0, v6

    goto :goto_c

    :cond_1e
    :goto_b
    move v0, v2

    :goto_c
    if-eqz v0, :cond_24

    iget-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v3, :cond_24

    if-eqz v4, :cond_1f

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    goto :goto_d

    :cond_1f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    :goto_d
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    const/16 v5, 0x2710

    if-ne v3, v11, :cond_21

    if-eqz v4, :cond_20

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_e

    :cond_20
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_e

    :cond_21
    if-ne v3, v2, :cond_23

    if-eqz v4, :cond_22

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_e

    :cond_22
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop$1(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_23
    :goto_e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    :cond_24
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v3, v2, :cond_25

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_25
    if-nez v0, :cond_26

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v0, :cond_26

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    :cond_26
    :goto_f
    return-void
.end method
