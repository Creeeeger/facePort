.class final Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;
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
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $db:Landroidx/room/RoomDatabase;

.field final synthetic $inTransaction:Z

.field final synthetic $observer:Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;

.field final synthetic $observerChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel;"
        }
    .end annotation
.end field

.field final synthetic $resultChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;Lkotlinx/coroutines/channels/Channel;ZLkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$observer:Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;

    iput-object p3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$observerChannel:Lkotlinx/coroutines/channels/Channel;

    iput-boolean p4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$inTransaction:Z

    iput-object p5, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$resultChannel:Lkotlinx/coroutines/channels/Channel;

    iput-object p6, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance p1, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;

    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-object v2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$observer:Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;

    iget-object v3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$observerChannel:Lkotlinx/coroutines/channels/Channel;

    iget-boolean v4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$inTransaction:Z

    iget-object v5, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$resultChannel:Lkotlinx/coroutines/channels/Channel;

    iget-object v6, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$block:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;Lkotlinx/coroutines/channels/Channel;ZLkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :pswitch_3
    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :pswitch_4
    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$observer:Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;

    iput v2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->label:I

    iget-object p1, p1, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {p1, v1, p0}, Landroidx/room/TriggerBasedInvalidationTracker;->addObserver$room_runtime_release(Landroidx/room/InvalidationTracker$Observer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    :try_start_3
    iget-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$observerChannel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    move-result-object p1

    move-object v1, p1

    :cond_2
    :goto_2
    iput-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->label:I

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    iget-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-boolean v5, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$inTransaction:Z

    iget-object v9, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$block:Lkotlin/jvm/functions/Function1;

    new-instance v10, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1$invokeSuspend$$inlined$internalPerform$1;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, v10

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1$invokeSuspend$$inlined$internalPerform$1;-><init>(ZZLandroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->label:I

    iget-object p1, p1, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, p1

    :goto_4
    iget-object p1, v3, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    invoke-interface {p1, v2, v10, p0}, Landroidx/room/coroutines/ConnectionPool;->useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_5
    iget-object v3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$resultChannel:Lkotlinx/coroutines/channels/Channel;

    iput-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->label:I

    invoke-interface {v3, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_6
    iget-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$observer:Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;

    iput-object v3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->label:I

    iget-object p1, p1, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {p1, v1, p0}, Landroidx/room/TriggerBasedInvalidationTracker;->removeObserver$room_runtime_release(Landroidx/room/InvalidationTracker$Observer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_7

    goto :goto_6

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_6
    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_8
    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->$observer:Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;

    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;->label:I

    iget-object v1, v1, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {v1, v2, p0}, Landroidx/room/TriggerBasedInvalidationTracker;->removeObserver$room_runtime_release(Landroidx/room/InvalidationTracker$Observer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, v1, :cond_9

    goto :goto_9

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_9
    if-ne p0, v0, :cond_a

    return-object v0

    :cond_a
    move-object p0, p1

    :goto_a
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
