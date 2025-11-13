.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;
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
.field final synthetic $contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field final synthetic $contentOffset:J

.field final synthetic $gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;",
            "J",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Lcom/android/systemui/communal/ui/compose/ContentListState;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-wide p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$contentOffset:J

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v7, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-wide v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$contentOffset:J

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-virtual {v1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2$1;

    iget-wide v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$contentOffset:J

    iget-object v6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2$1;-><init>(JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/ui/compose/ContentListState;)V

    iput v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v2, v1, p0, v3}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt;->observeTaps$default(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
