.class public final Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;
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
.field final synthetic $spanName:Ljava/lang/String;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->$spanName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->$spanName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    invoke-direct {v0, v1, p2, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->label:I

    const/4 v3, 0x1

    const-string v4, "Coroutines"

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget v1, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->I$0:I

    iget-boolean v2, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->Z$0:Z

    iget-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/app/tracing/coroutines/TraceData;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->$spanName:Ljava/lang/String;

    sget-object v5, Lcom/android/app/tracing/coroutines/TraceContextElementKt;->traceThreadLocal:Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/app/tracing/coroutines/TraceData;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v6

    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "<none>"

    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {v5, v2}, Lcom/android/app/tracing/coroutines/TraceData;->beginSpan(Ljava/lang/String;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v7

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-eqz v6, :cond_6

    invoke-static {v7, v4, v2}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    :try_start_1
    sget-object v8, Lcom/android/systemui/util/kotlin/Utils;->Companion:Lcom/android/systemui/util/kotlin/Utils$Companion;

    iget-object v9, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    iget-object v10, v9, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v10, v10, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v11, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$1;->INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$1;

    new-instance v12, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$filterRelevantKeyguardStateAnd$$inlined$filter$1;

    invoke-direct {v12, v10, v9, v11}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$filterRelevantKeyguardStateAnd$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;Lkotlin/jvm/functions/Function1;)V

    const-wide/16 v9, 0x32

    invoke-static {v12, v9, v10}, Lkotlinx/coroutines/flow/FlowKt;->debounce(Lkotlinx/coroutines/flow/Flow;J)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    iget-object v11, v10, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->startedKeyguardTransitionStep:Lkotlinx/coroutines/flow/Flow;

    iget-object v12, v10, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v13, v12, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->biometricUnlockState:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v14, v12, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->primaryBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v15, v12, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

    iget-object v12, v10, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;->canDismissLockscreen:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-object v10, v11

    move-object v11, v13

    move-object/from16 v16, v12

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    invoke-virtual/range {v8 .. v14}, Lcom/android/systemui/util/kotlin/Utils$Companion;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;

    iget-object v10, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    invoke-direct {v9, v10}, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;)V

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->L$1:Ljava/lang/Object;

    iput-boolean v6, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->Z$0:Z

    iput v7, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->I$0:I

    iput v3, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$$inlined$launch$default$1;->label:I

    invoke-interface {v8, v9, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    move-object v3, v5

    move v2, v6

    move v1, v7

    :goto_2
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_8

    invoke-static {v1, v4}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    move-object v3, v5

    move v2, v6

    move v1, v7

    :goto_3
    if-eqz v2, :cond_a

    invoke-static {v1, v4}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_b
    throw v0
.end method
