.class public final Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final qsFactoryImpl:Lcom/android/systemui/plugins/qs/QSFactory;

.field public final qsPipelineFlagsRepository:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panels/domain/interactor/NewTilesAvailabilityInteractor;Lcom/android/systemui/plugins/qs/QSFactory;Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;->qsFactoryImpl:Lcom/android/systemui/plugins/qs/QSFactory;

    iput-object p3, p0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;->qsPipelineFlagsRepository:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;

    return-void
.end method


# virtual methods
.method public final getUnavailableTiles(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;

    iget v1, v0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;-><init>(Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;->label:I

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    if-ne v1, p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, v0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor$getUnavailableTiles$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Map;

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    instance-of v0, v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$PlatformTileSpec;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;->qsPipelineFlagsRepository:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->qsNewTiles()V

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    iget-object v3, p0, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;->qsFactoryImpl:Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {v2}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v3

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    :cond_8
    if-nez v3, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
