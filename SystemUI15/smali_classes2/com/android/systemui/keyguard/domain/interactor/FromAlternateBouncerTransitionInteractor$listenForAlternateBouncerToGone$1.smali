.class final Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;
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
.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;

    iget-object v1, p1, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardGoingAway:Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1$invokeSuspend$$inlined$filter$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1$invokeSuspend$$inlined$map$1;

    invoke-direct {v1, v3}, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;

    iget-object v4, v3, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v4, v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

    new-instance v5, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1$invokeSuspend$$inlined$flatMapLatest$1;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3}, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1$invokeSuspend$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;)V

    invoke-static {v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v3

    filled-new-array {v1, v3}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$filterRelevantKeyguardState$$inlined$filter$1;

    invoke-direct {v3, v1, p1}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$filterRelevantKeyguardState$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;)V

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1$4;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;

    invoke-direct {p1, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1$4;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;)V

    iput v2, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1;->label:I

    invoke-virtual {v3, p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$filterRelevantKeyguardState$$inlined$filter$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
