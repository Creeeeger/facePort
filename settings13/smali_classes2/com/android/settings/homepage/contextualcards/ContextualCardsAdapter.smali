.class public Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContextualCardsAdapter.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;
.implements Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$SecRecyclerViewDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;",
        "Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mContextualCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation
.end field

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

.field private final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    .line 71
    invoke-virtual {p3}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->getControllerRendererPool()Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    .line 72
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getViewType()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 135
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$SecRecyclerViewDecoration;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$SecRecyclerViewDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 98
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 99
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getViewType()I

    move-result v2

    .line 98
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getRendererByViewType(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    move-result-object p0

    .line 100
    invoke-interface {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method

.method public onContextualCardUpdated(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 162
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz p1, :cond_0

    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-nez p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 166
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 168
    :cond_2
    new-instance v2, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v2

    .line 172
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

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "card getCategory : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
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

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "new card getCategory : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    :cond_4
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 185
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 189
    :goto_2
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    :cond_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1, p0, p2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getRendererByViewType(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    move-result-object p0

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    invoke-interface {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;->createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onSwiped(I)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIsPendingDismiss(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
