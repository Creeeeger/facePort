.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;
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
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    iget-object v4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/util/kotlin/WithPrev;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/WithPrev;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/WithPrev;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    iget-object v5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {v5, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v8

    :goto_0
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object v5, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1;

    invoke-direct {v6, v5, p1, v3, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/shared/model/TransitionStep;Lcom/android/systemui/common/shared/model/NotificationContainerBounds;Lcom/android/systemui/common/shared/model/NotificationContainerBounds;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$1$2;

    invoke-direct {p1, v1, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$_nonSplitShadeNotifciationPlaceholderBounds$1$2;-><init>(Lcom/android/systemui/common/shared/model/NotificationContainerBounds;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v6, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    :goto_1
    iput-object v7, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v6, v4}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
