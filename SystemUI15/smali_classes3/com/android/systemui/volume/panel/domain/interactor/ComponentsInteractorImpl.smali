.class public final Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractor;


# instance fields
.field public final components:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final criteriaByKey:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljavax/inject/Provider;Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl;->criteriaByKey:Ljava/util/Map;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl;->criteriaByKey:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    if-nez v1, :cond_0

    move-object v1, p2

    :cond_0
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/panel/domain/ComponentAvailabilityCriteria;

    invoke-interface {v1}, Lcom/android/systemui/volume/panel/domain/ComponentAvailabilityCriteria;->isAvailable()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl$components$lambda$1$$inlined$map$1;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl$components$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl$special$$inlined$combine$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 p4, 0x1

    invoke-static {p2, p3, p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl;->components:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    return-void
.end method
