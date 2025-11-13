.class public interface abstract Lcom/android/systemui/util/concurrency/MessageRouter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract cancelMessages(I)V
.end method

.method public abstract cancelMessages(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public sendMessage(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/MessageRouter;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/MessageRouter;->sendMessageDelayed(Ljava/lang/Object;J)V

    return-void
.end method

.method public abstract sendMessageDelayed(IJ)V
.end method

.method public abstract sendMessageDelayed(Ljava/lang/Object;J)V
.end method

.method public abstract subscribeTo(ILcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V
.end method

.method public abstract subscribeTo(Ljava/lang/Class;Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract unsubscribeFrom(ILcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V
.end method

.method public abstract unsubscribeFrom(Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract unsubscribeFrom(Lcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V
.end method

.method public abstract unsubscribeFrom(Ljava/lang/Class;Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener<",
            "TT;>;)V"
        }
    .end annotation
.end method
