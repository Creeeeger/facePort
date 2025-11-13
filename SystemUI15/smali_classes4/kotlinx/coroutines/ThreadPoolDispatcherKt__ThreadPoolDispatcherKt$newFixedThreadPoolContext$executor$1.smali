.class public final Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$executor$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic $nThreads:I

.field public final synthetic $name:Ljava/lang/String;

.field public final synthetic $threadNo:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$executor$1;->$nThreads:I

    iput-object p2, p0, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$executor$1;->$name:Ljava/lang/String;

    iput-object p3, p0, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$executor$1;->$threadNo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    iget v1, p0, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$executor$1;->$nThreads:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$executor$1;->$name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$executor$1;->$name:Ljava/lang/String;

    iget-object p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$executor$1;->$threadNo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
