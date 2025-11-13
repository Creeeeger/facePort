.class public Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecyclerViewDecoration.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mInsetLeft:I

.field private mInsetRight:I

.field private mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field private mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IILandroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 29
    iput p2, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mInsetLeft:I

    .line 30
    iput p3, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mInsetRight:I

    .line 31
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mDividerHeight:I

    .line 32
    new-instance p1, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {p1, p4}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 33
    new-instance p1, Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 p2, 0x3

    .line 34
    invoke-virtual {p1, p2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 36
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    sget p1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    .line 38
    invoke-virtual {p4, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 36
    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 86
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 87
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    if-eqz p3, :cond_0

    .line 90
    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->getItemViewType(I)I

    move-result p2

    .line 91
    sget-object p3, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->MIDDLE_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    invoke-virtual {p3}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getValue()I

    move-result p3

    if-eq p2, p3, :cond_0

    sget-object p3, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->TOP_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    .line 92
    invoke-virtual {p3}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getValue()I

    move-result p3

    if-eq p2, p3, :cond_0

    return-void

    .line 96
    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mDividerHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 43
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    iget v0, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mInsetLeft:I

    add-int/2addr p3, v0

    .line 44
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mInsetRight:I

    sub-int/2addr v0, v1

    .line 45
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_3

    .line 47
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v4

    .line 52
    iget v4, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mDividerHeight:I

    add-int/2addr v4, v5

    .line 53
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 54
    instance-of v6, v3, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    if-eqz v6, :cond_1

    .line 55
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->subtitle_layout:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 61
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 67
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p3, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 102
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 104
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 105
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 106
    instance-of v4, v3, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    if-eqz v4, :cond_0

    .line 107
    check-cast v3, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    iget v3, v3, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->roundMode:I

    .line 108
    iget-object v4, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v4, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    goto :goto_1

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v3, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 112
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v3, v2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    return-void
.end method
