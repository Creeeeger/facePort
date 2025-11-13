.class final Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;->this$0:Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;

    iget-object p0, p0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;->this$0:Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;-><init>(Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$destinationScenesBySceneKey$1$1;->this$0:Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/animation/scene/UserActionResult;

    iget-object v3, v1, Lcom/android/compose/animation/scene/UserActionResult;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v4, p0, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->resolveSceneFamily(Lcom/android/compose/animation/scene/SceneKey;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$replaceSceneFamilies$lambda$5$$inlined$map$1;

    invoke-direct {v4, v3, v1}, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModel$replaceSceneFamilies$lambda$5$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/compose/animation/scene/UserActionResult;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModelKt$combineValueFlows$lambda$1$$inlined$map$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModelKt$combineValueFlows$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModelKt$combineValueFlows$$inlined$combine$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/scene/ui/viewmodel/SceneContainerViewModelKt$combineValueFlows$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
