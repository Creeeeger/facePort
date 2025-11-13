.class Landroid/widget/SemHorizontalAbsListView$PositionScroller;
.super Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final blacklist MOVE_DOWN_BOUND:I = 0x3

.field private static final blacklist MOVE_DOWN_POS:I = 0x1

.field private static final blacklist MOVE_OFFSET:I = 0x5

.field private static final blacklist MOVE_UP_BOUND:I = 0x4

.field private static final blacklist MOVE_UP_POS:I = 0x2

.field private static final blacklist SCROLL_DURATION:I = 0xc8


# instance fields
.field private blacklist mBoundPos:I

.field private final blacklist mExtraScroll:I

.field private blacklist mLastSeenPos:I

.field private blacklist mMode:I

.field private blacklist mOffsetFromLeft:I

.field private blacklist mScrollDuration:I

.field private blacklist mTargetPos:I

.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;-><init>()V

    invoke-static {p1}, Landroid/widget/SemHorizontalAbsListView;->access$1700(Landroid/widget/SemHorizontalAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 15

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    add-int v5, v1, v2

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    if-ge v3, v1, :cond_0

    sub-int v7, v1, v3

    add-int/lit8 v6, v7, 0x1

    goto :goto_0

    :cond_0
    if-le v3, v5, :cond_1

    sub-int v6, v3, v5

    :cond_1
    :goto_0
    int-to-float v7, v6

    int-to-float v8, v2

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    if-ge v3, v1, :cond_3

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v9, v9, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    goto :goto_1

    :cond_2
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    neg-int v9, v9

    :goto_1
    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v11, v9, v10, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_3
    if-le v3, v5, :cond_5

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v9, v9, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    neg-int v9, v9

    goto :goto_2

    :cond_4
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    :goto_2
    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v11, v9, v10, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_5
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v10, v3, v1

    invoke-virtual {v9, v10}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mOffsetFromLeft:I

    sub-int v10, v9, v10

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v11, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v13}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v12, v10, v11, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-gez v2, :cond_6

    return-void

    :cond_6
    add-int v3, v1, v2

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v3, v5, :cond_7

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v8, v0, v7

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v9, v9, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    if-le v3, v10, :cond_8

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v11, v8, v9

    neg-int v11, v11

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v10, v11, v12, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_8
    sub-int v10, v0, v9

    add-int v11, v7, v6

    if-le v10, v11, :cond_9

    iget-object v12, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v13, v10, v11

    neg-int v13, v13

    iget v14, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v12, v13, v14, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    :cond_9
    goto/16 :goto_6

    :pswitch_2
    const/4 v2, 0x1

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    if-eq v1, v6, :cond_d

    if-le v5, v4, :cond_d

    add-int v6, v1, v5

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v7, v7, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lt v6, v7, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v6, v7, :cond_b

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v10, v10, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    if-ge v6, v11, :cond_c

    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    add-int v12, v8, v9

    sub-int/2addr v12, v10

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v11, v3, v12, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_c
    if-le v9, v10, :cond_15

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v11, v9, v10

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v3, v11, v12, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_6

    :cond_d
    :goto_3
    return-void

    :pswitch_3
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v2, :cond_e

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_f

    return-void

    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lez v1, :cond_10

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_4

    :cond_10
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v5, v5, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    :goto_4
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v7, v3, v5

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v6, v7, v8, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    if-le v1, v4, :cond_11

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_11
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I

    move-result v6

    if-ne v4, v6, :cond_15

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v6

    invoke-static {v4, v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_6

    :pswitch_4
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    add-int v3, v1, v2

    if-gez v2, :cond_12

    return-void

    :cond_12
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v3, v5, :cond_13

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_13
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v8, v0, v7

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v9, v9, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    sub-int/2addr v9, v4

    if-ge v3, v9, :cond_14

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v9, v9, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_5

    :cond_14
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v9, v9, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    :goto_5
    sub-int v10, v6, v8

    add-int/2addr v10, v9

    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v11, v10, v12, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    if-ge v3, v4, :cond_15

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_15
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist scrollToVisible(III)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v4

    add-int v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v8, v8, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-lt v1, v3, :cond_0

    if-le v1, v5, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scrollToVisible called with targetPos "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not visible ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SemHorizontalAbsListView"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lt v2, v3, :cond_2

    if-le v2, v5, :cond_3

    :cond_2
    const/4 v2, -0x1

    :cond_3
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v9, v1, v3

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v10

    const/4 v11, 0x0

    if-le v10, v7, :cond_4

    sub-int v11, v10, v7

    :cond_4
    if-ge v9, v6, :cond_5

    sub-int v11, v9, v6

    :cond_5
    if-nez v11, :cond_7

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v12}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v12

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v13

    if-ne v12, v13, :cond_6

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I

    move-result v13

    invoke-static {v12, v13}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;I)V

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v12}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/SemHorizontalAbsListView;)V

    :cond_6
    return-void

    :cond_7
    if-ltz v2, :cond_9

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v13, v2, v3

    invoke-virtual {v12, v13}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-gez v11, :cond_8

    add-int v1, v14, v15

    if-le v1, v7, :cond_8

    sub-int v1, v14, v7

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_0

    :cond_8
    move/from16 v16, v2

    if-lez v11, :cond_a

    sub-int v1, v13, v15

    if-ge v1, v6, :cond_a

    sub-int v1, v13, v6

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_0

    :cond_9
    move/from16 v16, v2

    :cond_a
    :goto_0
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move/from16 v2, p3

    invoke-virtual {v1, v11, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    return-void
.end method

.method public blacklist start(I)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->stop()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/SemHorizontalAbsListView$PositionScroller$1;-><init>(Landroid/widget/SemHorizontalAbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int v2, v1, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0xc8

    const/4 v6, -0x1

    if-ge v4, v1, :cond_2

    sub-int v7, v1, v4

    add-int/2addr v7, v3

    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_2
    if-le v4, v2, :cond_4

    sub-int v7, v4, v2

    add-int/2addr v7, v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    :goto_0
    if-lez v7, :cond_3

    div-int/2addr v5, v7

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1

    :cond_3
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    :goto_1
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v3

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I

    move-result v7

    if-ne v3, v7, :cond_5

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v7

    invoke-static {v3, v7}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_5
    invoke-virtual {p0, v4, v6, v5}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public blacklist start(II)V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->stop()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->start(I)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v1, v1, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$PositionScroller$2;-><init>(Landroid/widget/SemHorizontalAbsListView$PositionScroller;II)V

    iput-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int v3, v2, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0xc8

    if-ge v5, v2, :cond_5

    sub-int v7, v3, p2

    if-ge v7, v4, :cond_3

    return-void

    :cond_3
    sub-int v8, v2, v5

    add-int/2addr v8, v4

    add-int/lit8 v4, v7, -0x1

    if-ge v4, v8, :cond_4

    move v9, v4

    const/4 v10, 0x4

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_4
    move v9, v8

    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    :goto_0
    goto :goto_2

    :cond_5
    if-le v5, v3, :cond_9

    sub-int v7, p2, v2

    if-ge v7, v4, :cond_6

    return-void

    :cond_6
    sub-int v8, v5, v3

    add-int/2addr v8, v4

    add-int/lit8 v9, v7, -0x1

    if-ge v9, v8, :cond_7

    move v4, v9

    const/4 v10, 0x3

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_7
    move v10, v8

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    move v9, v10

    :goto_1
    nop

    :goto_2
    if-lez v9, :cond_8

    div-int/2addr v6, v9

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_3

    :cond_8
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    :goto_3
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    invoke-virtual {p0, v5, p2, v6}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public blacklist startWithOffset(II)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public blacklist startWithOffset(III)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->stop()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    move v0, p2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    new-instance v2, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;

    invoke-direct {v2, p0, p1, v0, p3}, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;-><init>(Landroid/widget/SemHorizontalAbsListView$PositionScroller;III)V

    iput-object v2, v1, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mOffsetFromLeft:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    const/4 v3, 0x5

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int v4, v3, v0

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    if-ge v5, v3, :cond_2

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    sub-int v2, v3, v2

    goto :goto_0

    :cond_2
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    if-le v5, v4, :cond_4

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v2, v4

    :goto_0
    int-to-float v5, v2

    int-to-float v6, v0

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_3

    move v6, p3

    goto :goto_1

    :cond_3
    int-to-float v6, p3

    div-float/2addr v6, v5

    float-to-int v6, v6

    :goto_1
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v6, v1, p2

    invoke-virtual {v5, v6, p3, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method public blacklist stop()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
