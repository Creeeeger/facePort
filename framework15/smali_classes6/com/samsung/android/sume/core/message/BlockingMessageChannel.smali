.class public Lcom/samsung/android/sume/core/message/BlockingMessageChannel;
.super Ljava/lang/Object;
.source "BlockingMessageChannel.java"

# interfaces
.implements Lcom/samsung/android/sume/core/message/MessageChannel;


# instance fields
.field private blacklist id:Ljava/lang/String;

.field protected blacklist queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist threadWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->id:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->id:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->threadWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public blacklist close()V
    .locals 0

    return-void
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isClosedForReceive()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isClosedForSend()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist receive()Lcom/samsung/android/sume/core/message/Message;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "BlockingMessageChannel is canceled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic blacklist receive()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->receive()Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public blacklist send(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "BlockingMessageChannel is canceled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic blacklist send(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/message/Message;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->send(Lcom/samsung/android/sume/core/message/Message;)V

    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->id:Ljava/lang/String;

    return-void
.end method

.method public blacklist setThreadWeakReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->threadWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
