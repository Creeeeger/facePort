.class public final Lcom/android/systemui/util/kotlin/IpcSerializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/kotlin/IpcSerializer;->channel:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method


# virtual methods
.method public final process(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;

    iget v1, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;-><init>(Lcom/android/systemui/util/kotlin/IpcSerializer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/IpcSerializer;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    move-result-object p0

    :cond_4
    :goto_1
    iput-object p0, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CompletableDeferred;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {v2, v5}, Lkotlinx/coroutines/JobSupport;->makeCompleting$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Z

    iput-object p0, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$process$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected end of serialization channel"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runSerialized(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;

    iget v1, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;-><init>(Lcom/android/systemui/util/kotlin/IpcSerializer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CompletableDeferred;

    iget-object p1, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CompletableDeferred;

    iget-object p1, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v2, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-direct {v2, v3}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-virtual {v2, p2}, Lkotlinx/coroutines/JobSupport;->makeCompleting$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Z

    new-instance v7, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-direct {v7, v3}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-virtual {v7, p2}, Lkotlinx/coroutines/JobSupport;->makeCompleting$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/IpcSerializer;->channel:Lkotlinx/coroutines/channels/Channel;

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, v2, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->label:I

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object p0, v7

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_1
    iput-object v2, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->label:I

    check-cast p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, v2

    :goto_2
    iput-object p0, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerialized$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final runSerializedBlocking(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1;",
            ")TR;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerializedBlocking$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/util/kotlin/IpcSerializer$runSerializedBlocking$1;-><init>(Lcom/android/systemui/util/kotlin/IpcSerializer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p0, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
