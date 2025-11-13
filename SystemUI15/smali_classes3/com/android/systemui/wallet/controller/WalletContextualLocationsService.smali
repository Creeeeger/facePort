.class public final Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;
.super Landroidx/lifecycle/LifecycleService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final binder:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;

.field public final controller:Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public listener:Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->controller:Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;

    iput-object p3, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleService;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;-><init>(Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;)V

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->binder:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;Lcom/android/systemui/flags/FeatureFlags;)V

    iput-object p4, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final addWalletCardsUpdatedListenerInternal(Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->ENABLE_WALLET_CONTEXTUAL_LOYALTY_CARDS:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->listener:Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener;

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->controller:Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;->allWalletCards:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Number of cards registered "

    const-string v2, "WalletContextualLocationsService"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener$Stub$Proxy;

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener$Stub$Proxy;->registerNewWalletCards(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    invoke-super {p0, p1}, Landroidx/lifecycle/LifecycleService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$onBind$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$onBind$1;-><init>(Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->binder:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->listener:Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener;

    return-void
.end method

.method public final onWalletContextualLocationsStateUpdatedInternal(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->ENABLE_WALLET_CONTEXTUAL_LOYALTY_CARDS:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entered store "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WalletContextualLocationsService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->controller:Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;->_suggestionCardIds:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void
.end method
