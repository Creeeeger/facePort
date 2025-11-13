.class public final Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;
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
.field final synthetic $connection:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/room/coroutines/ConnectionWithLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_acquireWithTimeout:Landroidx/room/coroutines/Pool;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/room/coroutines/Pool;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/room/coroutines/ConnectionWithLock;",
            ">;",
            "Landroidx/room/coroutines/Pool;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->$connection:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->$this_acquireWithTimeout:Landroidx/room/coroutines/Pool;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->$connection:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->$this_acquireWithTimeout:Landroidx/room/coroutines/Pool;

    invoke-direct {p1, v0, p0, p2}, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/room/coroutines/Pool;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->label:I

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->$connection:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->$this_acquireWithTimeout:Landroidx/room/coroutines/Pool;

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->L$0:Ljava/lang/Object;

    iput v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;->label:I

    iget-object v3, v2, Landroidx/room/coroutines/Pool;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    instance-of v5, v4, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    xor-int/2addr v0, v5

    if-eqz v0, :cond_4

    if-nez v5, :cond_2

    check-cast v4, Landroidx/room/coroutines/ConnectionWithLock;

    move-object p0, v4

    goto :goto_0

    :cond_2
    instance-of p0, v4, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    if-eqz p0, :cond_3

    move-object p0, v4

    check-cast p0, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelResult$Closed;->cause:Ljava/lang/Throwable;

    if-eqz p0, :cond_3

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Trying to call \'getOrThrow\' on a failed channel result: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v2}, Landroidx/room/coroutines/Pool;->tryOpenNewConnection()V

    invoke-virtual {v3, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_1
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
