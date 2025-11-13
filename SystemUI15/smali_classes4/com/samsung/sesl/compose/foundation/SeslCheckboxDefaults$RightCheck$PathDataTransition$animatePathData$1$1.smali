.class final Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;
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
.field final synthetic $fraction:F

.field final synthetic $pathNodes:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;FLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "F",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;->$pathNodes:Landroidx/compose/runtime/MutableState;

    iput p2, p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;->$fraction:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;->$pathNodes:Landroidx/compose/runtime/MutableState;

    iget p0, p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;->$fraction:F

    invoke-direct {p1, v0, p0, p2}, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;-><init>(Landroidx/compose/runtime/MutableState;FLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;->$pathNodes:Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition;->pathStartNodes$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition;->pathEndNodes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;->$fraction:F

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-static {v3, v2, p0}, Lcom/samsung/sesl/compose/utils/ext/PathNodeExtKt;->transition(Landroidx/compose/ui/graphics/vector/PathNode;Landroidx/compose/ui/graphics/vector/PathNode;F)Landroidx/compose/ui/graphics/vector/PathNode;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
