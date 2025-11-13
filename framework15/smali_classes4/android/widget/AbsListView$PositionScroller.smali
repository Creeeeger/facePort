.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final greylist-max-o MOVE_DOWN_BOUND:I = 0x3

.field private static final greylist-max-o MOVE_DOWN_POS:I = 0x1

.field private static final greylist-max-o MOVE_OFFSET:I = 0x5

.field private static final greylist-max-o MOVE_UP_BOUND:I = 0x4

.field private static final greylist-max-o MOVE_UP_POS:I = 0x2

.field private static final greylist-max-o SCROLL_DURATION:I = 0xc8


# instance fields
.field private greylist-max-o mBoundPos:I

.field private final greylist-max-o mExtraScroll:I

.field private greylist-max-o mLastSeenPos:I

.field private greylist-max-o mMode:I

.field private greylist-max-o mOffsetFromTop:I

.field private greylist-max-o mScrollDuration:I

.field private blacklist mStoredFirstPosition:I

.field private greylist-max-o mTargetPos:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    invoke-static {p1}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    return-void
.end method

.method private greylist-max-o scrollToVisible(III)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    add-int v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

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

    const-string v9, "AbsListView"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lt v2, v3, :cond_2

    if-le v2, v5, :cond_3

    :cond_2
    const/4 v2, -0x1

    :cond_3
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v9, v1, v3

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    const/4 v11, 0x0

    if-le v10, v7, :cond_4

    sub-int v11, v10, v7

    :cond_4
    if-ge v9, v6, :cond_5

    sub-int v11, v9, v6

    :cond_5
    if-nez v11, :cond_7

    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v12}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result v12

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v13

    if-ne v12, v13, :cond_6

    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I

    move-result v13

    invoke-static {v12, v13}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v12}, Landroid/widget/AbsListView;->-$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/AbsListView;)V

    :cond_6
    return-void

    :cond_7
    if-ltz v2, :cond_9

    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v13, v2, v3

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

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
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v2, p3

    invoke-virtual {v1, v11, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object v2, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    return-void

    :cond_0
    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    add-int v7, v2, v3

    sub-int/2addr v7, v5

    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v12, v9

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v12, :cond_1

    move v12, v14

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v9

    int-to-float v12, v12

    int-to-float v15, v9

    div-float/2addr v12, v15

    :goto_0
    nop

    int-to-float v15, v11

    cmpl-float v13, v15, v13

    if-nez v13, :cond_2

    move v13, v14

    goto :goto_1

    :cond_2
    iget-object v13, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    int-to-float v15, v11

    div-float/2addr v13, v15

    :goto_1
    nop

    const/4 v15, 0x0

    if-ge v6, v2, :cond_3

    sub-int v4, v2, v6

    int-to-float v4, v4

    sub-float v17, v14, v12

    add-float v4, v4, v17

    add-float v15, v4, v14

    goto :goto_2

    :cond_3
    if-le v6, v7, :cond_4

    sub-int v4, v6, v7

    int-to-float v4, v4

    sub-float v17, v14, v13

    add-float v15, v4, v17

    :cond_4
    :goto_2
    int-to-float v4, v3

    div-float v4, v15, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    if-ge v6, v2, :cond_5

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    move/from16 v18, v3

    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    move/from16 v19, v4

    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v20, v8

    const/4 v8, 0x1

    invoke-virtual {v4, v14, v3, v8, v8}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_5
    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v8

    if-le v6, v7, :cond_6

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x1

    invoke-virtual {v8, v3, v4, v14, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_6
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v4, v6, v2

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    sub-int v4, v3, v4

    iget v8, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v8, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    move/from16 v21, v3

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v14, v3

    mul-float/2addr v8, v14

    float-to-int v3, v8

    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v16, v5

    const/4 v5, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v4, v3, v5, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_9

    :pswitch_1
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-gez v3, :cond_7

    return-void

    :cond_7
    add-int v4, v2, v3

    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v4, v5, :cond_8

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v8, v1, v7

    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-le v4, v10, :cond_9

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v11, v8, v9

    neg-int v11, v11

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13, v13}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_9
    sub-int v10, v1, v9

    add-int v11, v7, v6

    if-le v10, v11, :cond_a

    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v13, v10, v11

    neg-int v13, v13

    iget v14, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v16, v3

    const/4 v3, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v3, v15}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto :goto_3

    :cond_a
    move/from16 v16, v3

    const/4 v15, 0x0

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v15}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    :goto_3
    goto/16 :goto_9

    :pswitch_2
    const/4 v3, 0x1

    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-eq v2, v5, :cond_f

    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    add-int v5, v2, v4

    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v5, v6, :cond_b

    const/4 v13, 0x0

    goto :goto_4

    :cond_b
    add-int/lit8 v5, v2, 0x1

    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v5, v6, :cond_c

    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-ge v5, v10, :cond_d

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int v11, v7, v8

    sub-int/2addr v11, v9

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13, v13}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iput v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_d
    if-le v8, v9, :cond_e

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v11, v8, v9

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v14, v13}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_9

    :cond_e
    const/4 v13, 0x0

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v13}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_9

    :cond_f
    const/4 v13, 0x0

    :goto_4
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v13}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    return-void

    :pswitch_3
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v2, v3, :cond_11

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-$$Nest$msemIsSupportGotoTop(Landroid/widget/AbsListView;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemCanGoFuther(Landroid/widget/AbsListView;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v3, :cond_10

    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mStoredFirstPosition:I

    if-ne v3, v2, :cond_10

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    :cond_10
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mStoredFirstPosition:I

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_11
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_12

    return-void

    :cond_12
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDivier(Landroid/widget/AbsListView;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDividerHeight(Landroid/widget/AbsListView;)I

    move-result v5

    goto :goto_5

    :cond_13
    move v5, v14

    :goto_5
    if-lez v2, :cond_14

    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iget v7, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_6

    :cond_14
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    :goto_6
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v8, v4, v6

    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v10, :cond_15

    const/4 v14, 0x1

    :cond_15
    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget v7, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v7, :cond_16

    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_16
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v7}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I

    move-result v8

    if-ne v7, v8, :cond_1c

    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v8

    invoke-static {v7, v8}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    goto/16 :goto_9

    :pswitch_4
    move v14, v4

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-int v4, v2, v3

    if-gez v3, :cond_17

    return-void

    :cond_17
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v4, v5, :cond_18

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_18
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v8, v1, v7

    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDivier(Landroid/widget/AbsListView;)Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDividerHeight(Landroid/widget/AbsListView;)I

    move-result v9

    goto :goto_7

    :cond_19
    move v9, v14

    :goto_7
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v4, v10, :cond_1a

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v9

    add-int/2addr v10, v11

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_8

    :cond_1a
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    :goto_8
    sub-int v11, v6, v8

    add-int/2addr v11, v10

    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v13, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v15, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v4, v15, :cond_1b

    const/4 v14, 0x1

    :cond_1b
    const/4 v15, 0x1

    invoke-virtual {v12, v11, v13, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iput v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v4, v12, :cond_1c

    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v12, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1c
    :goto_9
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

.method public greylist-max-o start(I)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v2, v1, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCount()I

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

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_2
    if-le v4, v2, :cond_4

    sub-int v7, v4, v2

    add-int/2addr v7, v3

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    if-lez v7, :cond_3

    div-int/2addr v5, v7

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1

    :cond_3
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    :goto_1
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result v3

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I

    move-result v7

    if-ne v3, v7, :cond_5

    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v7

    invoke-static {v3, v7}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    :cond_5
    invoke-direct {p0, v4, v6, v5}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public greylist-max-o start(II)V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v3, v2, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

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

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_4
    move v9, v8

    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

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

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_7
    move v10, v8

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move v9, v10

    :goto_1
    nop

    :goto_2
    if-lez v9, :cond_8

    div-int/2addr v6, v9

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_3

    :cond_8
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    :goto_3
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    invoke-direct {p0, v5, p2, v6}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public greylist-max-o startWithOffset(II)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public greylist-max-o startWithOffset(III)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    move v0, p2

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v2, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v2, p0, p1, v0, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v2, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v5, v4, v0

    sub-int/2addr v5, v2

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v6, v4, :cond_2

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v2, v4, v2

    goto :goto_0

    :cond_2
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v6, v5, :cond_4

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v2, v5

    :goto_0
    int-to-float v3, v2

    int-to-float v6, v0

    div-float/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    move v6, p3

    goto :goto_1

    :cond_3
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    :goto_1
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v7, v1, p2

    invoke-virtual {v6, v7, p3, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void
.end method

.method public greylist-max-o stop()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
