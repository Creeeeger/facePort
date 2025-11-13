.class public final Lcom/android/systemui/volume/VolumePanelSlicesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public mOnSliceActionListener:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

.field public final mSliceLiveData:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Landroidx/lifecycle/LiveData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/systemui/volume/VolumePanelSlicesAdapter;

    iget-object p2, p2, Lcom/android/systemui/volume/VolumePanelSlicesAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;->mSliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0, p2, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/Slice;

    if-eqz p0, :cond_2

    iget-object p2, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, "error"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/slice/SliceItem;

    iget-object p2, p2, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string/jumbo v0, "slice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p1, 0x7f0d0558

    const/4 v0, 0x0

    invoke-static {p2, p1, p2, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;-><init>(Lcom/android/systemui/volume/VolumePanelSlicesAdapter;Landroid/view/View;)V

    return-object p2
.end method
