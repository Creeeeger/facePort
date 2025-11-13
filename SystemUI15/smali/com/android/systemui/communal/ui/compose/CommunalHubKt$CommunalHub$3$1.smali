.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;
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
.field final synthetic $communalContent$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $contentOffset:J

.field final synthetic $gridCoordinates$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/MutableState;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;",
            "Landroidx/compose/runtime/MutableState;",
            "J",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/runtime/State;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$gridCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    iput-wide p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$contentOffset:J

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$communalContent$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v8, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$gridCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    iget-wide v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$contentOffset:J

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$communalContent$delegate:Landroidx/compose/runtime/State;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/MutableState;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1$1;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$gridCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    iget-wide v6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$contentOffset:J

    iget-object v8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v9, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->$communalContent$delegate:Landroidx/compose/runtime/State;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/MutableState;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/State;)V

    iput v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt;->detectLongPressGesture$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
