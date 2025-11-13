.class final Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;
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
.field final synthetic $expansion:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow;"
        }
    .end annotation
.end field

.field final synthetic $tracking:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->$tracking:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->$expansion:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;

    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->$tracking:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->$expansion:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->$tracking:Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1$1;

    invoke-direct {v3, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->$tracking:Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1$2;

    invoke-direct {v3, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->$expansion:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1$3;

    invoke-direct {v3, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
