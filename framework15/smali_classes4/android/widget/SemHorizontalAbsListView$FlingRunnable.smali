.class Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final blacklist FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final blacklist mCheckFlywheel:Ljava/lang/Runnable;

.field private blacklist mLastFlingX:I

.field private final blacklist mScroller:Landroid/widget/OverScroller;

.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;-><init>(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method blacklist edgeReached(I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->access$400(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$mcontentFits(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, v1, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, v1, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x6

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-lez p1, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmEdgeGlowLeft(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmEdgeGlowRight(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_1
    nop

    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist endFling()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$mclearScrollingCache(Landroid/widget/SemHorizontalAbsListView;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)V

    :cond_0
    return-void
.end method

.method blacklist flywheelTouch()V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public whitelist test-api run()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    return-void

    :pswitch_1
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->access$1100(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v15

    sub-int v16, v15, v4

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v12, v6, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v6, v16

    move v8, v4

    invoke-static/range {v5 .. v14}, Landroid/widget/SemHorizontalAbsListView;->access$1200(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    move-result v5

    if-eqz v5, :cond_5

    if-gtz v4, :cond_0

    if-lez v15, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    if-ltz v4, :cond_1

    if-gez v15, :cond_1

    move v2, v3

    :cond_1
    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    if-eqz v2, :cond_4

    neg-int v3, v3

    :cond_4
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    nop

    :goto_2
    goto :goto_3

    :cond_5
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_3
    goto/16 :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    :pswitch_3
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v1, v1, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_8
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_7

    :cond_9
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v6, v5

    if-lez v6, :cond_a

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v8, v8, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iput v8, v7, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, v8, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v8}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v9}, Landroid/widget/SemHorizontalAbsListView;->access$500(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v9}, Landroid/widget/SemHorizontalAbsListView;->access$600(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v3

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_4

    :cond_a
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v3

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v9, v9, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iput v9, v8, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v8, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v10}, Landroid/widget/SemHorizontalAbsListView;->access$700(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v10}, Landroid/widget/SemHorizontalAbsListView;->access$800(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v3

    neg-int v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_4
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v8, v8, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v9, v9, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    :cond_b
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9, v6, v6}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v9

    if-eqz v9, :cond_c

    if-eqz v6, :cond_c

    move v2, v3

    :cond_c
    if-eqz v2, :cond_e

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v8

    sub-int v3, v6, v3

    neg-int v3, v3

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v11}, Landroid/widget/SemHorizontalAbsListView;->access$900(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v13

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v15, v11, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v3

    move/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-static/range {v10 .. v19}, Landroid/widget/SemHorizontalAbsListView;->access$1000(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    :cond_d
    if-eqz v4, :cond_11

    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->edgeReached(I)V

    goto :goto_6

    :cond_e
    if-eqz v4, :cond_10

    if-nez v2, :cond_10

    if-eqz v9, :cond_f

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_f
    iput v5, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    :goto_5
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v3

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v10

    if-ne v3, v10, :cond_11

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v3, :cond_11

    if-nez v6, :cond_11

    if-nez v4, :cond_11

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I

    move-result v10

    invoke-static {v3, v10}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;I)V

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/SemHorizontalAbsListView;)V

    :cond_11
    :goto_6
    return-void

    :cond_12
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method blacklist start(I)V
    .locals 10

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    move v2, v0

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const-string v2, "SemHorizontalAbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)V

    :cond_1
    return-void
.end method

.method blacklist startOverfling(I)V
    .locals 13

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$300(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v11

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist startScroll(IIZ)V
    .locals 7

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v2, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist startSpringback()V
    .locals 7

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->access$200(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    :goto_0
    return-void
.end method
