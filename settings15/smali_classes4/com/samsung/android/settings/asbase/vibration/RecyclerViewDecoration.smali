.class public final Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field public mInsetLeft:I

.field public mInsetRight:I

.field public mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field public mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getItemViewType(I)I

    move-result p2

    sget-object p3, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->MIDDLE_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    invoke-virtual {p3}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->getValue()I

    move-result p3

    if-eq p2, p3, :cond_0

    sget-object p3, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->TOP_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    invoke-virtual {p3}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->getValue()I

    move-result p3

    if-eq p2, p3, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mDividerHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mInsetLeft:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mInsetRight:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_3

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    iget v5, p0, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mDividerHeight:I

    add-int/2addr v5, v6

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    instance-of v7, v4, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    if-eqz v7, :cond_1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v7, 0x7f0a0f3c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v6, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v5, p0, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    iget v3, v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->roundMode:I

    invoke-virtual {v5, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    :goto_1
    invoke-virtual {v5, v2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal$1(Landroid/graphics/Canvas;)V

    return-void
.end method
