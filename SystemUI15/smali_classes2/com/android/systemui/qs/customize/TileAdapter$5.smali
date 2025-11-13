.class public final Lcom/android/systemui/qs/customize/TileAdapter$5;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final canDropOver(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge p1, v1, :cond_3

    if-ge p2, v1, :cond_2

    move v0, v3

    :cond_2
    return v0

    :cond_3
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/2addr p0, v3

    if-gt p2, p0, :cond_4

    move v0, v3

    :cond_4
    :goto_1
    return v0
.end method

.method public final clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->stopDrag()V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    iget p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/16 p0, 0xf

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public final isItemViewSwipeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isLongPressDragEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IIZ)V

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    move-object p1, v1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v0, p2, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p2, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v3, p2, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    iget-object v3, v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizeTileView;

    iget v4, p2, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v5, 0x0

    if-le v0, v4, :cond_3

    iget-boolean v0, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    iput-boolean v0, v3, Lcom/android/systemui/qs/customize/CustomizeTileView;->showAppLabel:Z

    iget-object v0, v3, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move-object v2, v0

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v3, v3, Lcom/android/systemui/qs/customize/CustomizeTileView;->showAppLabel:Z

    if-eqz v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->stopDrag()V

    iput-object v1, p2, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    :cond_7
    if-eqz p1, :cond_8

    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    iput-object p1, p2, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_8
    iget-object p1, p2, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$5$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/TileAdapter$5$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method
