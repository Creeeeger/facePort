.class public final Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

.field final mFlippedCardSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mFullCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

.field public final mHalfCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

.field public final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field final mSliceLiveDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Landroidx/lifecycle/LiveData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFullCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mHalfCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    return-void
.end method

.method public static resetCardView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0542

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    const v1, 0x7f0d01e9

    if-ne v0, v1, :cond_0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->content:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 5

    iget-object v0, p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid uri, skipping slice: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SliceCardRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    const v2, 0x7f0d01e9

    if-eq v1, v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object v1, v1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    iget-object v3, p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSlice:Landroidx/slice/Slice;

    invoke-virtual {v1, v3}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroid/net/Uri;)V

    sget-object v4, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Landroidx/collection/ArraySet;

    new-instance v4, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1, v0, v3}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0541

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    if-eqz v0, :cond_3

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    new-instance v4, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V

    invoke-virtual {v1, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    const v1, 0x7f0d01ea

    if-eq v0, v1, :cond_6

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0838

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0c82

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    if-ne v0, v2, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->content:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    :goto_0
    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$1;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    iget-boolean p2, p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    if-eqz p2, :cond_6

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0542

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    if-ne p2, v2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    iget-object p2, p2, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->content:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_5
    move-object p2, p1

    check-cast p2, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object p2, p2, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    :goto_1
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const v0, 0x7f0d01e9

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mHalfCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFullCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method
