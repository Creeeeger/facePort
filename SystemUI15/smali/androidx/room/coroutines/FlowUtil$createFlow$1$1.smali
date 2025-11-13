.class final Landroidx/room/coroutines/FlowUtil$createFlow$1$1;
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
.field final synthetic $$this$flow:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector;"
        }
    .end annotation
.end field

.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $db:Landroidx/room/RoomDatabase;

.field final synthetic $inTransaction:Z

.field final synthetic $tableNames:[Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;ZLkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Z",
            "Lkotlinx/coroutines/flow/FlowCollector;",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$db:Landroidx/room/RoomDatabase;

    iput-boolean p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$inTransaction:Z

    iput-object p3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$tableNames:[Ljava/lang/String;

    iput-object p5, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v7, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;

    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-boolean v2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$inTransaction:Z

    iget-object v3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$tableNames:[Ljava/lang/String;

    iget-object v5, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$block:Lkotlin/jvm/functions/Function1;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;-><init>(Landroidx/room/RoomDatabase;ZLkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/Channel;

    iget-object v7, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;

    iget-object v8, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/Channel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    :cond_2
    move-object v12, v7

    move-object v13, v8

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, -0x1

    const/4 v7, 0x6

    invoke-static {v6, v5, v5, v7}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v8

    new-instance v7, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;

    iget-object v6, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$tableNames:[Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;-><init>([Ljava/lang/String;Lkotlinx/coroutines/channels/Channel;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v8, v6}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v9, 0x7

    invoke-static {v6, v5, v5, v9}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iget-object v9, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-boolean v10, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$inTransaction:Z

    iput-object v8, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->label:I

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->inCompatibilityMode$room_runtime_release()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface/range {p0 .. p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v11

    sget-object v12, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    invoke-interface {v11, v12}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v11

    check-cast v11, Landroidx/room/TransactionElement;

    if-eqz v11, :cond_6

    iget-object v11, v11, Landroidx/room/TransactionElement;->transactionDispatcher:Lkotlin/coroutines/ContinuationInterceptor;

    if-eqz v11, :cond_6

    iget-object v12, v9, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    if-nez v12, :cond_4

    move-object v12, v5

    :cond_4
    iget-object v12, v12, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v12, v11}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v11

    if-nez v11, :cond_5

    goto :goto_0

    :cond_5
    move-object v9, v11

    goto :goto_1

    :cond_6
    :goto_0
    if-eqz v10, :cond_7

    iget-object v9, v9, Landroidx/room/RoomDatabase;->transactionContext:Lkotlin/coroutines/CoroutineContext;

    if-nez v9, :cond_b

    move-object v9, v5

    goto :goto_1

    :cond_7
    iget-object v9, v9, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    if-nez v9, :cond_8

    move-object v9, v5

    :cond_8
    iget-object v9, v9, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    goto :goto_1

    :cond_9
    iget-object v9, v9, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    if-nez v9, :cond_a

    move-object v9, v5

    :cond_a
    iget-object v9, v9, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    :cond_b
    :goto_1
    if-ne v9, v1, :cond_2

    return-object v1

    :goto_2
    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    sget-object v7, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v9, v7}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    new-instance v8, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;

    iget-object v11, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-boolean v14, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$inTransaction:Z

    iget-object v9, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$block:Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x0

    move-object v10, v8

    move-object v15, v6

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v17}, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$1;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;Lkotlinx/coroutines/channels/Channel;ZLkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v7, v5, v8, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v5, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1;->label:I

    invoke-static {v2, v6, v3, v0}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    goto :goto_3

    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-ne v0, v1, :cond_d

    return-object v1

    :cond_d
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
