.class public abstract Lkotlinx/coroutines/DelayKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, p0, v2

    if-gez p2, :cond_1

    iget-object p2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/DelayKt;->getDelay(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    move-result-object p2

    invoke-interface {p2, p0, p1, v0}, Lkotlinx/coroutines/Delay;->scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuationImpl;)V

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static final getDelay(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/Delay;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/Delay;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    :cond_1
    return-object p0
.end method

.method public static final toDelayMillis-LRDsOJo(J)J
    .locals 7

    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_1

    long-to-int v5, p0

    and-int/2addr v5, v4

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v6, v0

    and-int/2addr v6, v4

    sub-int/2addr v5, v6

    if-gez v2, :cond_4

    neg-int v5, v5

    goto :goto_1

    :cond_1
    :goto_0
    if-gez v2, :cond_2

    const/4 v2, -0x1

    move v5, v2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v4

    :cond_4
    :goto_1
    if-lez v5, :cond_c

    long-to-int v0, p0

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_7

    sget-wide v1, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v1, p0, v1

    if-eqz v1, :cond_5

    sget-wide v1, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v1, p0, v1

    if-nez v1, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_7

    shr-long/2addr p0, v4

    goto :goto_3

    :cond_7
    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-string/jumbo v2, "unit"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v2, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_8

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_3

    :cond_8
    sget-wide v2, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_9

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_3

    :cond_9
    shr-long/2addr p0, v4

    if-nez v0, :cond_a

    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    goto :goto_2

    :cond_a
    move-object v0, v1

    :goto_2
    const-string/jumbo v2, "sourceUnit"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    :goto_3
    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-gez v2, :cond_b

    goto :goto_4

    :cond_b
    move-wide v0, p0

    :cond_c
    :goto_4
    return-wide v0
.end method
