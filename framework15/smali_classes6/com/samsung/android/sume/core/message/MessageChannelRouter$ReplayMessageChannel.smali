.class Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;
.super Lcom/samsung/android/sume/core/message/BlockingMessageChannel;
.source "MessageChannelRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/message/MessageChannelRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplayMessageChannel"
.end annotation


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public blacklist drainTo(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public blacklist send(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send replay message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "fail to send message as replay"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic blacklist send(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/message/Message;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;->send(Lcom/samsung/android/sume/core/message/Message;)V

    return-void
.end method
