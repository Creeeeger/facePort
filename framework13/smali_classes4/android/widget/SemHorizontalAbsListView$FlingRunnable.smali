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

    .line 7047
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7021
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;-><init>(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 7048
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 7049
    return-void
.end method


# virtual methods
.method blacklist edgeReached(I)V
    .locals 4
    .param p1, "delta"    # I

    .line 7093
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->access$400(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 7094
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v0

    .line 7095
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    .line 7096
    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$mcontentFits(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7105
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7106
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, v1, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_3

    .line 7107
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, v1, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto :goto_2

    .line 7097
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x6

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7098
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 7099
    .local v1, "vel":I
    if-lez p1, :cond_2

    .line 7100
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmEdgeGlowLeft(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 7102
    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmEdgeGlowRight(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 7104
    .end local v1    # "vel":I
    :goto_1
    nop

    .line 7110
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 7111
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7112
    return-void
.end method

.method blacklist endFling()V
    .locals 2

    .line 7124
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7126
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7127
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7129
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 7130
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$mclearScrollingCache(Landroid/widget/SemHorizontalAbsListView;)V

    .line 7131
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 7133
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7134
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 7135
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)V

    .line 7137
    :cond_0
    return-void
.end method

.method blacklist flywheelTouch()V
    .locals 4

    .line 7140
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7141
    return-void
.end method

.method public whitelist test-api run()V
    .locals 20

    .line 7145
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 7147
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7148
    return-void

    .line 7248
    :pswitch_1
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 7249
    .local v1, "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7250
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->access$1100(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    .line 7251
    .local v4, "scrollX":I
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v15

    .line 7252
    .local v15, "currX":I
    sub-int v16, v15, v4

    .line 7253
    .local v16, "deltaX":I
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v5, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v6, v16

    move v8, v4

    invoke-static/range {v5 .. v14}, Landroid/widget/SemHorizontalAbsListView;->access$1200(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7255
    if-gtz v4, :cond_0

    if-lez v15, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 7256
    .local v5, "crossRight":Z
    :goto_0
    if-ltz v4, :cond_1

    if-gez v15, :cond_1

    move v2, v3

    .line 7257
    .local v2, "crossLeft":Z
    :cond_1
    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 7265
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_2

    .line 7258
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    .line 7259
    .local v3, "velocity":I
    if-eqz v2, :cond_4

    neg-int v3, v3

    .line 7262
    :cond_4
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 7263
    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    .line 7264
    .end local v3    # "velocity":I
    nop

    .line 7267
    .end local v2    # "crossLeft":Z
    .end local v5    # "crossRight":Z
    :goto_2
    goto :goto_3

    .line 7268
    :cond_5
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 7269
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7271
    .end local v4    # "scrollX":I
    .end local v15    # "currX":I
    .end local v16    # "deltaX":I
    :goto_3
    goto/16 :goto_6

    .line 7272
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7274
    goto/16 :goto_6

    .line 7151
    .end local v1    # "scroller":Landroid/widget/OverScroller;
    :pswitch_2
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7152
    return-void

    .line 7156
    :cond_7
    :pswitch_3
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v1, v1, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v1, :cond_8

    .line 7157
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 7160
    :cond_8
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_7

    .line 7165
    :cond_9
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 7166
    .restart local v1    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    .line 7167
    .local v4, "more":Z
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    .line 7171
    .local v5, "x":I
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v6, v5

    .line 7174
    .local v6, "delta":I
    if-lez v6, :cond_a

    .line 7176
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v8, v7, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iput v8, v7, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 7177
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7178
    .local v7, "firstView":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, v8, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 7181
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

    .line 7182
    .end local v7    # "firstView":Landroid/view/View;
    goto :goto_4

    .line 7184
    :cond_a
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v3

    .line 7185
    .local v7, "offsetToLast":I
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v9, v8, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iput v9, v8, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 7187
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v8, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7188
    .local v8, "lastView":Landroid/view/View;
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 7191
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

    .line 7195
    .end local v7    # "offsetToLast":I
    .end local v8    # "lastView":Landroid/view/View;
    :goto_4
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v8, v7, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v9, v9, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7196
    .local v7, "motionView":Landroid/view/View;
    const/4 v8, 0x0

    .line 7197
    .local v8, "oldLeft":I
    if-eqz v7, :cond_b

    .line 7198
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 7202
    :cond_b
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9, v6, v6}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v9

    .line 7203
    .local v9, "atEdge":Z
    if-eqz v9, :cond_c

    if-eqz v6, :cond_c

    move v2, v3

    .line 7205
    .local v2, "atEnd":Z
    :cond_c
    if-eqz v2, :cond_e

    .line 7206
    if-eqz v7, :cond_d

    .line 7208
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v8

    sub-int v3, v6, v3

    neg-int v3, v3

    .line 7209
    .local v3, "overshoot":I
    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v12, 0x0

    invoke-static {v10}, Landroid/widget/SemHorizontalAbsListView;->access$900(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v11, v11, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v11

    move v11, v3

    invoke-static/range {v10 .. v19}, Landroid/widget/SemHorizontalAbsListView;->access$1000(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    .line 7212
    .end local v3    # "overshoot":I
    :cond_d
    if-eqz v4, :cond_11

    .line 7213
    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->edgeReached(I)V

    goto :goto_6

    .line 7218
    :cond_e
    if-eqz v4, :cond_10

    if-nez v2, :cond_10

    .line 7219
    if-eqz v9, :cond_f

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 7220
    :cond_f
    iput v5, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 7221
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 7223
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7237
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

    .line 7240
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I

    move-result v10

    invoke-static {v3, v10}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 7241
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/SemHorizontalAbsListView;)V

    .line 7277
    .end local v1    # "scroller":Landroid/widget/OverScroller;
    .end local v2    # "atEnd":Z
    .end local v4    # "more":Z
    .end local v5    # "x":I
    .end local v6    # "delta":I
    .end local v7    # "motionView":Landroid/view/View;
    .end local v8    # "oldLeft":I
    .end local v9    # "atEdge":Z
    :cond_11
    :goto_6
    return-void

    .line 7161
    :cond_12
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7162
    return-void

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
    .param p1, "initialVelocity"    # I

    .line 7052
    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7053
    .local v0, "initialX":I
    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 7054
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7055
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v2, v0

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 7057
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7058
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7067
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7068
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const-string v2, "SemHorizontalAbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)V

    .line 7070
    :cond_1
    return-void
.end method

.method blacklist startOverfling(I)V
    .locals 13
    .param p1, "initialVelocity"    # I

    .line 7084
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7085
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$300(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    .line 7086
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v11

    .line 7085
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 7087
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7088
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 7089
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7090
    return-void
.end method

.method blacklist startScroll(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .line 7115
    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7116
    .local v0, "initialX":I
    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 7117
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v2, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7118
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 7119
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7120
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7121
    return-void
.end method

.method blacklist startSpringback()V
    .locals 7

    .line 7073
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->access$200(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7074
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7075
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 7076
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7078
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7079
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 7081
    :goto_0
    return-void
.end method
