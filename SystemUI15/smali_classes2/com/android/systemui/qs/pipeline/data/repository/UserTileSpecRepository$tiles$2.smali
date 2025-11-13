.class final Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;
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
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;->label:I

    if-nez v0, :cond_a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->Companion:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Companion;

    iget-object v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->currentAutoAdded:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->restoreData:Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    iget-object v3, v1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredTiles:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    iget-object v7, v1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredAutoAddedTiles:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredTiles:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Companion$reconcileTiles$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$Companion$reconcileTiles$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_6

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v3, v2, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    move v2, v5

    goto :goto_3

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$tiles$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    instance-of v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    iget p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->userId:I

    invoke-virtual {v0, p1, v4, p0}, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->logTilesRestoredAndReconciled(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    iget p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->userId:I

    invoke-virtual {p1, v0, v4, p0}, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->logProcessTileChange(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;Ljava/util/List;I)V

    :cond_9
    :goto_5
    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
