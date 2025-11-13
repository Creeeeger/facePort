.class public final Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;
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

.field final synthetic $uri$inlined:Landroid/net/Uri;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/CustomizationProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/CustomizationProvider;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->$spanName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->this$0:Lcom/android/systemui/keyguard/CustomizationProvider;

    iput-object p4, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->$uri$inlined:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->$spanName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->this$0:Lcom/android/systemui/keyguard/CustomizationProvider;

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->$uri$inlined:Landroid/net/Uri;

    invoke-direct {v0, v1, p2, v2, p0}, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/CustomizationProvider;Landroid/net/Uri;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->label:I

    const-string v2, "Coroutines"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->I$0:I

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->Z$0:Z

    iget-object v3, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/app/tracing/coroutines/TraceData;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->I$0:I

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->Z$0:Z

    iget-object v3, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/app/tracing/coroutines/TraceData;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_2
    iget v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->I$0:I

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->Z$0:Z

    iget-object v3, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/app/tracing/coroutines/TraceData;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    :cond_3
    iget v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->I$0:I

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->Z$0:Z

    iget-object v3, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/app/tracing/coroutines/TraceData;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->$spanName:Ljava/lang/String;

    sget-object v1, Lcom/android/app/tracing/coroutines/TraceContextElementKt;->traceThreadLocal:Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/app/tracing/coroutines/TraceData;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v7

    if-nez v1, :cond_6

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "<none>"

    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lcom/android/app/tracing/coroutines/TraceData;->beginSpan(Ljava/lang/String;)V

    :cond_7
    if-eqz v7, :cond_8

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v8

    goto :goto_1

    :cond_8
    const/4 v8, 0x0

    :goto_1
    if-eqz v7, :cond_9

    invoke-static {v8, v2, p1}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    :try_start_4
    iget-object v9, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->this$0:Lcom/android/systemui/keyguard/CustomizationProvider;

    iget-object v9, v9, Lcom/android/systemui/keyguard/CustomizationProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v10, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->$uri$inlined:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    if-eq v9, v6, :cond_10

    if-eq v9, v5, :cond_e

    if-eq v9, v4, :cond_c

    if-eq v9, v3, :cond_a

    const/4 p0, 0x0

    goto/16 :goto_7

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->this$0:Lcom/android/systemui/keyguard/CustomizationProvider;

    iput-object v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$1:Ljava/lang/Object;

    iput-boolean v7, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->Z$0:Z

    iput v8, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->I$0:I

    iput v3, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->label:I

    invoke-static {v4, p0}, Lcom/android/systemui/keyguard/CustomizationProvider;->access$queryFlags(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p1, v0, :cond_b

    return-object v0

    :cond_b
    move-object p0, v1

    move v1, v7

    move v0, v8

    :goto_2
    :try_start_5
    check-cast p1, Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    move v8, v0

    move v7, v1

    move-object v1, p0

    move-object p0, p1

    goto :goto_7

    :catchall_1
    move-exception p1

    move-object p0, v1

    move v1, v7

    move v0, v8

    goto :goto_8

    :cond_c
    :try_start_6
    iget-object v3, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->this$0:Lcom/android/systemui/keyguard/CustomizationProvider;

    iput-object v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$1:Ljava/lang/Object;

    iput-boolean v7, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->Z$0:Z

    iput v8, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->I$0:I

    iput v4, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->label:I

    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/CustomizationProvider;->access$querySelections(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne p1, v0, :cond_d

    return-object v0

    :cond_d
    move-object p0, v1

    move v1, v7

    move v0, v8

    :goto_4
    :try_start_7
    check-cast p1, Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :cond_e
    :try_start_8
    iget-object v3, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->this$0:Lcom/android/systemui/keyguard/CustomizationProvider;

    iput-object v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$1:Ljava/lang/Object;

    iput-boolean v7, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->Z$0:Z

    iput v8, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->I$0:I

    iput v6, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->label:I

    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/CustomizationProvider;->access$queryAffordances(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-ne p1, v0, :cond_f

    return-object v0

    :cond_f
    move-object p0, v1

    move v1, v7

    move v0, v8

    :goto_5
    :try_start_9
    check-cast p1, Landroid/database/Cursor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_10
    :try_start_a
    iget-object v3, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->this$0:Lcom/android/systemui/keyguard/CustomizationProvider;

    iput-object v1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->L$1:Ljava/lang/Object;

    iput-boolean v7, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->Z$0:Z

    iput v8, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->I$0:I

    iput v5, p0, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;->label:I

    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/CustomizationProvider;->access$querySlots(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-ne p1, v0, :cond_11

    return-object v0

    :cond_11
    move-object p0, v1

    move v1, v7

    move v0, v8

    :goto_6
    :try_start_b
    check-cast p1, Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :goto_7
    if-eqz v7, :cond_12

    invoke-static {v8, v2}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_13
    return-object p0

    :goto_8
    if-eqz v1, :cond_14

    invoke-static {v0, v2}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_14
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_15
    throw p1
.end method
