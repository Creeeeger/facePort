.class public final Landroidx/picker/adapter/HeaderFooterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public final footerViewInfoList:Ljava/util/List;

.field public final headerViewInfoList:Ljava/util/List;

.field public final observer:Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;

.field public final wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/picker/adapter/HeaderFooterAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/picker/adapter/HeaderFooterAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->footerViewInfoList:Ljava/util/List;

    new-instance v0, Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;

    invoke-direct {v0, p0}, Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;-><init>(Landroidx/picker/adapter/HeaderFooterAdapter;)V

    iput-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->observer:Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;

    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/widget/Filter;
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p0}, Landroidx/picker/adapter/AbsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p0

    return-object p0
.end method

.method public final getFootersCount()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->footerViewInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getHeadersCount()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemCount()I
    .locals 2

    iget-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {v0}, Landroidx/picker/adapter/AbsAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getFootersCount()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p0, p1}, Landroidx/picker/adapter/AbsAdapter;->getItemId(I)J

    move-result-wide p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getFootersCount()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->footerViewInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/HeaderFooterViewData;

    iget-object p0, p0, Landroidx/picker/model/viewdata/HeaderFooterViewData;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hashCode()I

    move-result p0

    :goto_0
    int-to-long p0, p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/HeaderFooterViewData;

    iget-object p0, p0, Landroidx/picker/model/viewdata/HeaderFooterViewData;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hashCode()I

    move-result p0

    goto :goto_0

    :goto_1
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 3

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getFootersCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    const/16 p0, 0x3e9

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->observer:Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p1, p0}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Landroidx/picker/adapter/viewholder/PickerViewHolder;

    invoke-virtual {p0, p2}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/adapter/AbsAdapter;->onBindViewHolder(Landroidx/picker/adapter/viewholder/PickerViewHolder;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getFootersCount()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->footerViewInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/HeaderFooterViewData;

    iget-object p0, p0, Landroidx/picker/model/viewdata/HeaderFooterViewData;->view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/HeaderFooterViewData;

    iget-object p0, p0, Landroidx/picker/model/viewdata/HeaderFooterViewData;->view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2

    check-cast p1, Landroidx/picker/adapter/viewholder/PickerViewHolder;

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroidx/picker/adapter/AbsAdapter;->onBindViewHolder(Landroidx/picker/adapter/viewholder/PickerViewHolder;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/picker/adapter/AbsAdapter;->onBindViewHolder(Landroidx/picker/adapter/viewholder/PickerViewHolder;I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/picker/adapter/HeaderFooterAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_1
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 v0, 0x3e8

    const v1, 0x7f0d02aa

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/picker/adapter/viewholder/PickerViewHolder;

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/picker/adapter/viewholder/FrameViewHolder;

    invoke-static {p2, v1, p2, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/FrameViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/picker/adapter/viewholder/FrameViewHolder;

    invoke-static {p2, v1, p2, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/FrameViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p0
.end method

.method public final onDetachedFromRecyclerView()V
    .locals 1

    iget-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->observer:Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p0}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
