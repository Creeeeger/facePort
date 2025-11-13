.class public interface abstract Lcom/samsung/android/sume/core/message/MessageSubscriber;
.super Ljava/lang/Object;
.source "MessageSubscriber.java"


# virtual methods
.method public blacklist addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 0

    return-void
.end method

.method public abstract blacklist bindToMessageChannelRouter(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V
.end method

.method public abstract blacklist getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;
.end method

.method public abstract blacklist getSubscribeMessages()[Ljava/lang/Integer;
.end method

.method public abstract blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)V
.end method

.method public blacklist removeMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 0

    return-void
.end method
