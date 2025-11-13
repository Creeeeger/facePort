.class final Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;
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
.field final synthetic $gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $state:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/compose/GridDragDropState;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->$state:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->$state:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->$state:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object p1, p1, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->scrollChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    iput v3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->label:I

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput v2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;->label:I

    invoke-static {v1, p1, p0}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->scrollBy(Landroidx/compose/foundation/gestures/ScrollableState;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0
.end method
