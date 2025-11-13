.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

.field public final synthetic f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field public final synthetic f$2:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda4;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda4;->f$2:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda4;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda4;->f$2:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v2

    iget-object v3, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->resetCardView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
