.class public final Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field final mContextualCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation
.end field

.field public final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

.field public final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    iget-object p1, p3, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    return p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$SecRecyclerViewDecoration;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$SecRecyclerViewDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    iget v1, p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v2, v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getRendererByViewType(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method

.method public final onContextualCardUpdated(Ljava/util/Map;)V
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    :cond_2
    new-instance v2, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " name : "

    const-string v6, " , type : "

    const-string v7, "ContextualCardsAdapter"

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "card getCategory : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-static {v8, v4, v7}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "new card getCategory : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-static {v8, v4, v7}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    :goto_2
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    :cond_5
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getRendererByViewType(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;->createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final onSwiped(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIsPendingDismiss:Z

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
