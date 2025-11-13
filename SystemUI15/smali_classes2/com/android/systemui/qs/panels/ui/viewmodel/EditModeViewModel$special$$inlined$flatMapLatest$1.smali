.class public final Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;)V

    iput-object p1, v0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;

    iget-object v3, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;

    iget-object v1, v1, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->editTilesListInteractor:Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;

    iput-object p1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;->getTilesToEdit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    :goto_0
    check-cast p1, Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;

    iget-object v4, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;

    iget-object v4, v4, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->tilesAvailabilityInteractor:Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;

    iget-object v5, p1, Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;->stockTiles:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/panels/shared/model/EditTileData;

    iget-object v7, v7, Lcom/android/systemui/qs/panels/shared/model/EditTileData;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;

    iget-object v5, v5, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->currentTilesInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;

    iget-object v8, v8, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    iput-object v1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-virtual {v4, v5, p0}, Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;->getUnavailableTiles(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_7

    return-object v0

    :cond_7
    move-object v9, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v9

    :goto_3
    check-cast p1, Ljava/util/Set;

    iget-object v4, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;

    iget-object v5, v4, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->currentTilesInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;

    check-cast v5, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1;

    invoke-direct {v6, v5, v4, v1, p1}, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;Ljava/util/Set;)V

    move-object p1, v3

    goto :goto_4

    :cond_8
    sget-object v6, Lkotlinx/coroutines/flow/EmptyFlow;->INSTANCE:Lkotlinx/coroutines/flow/EmptyFlow;

    :goto_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v6, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    return-object v0

    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
