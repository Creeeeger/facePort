.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final greylist-max-o FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final greylist-max-o mCheckFlywheel:Ljava/lang/Runnable;

.field private greylist-max-o mLastFlingY:I

.field private final greylist mScroller:Landroid/widget/OverScroller;

.field private greylist-max-o mSuppressIdleStateChangeCall:Z

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuppressIdleStateChangeCall(Landroid/widget/AbsListView$FlingRunnable;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .line 5418
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5391
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 5419
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 5420
    return-void
.end method


# virtual methods
.method greylist-max-o edgeReached(I)V
    .locals 4
    .param p1, "delta"    # I

    .line 5497
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$400(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 5498
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 5499
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 5500
    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$mcontentFits(Landroid/widget/AbsListView;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5509
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5510
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_3

    .line 5511
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto :goto_2

    .line 5501
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x6

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5502
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 5503
    .local v1, "vel":I
    if-lez p1, :cond_2

    .line 5504
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 5506
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 5508
    .end local v1    # "vel":I
    :goto_1
    nop

    .line 5514
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidate()V

    .line 5515
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5516
    return-void
.end method

.method greylist-max-p endFling()V
    .locals 2

    .line 5532
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5534
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5535
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5537
    iget-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    if-nez v0, :cond_0

    .line 5538
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5540
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$mclearScrollingCache(Landroid/widget/AbsListView;)V

    .line 5541
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5543
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5544
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 5545
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-$$Nest$fputmFlingStrictSpan(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)V

    .line 5547
    :cond_1
    return-void
.end method

.method greylist-max-o flywheelTouch()V
    .locals 4

    .line 5558
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5559
    return-void
.end method

.method blacklist removeAllCallbacks()V
    .locals 2

    .line 5551
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5552
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5553
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5554
    return-void
.end method

.method public whitelist test-api run()V
    .locals 20

    .line 5563
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 5565
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5566
    return-void

    .line 5666
    :pswitch_1
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 5667
    .local v1, "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5668
    iget-object v4, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)I

    move-result v4

    .line 5669
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v15

    .line 5670
    .local v15, "currY":I
    sub-int v16, v15, v4

    .line 5671
    .local v16, "deltaY":I
    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    move/from16 v7, v16

    move v9, v4

    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5673
    if-gtz v4, :cond_0

    if-lez v15, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 5674
    .local v5, "crossDown":Z
    :goto_0
    if-ltz v4, :cond_1

    if-gez v15, :cond_1

    move v2, v3

    .line 5675
    .local v2, "crossUp":Z
    :cond_1
    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 5685
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_2

    .line 5676
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 5677
    nop

    .line 5684
    nop

    .line 5687
    .end local v2    # "crossUp":Z
    .end local v5    # "crossDown":Z
    :goto_2
    goto :goto_3

    .line 5688
    :cond_4
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 5689
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5691
    .end local v4    # "scrollY":I
    .end local v15    # "currY":I
    .end local v16    # "deltaY":I
    :goto_3
    goto/16 :goto_6

    .line 5692
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5694
    goto/16 :goto_6

    .line 5569
    .end local v1    # "scroller":Landroid/widget/OverScroller;
    :pswitch_2
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5570
    return-void

    .line 5574
    :cond_6
    :pswitch_3
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_7

    .line 5575
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5578
    :cond_7
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_7

    .line 5583
    :cond_8
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 5584
    .restart local v1    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    .line 5585
    .local v4, "more":Z
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    .line 5589
    .local v5, "y":I
    iget v6, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int/2addr v6, v5

    .line 5592
    .local v6, "delta":I
    if-lez v6, :cond_9

    .line 5594
    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v8, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v8, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5595
    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5596
    .local v7, "firstView":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5599
    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->access$500(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->access$600(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v3

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 5600
    .end local v7    # "firstView":Landroid/view/View;
    goto :goto_4

    .line 5602
    :cond_9
    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v3

    .line 5603
    .local v7, "offsetToLast":I
    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v8, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iput v9, v8, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5605
    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5606
    .local v8, "lastView":Landroid/view/View;
    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5609
    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v10}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v10}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v3

    neg-int v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5613
    .end local v7    # "offsetToLast":I
    .end local v8    # "lastView":Landroid/view/View;
    :goto_4
    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v8, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5614
    .local v7, "motionView":Landroid/view/View;
    const/4 v8, 0x0

    .line 5615
    .local v8, "oldTop":I
    if-eqz v7, :cond_a

    .line 5616
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 5620
    :cond_a
    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v6, v6}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v9

    .line 5621
    .local v9, "atEdge":Z
    if-eqz v9, :cond_b

    if-eqz v6, :cond_b

    move v2, v3

    .line 5622
    .local v2, "atEnd":Z
    :cond_b
    if-eqz v2, :cond_d

    .line 5623
    if-eqz v7, :cond_c

    .line 5625
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v8

    sub-int v3, v6, v3

    neg-int v3, v3

    .line 5626
    .local v3, "overshoot":I
    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static {v10}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v12, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v12, v12, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/16 v19, 0x0

    move/from16 v18, v12

    move v12, v3

    invoke-static/range {v10 .. v19}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 5629
    .end local v3    # "overshoot":I
    :cond_c
    if-eqz v4, :cond_10

    .line 5630
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto :goto_6

    .line 5635
    :cond_d
    if-eqz v4, :cond_f

    if-nez v2, :cond_f

    .line 5636
    if-eqz v9, :cond_e

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 5637
    :cond_e
    iput v5, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5638
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 5640
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5655
    :goto_5
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result v3

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v10

    if-ne v3, v10, :cond_10

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v3, :cond_10

    if-nez v6, :cond_10

    if-nez v4, :cond_10

    .line 5658
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I

    move-result v10

    invoke-static {v3, v10}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    .line 5659
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/AbsListView;)V

    .line 5697
    .end local v1    # "scroller":Landroid/widget/OverScroller;
    .end local v2    # "atEnd":Z
    .end local v4    # "more":Z
    .end local v5    # "y":I
    .end local v6    # "delta":I
    .end local v7    # "motionView":Landroid/view/View;
    .end local v8    # "oldTop":I
    .end local v9    # "atEdge":Z
    :cond_10
    :goto_6
    return-void

    .line 5579
    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5580
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method greylist-max-p start(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .line 5425
    const/4 v0, 0x0

    if-gez p1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    move v1, v0

    .line 5426
    .local v1, "initialY":I
    :goto_0
    iput v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5427
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5428
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v4, v1

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5430
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5431
    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 5432
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5433
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5442
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5443
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v2, "AbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/widget/AbsListView;->-$$Nest$fputmFlingStrictSpan(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)V

    .line 5445
    :cond_1
    return-void
.end method

.method blacklist start(IZ)V
    .locals 12
    .param p1, "initialVelocity"    # I
    .param p2, "accDisabled"    # Z

    .line 5449
    const/4 v0, 0x0

    if-gez p1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    move v1, v0

    .line 5450
    .local v1, "initialY":I
    :goto_0
    iput v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5451
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5452
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v4, v1

    move v6, p1

    move v11, p2

    invoke-virtual/range {v2 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIZ)V

    .line 5454
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5455
    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 5457
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5458
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5459
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5468
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5469
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v2, "AbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/widget/AbsListView;->-$$Nest$fputmFlingStrictSpan(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)V

    .line 5471
    :cond_1
    return-void
.end method

.method greylist-max-o startOverfling(I)V
    .locals 13
    .param p1, "initialVelocity"    # I

    .line 5487
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5488
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$300(Landroid/widget/AbsListView;)I

    move-result v4

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 5489
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    .line 5488
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 5490
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5491
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 5492
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5493
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5494
    return-void
.end method

.method greylist-max-o startScroll(IIZZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z
    .param p4, "suppressEndFlingStateChangeCall"    # Z

    .line 5520
    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5521
    .local v0, "initialY":I
    :goto_0
    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5522
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v2, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5523
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, v0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5524
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5525
    iput-boolean p4, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 5526
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5527
    return-void
.end method

.method greylist-max-o startSpringback()V
    .locals 8

    .line 5475
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 5476
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5477
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5478
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5479
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5481
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5482
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5484
    :goto_0
    return-void
.end method
