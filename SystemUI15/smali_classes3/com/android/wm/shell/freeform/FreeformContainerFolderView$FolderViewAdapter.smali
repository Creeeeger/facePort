.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Landroid/view/LayoutInflater;

    const v1, 0x7f0d010f

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0111

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;)V

    return-object p1
.end method

.method public final onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    return-void

    :cond_0
    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;

    iget-object v8, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v8, v8, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v8, v8, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object v8, v8, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iput-object v5, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v8, :cond_5

    instance-of v8, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    if-eqz v8, :cond_5

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    invoke-virtual {v5}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemCount()I

    move-result v9

    sub-int/2addr v9, v4

    :goto_0
    if-ltz v9, :cond_1

    iget-object v10, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v10, v10, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v11, 0x7f0d010f

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0a0478

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, v8, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v11, v11, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v11, v8, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/2addr v9, v6

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v9, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemCount()I

    move-result v5

    add-int/lit8 v10, v5, -0x1

    move v11, v3

    :goto_1
    if-ltz v10, :cond_4

    move-object v12, v9

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-gt v5, v4, :cond_3

    :cond_2
    move/from16 v19, v3

    move/from16 v18, v5

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v14, v5, -0x2

    add-int/lit8 v15, v5, -0x3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-lt v14, v10, :cond_2

    if-lt v10, v15, :cond_2

    add-int/2addr v11, v4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v15

    iget v6, v8, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPointerSettleDownGap:I

    mul-int/2addr v6, v11

    int-to-float v6, v6

    add-float/2addr v15, v6

    new-instance v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v8, v12, v3}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;I)V

    new-instance v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v8, v12, v4}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;I)V

    new-instance v13, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;

    invoke-direct {v13, v8, v12, v2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;I)V

    sget-object v12, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->TAIL_ICON_ALPHA_ARRAY:[F

    sub-int v17, v5, v10

    add-int/lit8 v17, v17, -0x1

    aget v12, v12, v17

    sget-object v18, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->TAIL_ICON_SCALE_ARRAY:[F

    aget v17, v18, v17

    move/from16 v18, v5

    new-array v5, v2, [F

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    aput v16, v5, v19

    aput v12, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v2, [F

    aput v16, v6, v19

    aput v17, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v2, [F

    aput v14, v3, v19

    aput v15, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    :goto_2
    const/4 v3, -0x1

    goto :goto_4

    :goto_3
    invoke-virtual {v12, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v12, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v12, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :goto_4
    add-int/2addr v10, v3

    move v6, v3

    move/from16 v5, v18

    move/from16 v3, v19

    goto/16 :goto_1

    :cond_4
    move/from16 v19, v3

    goto :goto_5

    :cond_5
    move/from16 v19, v3

    instance-of v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object v3, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTooltip(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_5
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-boolean v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpandAnimating:Z

    if-eqz v0, :cond_7

    const/4 v3, 0x4

    goto :goto_6

    :cond_7
    move/from16 v3, v19

    :goto_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
