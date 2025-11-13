.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;
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
.field final synthetic $communalContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/communal/domain/model/CommunalContentModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $liveContentKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/communal/domain/model/CommunalContentModel;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$liveContentKeys:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$communalContent:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$liveContentKeys:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$communalContent:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;-><init>(Ljava/util/List;Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$liveContentKeys:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$liveContentKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$liveContentKeys:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$communalContent:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;

    if-nez v5, :cond_1

    instance-of v4, v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-interface {v3}, Lcom/android/systemui/communal/domain/model/CommunalContentModel;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$liveContentKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    :goto_3
    if-ltz v1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1$3;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1$3;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
