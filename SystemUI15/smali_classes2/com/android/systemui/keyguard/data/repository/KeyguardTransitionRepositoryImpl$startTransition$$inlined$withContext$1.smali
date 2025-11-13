.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;
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
.field final synthetic $info$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

.field final synthetic $spanName:Ljava/lang/String;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;Lcom/android/systemui/keyguard/shared/model/TransitionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$spanName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$info$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$spanName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$info$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    invoke-direct {v0, v1, p2, v2, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;Lcom/android/systemui/keyguard/shared/model/TransitionInfo;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Transition still active: "

    const-string v5, "Duplicate call to start the transition, rejecting: "

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->label:I

    if-nez v6, :cond_10

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$spanName:Ljava/lang/String;

    sget-object v7, Lcom/android/app/tracing/coroutines/TraceContextElementKt;->traceThreadLocal:Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/app/tracing/coroutines/TraceData;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v8

    if-nez v7, :cond_1

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "<none>"

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v7, v6}, Lcom/android/app/tracing/coroutines/TraceData;->beginSpan(Ljava/lang/String;)V

    :cond_2
    if-eqz v8, :cond_3

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v9

    goto :goto_1

    :cond_3
    move v9, v3

    :goto_1
    const-string v10, "Coroutines"

    if-eqz v8, :cond_4

    invoke-static {v9, v10, v6}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :try_start_0
    iget-object v6, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v6, v6, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->_currentTransitionMutex:Lkotlinx/coroutines/sync/MutexImpl;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v6, v6, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->lastStep:Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object v12, v6, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object v13, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$info$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    iget-object v14, v13, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v15, "KeyguardTransitionRepository"

    if-ne v12, v14, :cond_5

    :try_start_1
    iget-object v12, v6, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object v14, v13, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v12, v14, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_5
    iget-object v5, v6, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    sget-object v12, Lcom/android/systemui/keyguard/shared/model/TransitionState;->FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    if-eq v5, v12, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", canceling"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$info$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    iget-object v4, v4, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->modeOnCanceled:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    sget-object v5, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v2, :cond_7

    if-eq v4, v1, :cond_8

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    iget-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v4, v4, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->lastStep:Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget v4, v4, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    sub-float v13, v14, v4

    goto :goto_2

    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_7
    iget-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v4, v4, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->lastStep:Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget v13, v4, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    :cond_8
    :goto_2
    iget-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v4, v4, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->lastAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iget-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v5, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$info$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    iget-object v5, v5, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->animator:Landroid/animation/ValueAnimator;

    iput-object v5, v4, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->lastAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, v4, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->updateTransitionId:Ljava/util/UUID;

    if-eqz v5, :cond_a

    iget-object v6, v4, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->lastStep:Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget v6, v6, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    sget-object v12, Lcom/android/systemui/keyguard/shared/model/TransitionState;->CANCELED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-virtual {v4, v5, v6, v12}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->updateTransition(Ljava/util/UUID;FLcom/android/systemui/keyguard/shared/model/TransitionState;)V

    :cond_a
    iget-object v4, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$info$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    iget-object v5, v4, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->animator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_b

    new-array v1, v1, [F

    aput v13, v1, v3

    aput v14, v1, v2

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    sub-float/2addr v14, v13

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v14, v1

    float-to-long v1, v14

    invoke-virtual {v5, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$updateListener$1;

    iget-object v2, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v3, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$info$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$updateListener$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;Lcom/android/systemui/keyguard/shared/model/TransitionInfo;)V

    new-instance v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;

    iget-object v3, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->$info$inlined:Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move/from16 v18, v13

    move-object/from16 v19, v5

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$2$2$adapter$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;Lcom/android/systemui/keyguard/shared/model/TransitionInfo;FLandroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_b
    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    new-instance v2, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    sget-object v5, Lcom/android/systemui/keyguard/shared/model/TransitionState;->STARTED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-direct {v2, v4, v13, v5}, Lcom/android/systemui/keyguard/shared/model/TransitionStep;-><init>(Lcom/android/systemui/keyguard/shared/model/TransitionInfo;FLcom/android/systemui/keyguard/shared/model/TransitionState;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->emitTransition(Lcom/android/systemui/keyguard/shared/model/TransitionStep;Z)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->updateTransitionId:Ljava/util/UUID;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl$startTransition$$inlined$withContext$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v11, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->updateTransitionId:Ljava/util/UUID;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v8, :cond_c

    invoke-static {v9, v10}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_d
    return-object v11

    :goto_4
    if-eqz v8, :cond_e

    invoke-static {v9, v10}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_f
    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
