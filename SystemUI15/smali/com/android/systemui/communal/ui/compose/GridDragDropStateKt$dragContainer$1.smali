.class final Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;
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
.field final synthetic $contentOffset:J

.field final synthetic $dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;JLcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/compose/GridDragDropState;",
            "J",
            "Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iput-wide p2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$contentOffset:J

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v6, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-wide v2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$contentOffset:J

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;JLcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputScope;

    new-instance v4, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$1;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-wide v5, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$contentOffset:J

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-direct {v4, p1, v5, v6, v1}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$1;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;JLcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    new-instance v5, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$2;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-direct {v5, p1, v1}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$2;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    new-instance v6, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$3;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-direct {v6, p1, v1}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$3;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    new-instance v7, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$4;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    invoke-direct {v7, p1}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$4;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;)V

    iput v2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;->label:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGesturesAfterLongPress(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
