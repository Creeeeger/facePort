.class public Lcom/samsung/android/settings/share/app/SelectPageItemDragCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SelectPageItemDragCallback.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageItemDragCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 49
    instance-of v0, p3, Lcom/samsung/android/settings/share/app/ISwappable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lcom/samsung/android/settings/share/app/ISwappable;

    invoke-interface {v0}, Lcom/samsung/android/settings/share/app/ISwappable;->isSwappable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    instance-of v0, p2, Lcom/samsung/android/settings/share/app/ISwappable;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/settings/share/app/ISwappable;

    invoke-interface {v0}, Lcom/samsung/android/settings/share/app/ISwappable;->isSwappable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageItemDragCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    check-cast p2, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;

    .line 35
    invoke-virtual {p2}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->isPinnedItem()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 36
    invoke-static {p0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    const/16 p1, 0x33

    .line 39
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 62
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    const/4 p7, 0x2

    if-ne p6, p7, :cond_0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/share/app/SelectPageItemDragCallback;->mContext:Landroid/content/Context;

    sget p6, Lcom/android/settings/R$drawable;->sec_share_hint_circle:I

    invoke-virtual {p0, p6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 65
    instance-of p6, p3, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;

    if-eqz p6, :cond_0

    .line 66
    check-cast p3, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;

    .line 68
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    .line 69
    invoke-virtual {p2, p6}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 70
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 71
    iget-object p3, p3, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 72
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p7, p6, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p7

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 73
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget p7, p6, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p7

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 74
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p7, p6, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p7

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 75
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget p6, p6, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p6

    iput p3, p2, Landroid/graphics/Rect;->right:I

    neg-float p3, p4

    float-to-int p3, p3

    neg-float p4, p5

    float-to-int p4, p4

    .line 77
    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 78
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    .line 89
    instance-of p1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 90
    check-cast p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    .line 91
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->shiftItems(II)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
