.class final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;
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

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->showLockscreenOnBoot:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1;

    iput v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentTransitionInfoInternal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    iget-object v1, v1, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v11, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OFF:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-eq v1, v11, :cond_5

    const-string p0, "KeyguardTransitionInteractor"

    const-string/jumbo p1, "showLockscreenOnBoot emitted, but we\'ve already transitioned to a state other than OFF. We\'ll respect that transition, but this should not happen."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    iput v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;->label:I

    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object p0, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->_currentTransitionInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v2, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const-string v4, "KeyguardTransitionRepository(boot)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v5, v11

    move-object v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;-><init>(Ljava/lang/String;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    sget-object v7, Lcom/android/systemui/keyguard/shared/model/TransitionState;->STARTED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    const-string v8, "KeyguardTransitionRepository(boot)"

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v11

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/keyguard/shared/model/TransitionStep;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;FLcom/android/systemui/keyguard/shared/model/TransitionState;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->emitTransition(Lcom/android/systemui/keyguard/shared/model/TransitionStep;Z)V

    new-instance p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    sget-object v7, Lcom/android/systemui/keyguard/shared/model/TransitionState;->FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    const-string v8, "KeyguardTransitionRepository(boot)"

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p0

    move-object v4, v11

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/keyguard/shared/model/TransitionStep;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;FLcom/android/systemui/keyguard/shared/model/TransitionState;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->emitTransition(Lcom/android/systemui/keyguard/shared/model/TransitionStep;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
