.class Landroid/widget/SemExpandableListView$1;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/widget/SemExpandableListConnector$ItemDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final blacklist WRAPPING_VIEW_ID:I = 0x7ffffc17


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V
    .locals 6

    iget-object v0, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmExpListDividerHeight(Landroid/widget/SemExpandableListView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eqz p2, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v4, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v4, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual {v4}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v5, v2, 0x2

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_3
    return-void
.end method

.method private blacklist initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorGravity(Landroid/widget/SemExpandableListView;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorPaddingLeft(Landroid/widget/SemExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorPaddingRight(Landroid/widget/SemExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    return-void
.end method


# virtual methods
.method public blacklist onItemDecorate(Landroid/view/View;Landroid/view/View;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    iget-object v5, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SemExpandableListConnector;->getCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    iget-object v5, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmExpListDividerHeight(Landroid/widget/SemExpandableListView;)[I

    move-result-object v5

    aget v5, v5, v7

    const v8, 0x7ffffc17

    const v9, 0x7a0a1eff

    const/4 v10, -0x2

    if-eqz v1, :cond_8

    instance-of v11, v1, Landroid/view/ViewGroup;

    if-eqz v11, :cond_8

    move-object v11, v1

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-ne v11, v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v8, :cond_7

    instance-of v6, v1, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_7

    invoke-virtual {v1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    iget-object v8, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8, v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetIndicator(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v6, :cond_6

    iget-object v9, v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-eqz v9, :cond_3

    iget-object v9, v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    iget-object v10, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-virtual {v9, v10}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    iget-object v9, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmChildIndicator(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_1

    iget-object v9, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGroupIndicator(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_1

    iget-object v7, v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v9, v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual {v9, v7}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setVisibility(I)V

    :goto_1
    iget-object v7, v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual {v7}, Landroid/widget/SemExpandableListView$IndicatorImageView;->refreshDrawableState()V

    iget-object v7, v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmDescriptionCollapse(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    iget-object v9, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmDescriptionExpand(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual {v7}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_4

    :cond_3
    if-eqz v8, :cond_5

    const/4 v7, 0x0

    new-instance v9, Landroid/widget/SemExpandableListView$IndicatorImageView;

    iget-object v11, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v12, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->access$000(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Landroid/widget/SemExpandableListView$IndicatorImageView;-><init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V

    move-object v7, v9

    iget-object v9, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7}, Landroid/widget/SemExpandableListView$IndicatorImageView;->refreshDrawableState()V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v9}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v7, v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    iget-object v10, v6, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmDescriptionCollapse(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_4
    iget-object v11, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmDescriptionExpand(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-virtual {v10, v11}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_5
    :goto_4
    nop

    :goto_5
    invoke-direct {v0, v6, v4}, Landroid/widget/SemExpandableListView$1;->adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V

    :cond_6
    return-object v1

    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "convertView is neither null nor the wrapping FrameLayout"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    new-instance v11, Landroid/widget/FrameLayout;

    iget-object v12, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->access$100(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;-><init>(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder-IA;)V

    invoke-virtual {v11, v9, v12}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v2, v12, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v13

    iget-object v14, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v14}, Landroid/widget/SemExpandableListView;->access$200(Landroid/widget/SemExpandableListView;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-ltz v13, :cond_14

    if-le v9, v14, :cond_9

    goto/16 :goto_e

    :cond_9
    iget-object v7, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v7}, Landroid/widget/SemExpandableListView;->isLayoutRtl()Z

    move-result v7

    iget-object v10, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v10}, Landroid/widget/SemExpandableListView;->getWidth()I

    move-result v10

    iget-object v6, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v6, v6, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v6, v1, :cond_c

    iget-object v1, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmChildIndicatorLeft(Landroid/widget/SemExpandableListView;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_a

    iget-object v1, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorLeft(Landroid/widget/SemExpandableListView;)I

    move-result v1

    goto :goto_6

    :cond_a
    iget-object v1, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmChildIndicatorLeft(Landroid/widget/SemExpandableListView;)I

    move-result v1

    :goto_6
    iget-object v6, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmChildIndicatorRight(Landroid/widget/SemExpandableListView;)I

    move-result v6

    const/4 v15, -0x1

    if-ne v6, v15, :cond_b

    iget-object v6, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorRight(Landroid/widget/SemExpandableListView;)I

    move-result v6

    goto :goto_7

    :cond_b
    iget-object v6, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmChildIndicatorRight(Landroid/widget/SemExpandableListView;)I

    move-result v6

    :goto_7
    goto :goto_8

    :cond_c
    iget-object v1, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorLeft(Landroid/widget/SemExpandableListView;)I

    move-result v1

    iget-object v6, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorRight(Landroid/widget/SemExpandableListView;)I

    move-result v6

    :goto_8
    if-eqz v7, :cond_d

    move v15, v1

    sub-int v1, v10, v6

    sub-int v6, v10, v15

    iget-object v2, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->access$300(Landroid/widget/SemExpandableListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->access$400(Landroid/widget/SemExpandableListView;)I

    move-result v2

    sub-int/2addr v6, v2

    goto :goto_9

    :cond_d
    iget-object v2, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->access$500(Landroid/widget/SemExpandableListView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->access$600(Landroid/widget/SemExpandableListView;)I

    move-result v2

    add-int/2addr v6, v2

    :goto_9
    if-eq v1, v6, :cond_12

    iget-object v2, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetIndicator(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v15, Landroid/widget/SemExpandableListView$IndicatorImageView;

    move/from16 v16, v1

    iget-object v1, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move/from16 v18, v6

    iget-object v6, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->access$700(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v15, v1, v6}, Landroid/widget/SemExpandableListView$IndicatorImageView;-><init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V

    move-object v8, v15

    iget-object v1, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-virtual {v8, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8}, Landroid/widget/SemExpandableListView$IndicatorImageView;->refreshDrawableState()V

    iget-object v1, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorAnimationType(Landroid/widget/SemExpandableListView;)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_e

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v17, v2

    goto :goto_b

    :cond_e
    iget-object v1, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    iget v1, v1, Landroid/widget/SemExpandableListView;->mIndicatorPaddingHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    const-string/jumbo v2, "onItemDecorate : mGroupIndicatorWidth = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v15, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v15}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGroupIndicatorWidth(Landroid/widget/SemExpandableListView;)I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", mGroupIndicatorHeight = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v15, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v15}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGroupIndicatorHeight(Landroid/widget/SemExpandableListView;)I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onItemDecorate : paddingHeight = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_f
    move-object/from16 v17, v2

    :goto_a
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGroupIndicatorWidth(Landroid/widget/SemExpandableListView;)I

    move-result v6

    iget-object v15, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v15}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGroupIndicatorHeight(Landroid/widget/SemExpandableListView;)I

    move-result v15

    add-int/2addr v15, v1

    invoke-direct {v2, v6, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    :goto_b
    invoke-direct {v0, v1}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v8, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v8, v12, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    iget-object v2, v12, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmDescriptionCollapse(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_10
    iget-object v6, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmDescriptionExpand(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v6

    :goto_c
    invoke-virtual {v2, v6}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_11
    move/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v6

    goto :goto_d

    :cond_12
    move/from16 v16, v1

    move/from16 v18, v6

    :goto_d
    if-lez v5, :cond_13

    new-instance v1, Landroid/view/View;

    iget-object v2, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->access$800(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v2, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x50

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6, v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetDivider(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v1, v12, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    invoke-direct {v0, v12, v4}, Landroid/widget/SemExpandableListView$1;->adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V

    :cond_13
    return-object v11

    :cond_14
    :goto_e
    return-object v11
.end method

.method public blacklist unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7ffffc17

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p1
.end method
