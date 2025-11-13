.class public final Landroidx/room/coroutines/Pool;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final capacity:I

.field public final channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final connectionFactory:Lkotlin/jvm/functions/Function0;

.field public final connections:[Landroidx/room/coroutines/ConnectionWithLock;

.field public final size:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/coroutines/Pool;->capacity:I

    iput-object p2, p0, Landroidx/room/coroutines/Pool;->connectionFactory:Lkotlin/jvm/functions/Function0;

    const/4 p2, 0x0

    invoke-static {p2}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p2

    iput-object p2, p0, Landroidx/room/coroutines/Pool;->size:Lkotlinx/atomicfu/AtomicInt;

    new-array p2, p1, [Landroidx/room/coroutines/ConnectionWithLock;

    iput-object p2, p0, Landroidx/room/coroutines/Pool;->connections:[Landroidx/room/coroutines/ConnectionWithLock;

    sget-object p2, Landroidx/room/coroutines/Pool$channel$1;->INSTANCE:Landroidx/room/coroutines/Pool$channel$1;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/coroutines/Pool;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    return-void
.end method


# virtual methods
.method public final recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    .locals 1

    iget-object p0, p0, Landroidx/room/coroutines/Pool;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/room/coroutines/ConnectionWithLock;->close()V

    instance-of p0, p0, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t recycle connection"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final tryOpenNewConnection()V
    .locals 5

    iget-object v0, p0, Landroidx/room/coroutines/Pool;->size:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget v1, p0, Landroidx/room/coroutines/Pool;->capacity:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/room/coroutines/Pool;->size:Lkotlinx/atomicfu/AtomicInt;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroidx/room/coroutines/ConnectionWithLock;

    iget-object v2, p0, Landroidx/room/coroutines/Pool;->connectionFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Landroidx/room/coroutines/ConnectionWithLock;-><init>(Landroidx/sqlite/SQLiteConnection;Lkotlinx/coroutines/sync/Mutex;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p0, Landroidx/room/coroutines/Pool;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    instance-of v3, v2, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object p0, p0, Landroidx/room/coroutines/Pool;->connections:[Landroidx/room/coroutines/ConnectionWithLock;

    aput-object v1, p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/room/coroutines/ConnectionWithLock;->close()V

    instance-of p0, v2, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t send a new connection for acquisition"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Landroidx/room/coroutines/Pool;->tryOpenNewConnection()V

    :goto_0
    return-void
.end method
