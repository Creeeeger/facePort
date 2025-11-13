.class public final Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $editTilesData$inlined:Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $unavailable$inlined:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;

    iput-object p3, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;->$editTilesData$inlined:Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;

    iput-object p4, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;->$unavailable$inlined:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2$1;

    iget v3, v2, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;

    iget-object v7, v7, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v7, v0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;

    iget-object v7, v7, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->minTilesInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/MinimumTilesInteractor;

    iget-object v7, v7, Lcom/android/systemui/qs/pipeline/domain/interactor/MinimumTilesInteractor;->minimumTilesRepository:Lcom/android/systemui/qs/pipeline/data/repository/MinimumTilesRepository;

    check-cast v7, Lcom/android/systemui/qs/pipeline/data/repository/MinimumTilesResourceRepository;

    iget v7, v7, Lcom/android/systemui/qs/pipeline/data/repository/MinimumTilesResourceRepository;->minNumberOfTiles:I

    if-le v1, v7, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v7, v0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;->$editTilesData$inlined:Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;

    iget-object v8, v7, Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;->stockTiles:Ljava/util/List;

    check-cast v8, Ljava/util/Collection;

    iget-object v7, v7, Lcom/android/systemui/qs/panels/domain/model/EditTilesModel;->customTiles:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v8}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v8

    const/16 v9, 0x10

    if-ge v8, v9, :cond_5

    move v8, v9

    :cond_5
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/panels/shared/model/EditTileData;

    iget-object v11, v10, Lcom/android/systemui/qs/panels/shared/model/EditTileData;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v12}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/panels/shared/model/EditTileData;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/qs/panels/shared/model/EditTileData;

    iget-object v11, v11, Lcom/android/systemui/qs/panels/shared/model/EditTileData;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v5

    if-eqz v11, :cond_8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/android/systemui/qs/panels/shared/model/EditTileData;

    iget-object v11, v0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;->$unavailable$inlined:Ljava/util/Set;

    iget-object v10, v10, Lcom/android/systemui/qs/panels/shared/model/EditTileData;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/panels/shared/model/EditTileData;

    iget-object v9, v8, Lcom/android/systemui/qs/panels/shared/model/EditTileData;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    new-instance v9, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v9}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    if-eqz v15, :cond_c

    sget-object v10, Lcom/android/systemui/qs/panels/ui/viewmodel/AvailableEditActions;->MOVE:Lcom/android/systemui/qs/panels/ui/viewmodel/AvailableEditActions;

    invoke-virtual {v9, v10}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_d

    sget-object v10, Lcom/android/systemui/qs/panels/ui/viewmodel/AvailableEditActions;->REMOVE:Lcom/android/systemui/qs/panels/ui/viewmodel/AvailableEditActions;

    invoke-virtual {v9, v10}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    sget-object v10, Lcom/android/systemui/qs/panels/ui/viewmodel/AvailableEditActions;->ADD:Lcom/android/systemui/qs/panels/ui/viewmodel/AvailableEditActions;

    invoke-virtual {v9, v10}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_8
    invoke-virtual {v9}, Lkotlin/collections/builders/SetBuilder;->build()Lkotlin/collections/builders/SetBuilder;

    move-result-object v16

    new-instance v9, Lcom/android/systemui/qs/panels/ui/viewmodel/EditTileViewModel;

    iget-object v13, v8, Lcom/android/systemui/qs/panels/shared/model/EditTileData;->label:Lcom/android/systemui/common/shared/model/Text;

    iget-object v14, v8, Lcom/android/systemui/qs/panels/shared/model/EditTileData;->appName:Lcom/android/systemui/common/shared/model/Text;

    iget-object v11, v8, Lcom/android/systemui/qs/panels/shared/model/EditTileData;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    iget-object v12, v8, Lcom/android/systemui/qs/panels/shared/model/EditTileData;->icon:Lcom/android/systemui/common/shared/model/Icon;

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/qs/panels/ui/viewmodel/EditTileViewModel;-><init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/common/shared/model/Text;ZLjava/util/Set;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    iput v5, v2, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$tiles$lambda$10$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v7, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_f

    return-object v3

    :cond_f
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
