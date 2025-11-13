.class public final Landroidx/activity/compose/OnBackInstance;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final isPredictiveBack:Z

.field public final job:Lkotlinx/coroutines/StandaloneCoroutine;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidx/activity/compose/OnBackInstance;->isPredictiveBack:Z

    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, p2, v1, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p2

    iput-object p2, p0, Landroidx/activity/compose/OnBackInstance;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p2, Landroidx/activity/compose/OnBackInstance$job$1;

    invoke-direct {p2, p3, p0, v1}, Landroidx/activity/compose/OnBackInstance$job$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/activity/compose/OnBackInstance;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x3

    invoke-static {p1, v1, v1, p2, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/compose/OnBackInstance;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "onBack cancelled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/activity/compose/OnBackInstance;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/activity/compose/OnBackInstance;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
