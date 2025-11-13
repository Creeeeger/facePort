.class public final Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final destinationScenesBySceneKey:Ljava/util/Map;

.field public final falsingInteractor:Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/scene/domain/interactor/SceneInteractor;",
            "Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/scene/ui/composable/ComposableScene;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    iget-object p2, p1, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->repository:Lcom/android/systemui/scene/data/repository/SceneContainerRepository;

    iget-object p2, p2, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->config:Lcom/android/systemui/scene/shared/model/SceneContainerConfig;

    iget-object p2, p2, Lcom/android/systemui/scene/shared/model/SceneContainerConfig;->sceneKeys:Ljava/util/List;

    iget-object p2, p1, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p4, Ljava/lang/Iterable;

    const/16 p1, 0xa

    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_0

    move p1, p2

    :cond_0
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/scene/ui/composable/ComposableScene;

    invoke-interface {p3}, Lcom/android/systemui/scene/ui/composable/ComposableScene;->getKey()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object p4

    invoke-interface {p3}, Lcom/android/systemui/scene/ui/composable/ComposableScene;->getDestinationScenes()Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;-><init>(Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, v0}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p4, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
