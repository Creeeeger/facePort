.class public Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListener:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->mListener:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object v1

    instance-of v2, v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    if-eqz p1, :cond_1

    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/events/OnStart;->onStart()V

    :cond_1
    if-nez p1, :cond_0

    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/events/OnStop;->onStop()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->mListener:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;

    return-void
.end method
