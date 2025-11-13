.class public final Lcom/android/settings/panel/PanelSlicesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final MAX_NUM_OF_SLICES:I = 0x9


# instance fields
.field public final mMetricsCategory:I

.field public final mPanelFragment:Lcom/android/settings/panel/PanelFragment;

.field public final mSliceLiveData:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/PanelFragment;Ljava/util/Map;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    iput p3, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mMetricsCategory:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/lifecycle/LiveData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelSlicesAdapter;->getItemCount()I

    move-result p0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v0, 0x9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getViewType()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

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
    iget-object p2, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iget-object v0, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p2, p0}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    iget-object p2, p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p2}, Landroidx/slice/widget/SliceView;->setShowActionDividers()V

    iget-object p2, p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    new-instance v0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/slice/Slice;)V

    iput-object v0, p2, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    invoke-virtual {p1}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->updateActionLabel()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->updateActionLabel()V

    iget-object p0, p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const p2, 0x7f0d04e1

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p2, 0x7f0d04e0

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;-><init>(Lcom/android/settings/panel/PanelSlicesAdapter;Landroid/view/View;)V

    return-object p2
.end method
