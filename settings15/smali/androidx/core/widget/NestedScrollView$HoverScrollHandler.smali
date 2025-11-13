.class public final Landroidx/core/widget/NestedScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mScrollView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_14

    sget v0, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/core/widget/NestedScrollView;->mHoverRecognitionStartTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/core/widget/NestedScrollView;->mHoverRecognitionDurationTime:J

    iget-wide v3, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollTimeInterval:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v4, 0x2

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x4

    if-lez v4, :cond_2

    cmp-long v4, v2, v5

    if-gez v4, :cond_2

    int-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_2
    cmp-long v4, v2, v5

    const-wide/16 v5, 0x5

    if-ltz v4, :cond_3

    cmp-long v4, v2, v5

    if-gez v4, :cond_3

    int-to-double v2, v1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_3
    cmp-long v2, v2, v5

    if-ltz v2, :cond_4

    int-to-double v2, v1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    :cond_4
    :goto_0
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollDirection:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    iget v1, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    mul-int/2addr v1, v2

    goto :goto_1

    :cond_5
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    :goto_1
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    const/4 v10, 0x0

    if-gez v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    if-gtz v4, :cond_7

    :cond_6
    if-lez v1, :cond_c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    if-ge v4, p1, :cond_c

    :cond_7
    invoke-virtual {p0, v3, v0}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)V

    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v6, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0xfa

    invoke-virtual {p0, v10, v1, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(III)V

    goto :goto_2

    :cond_8
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mHasNestedScrollRange:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    if-eqz p1, :cond_b

    :cond_9
    iget p1, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    if-gez p1, :cond_a

    iput v10, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    goto :goto_2

    :cond_a
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->mNestedScrollRange:I

    if-le p1, v1, :cond_b

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    :cond_b
    :goto_2
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mHoverHandler:Landroidx/core/widget/NestedScrollView$HoverScrollHandler;

    const-wide/16 v1, 0x7

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_d

    if-ne v1, v0, :cond_e

    if-lez p1, :cond_e

    :cond_d
    move v10, v0

    :cond_e
    if-eqz v10, :cond_13

    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsHoverOverscrolled:Z

    if-nez p1, :cond_13

    iget p1, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollDirection:I

    const/16 v1, 0x2710

    if-ne p1, v3, :cond_f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    :cond_f
    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_10
    :goto_3
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_12
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsHoverOverscrolled:Z

    :cond_13
    if-nez v10, :cond_14

    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsHoverOverscrolled:Z

    if-nez p1, :cond_14

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsHoverOverscrolled:Z

    :cond_14
    :goto_4
    return-void
.end method
