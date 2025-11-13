.class public interface abstract Lcom/samsung/android/sume/core/message/MessageSubscriber;
.super Ljava/lang/Object;
.source "MessageSubscriber.java"


# virtual methods
.method public blacklist addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 0
    .param p1, "messageConsumer"    # Lcom/samsung/android/sume/core/message/MessageConsumer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageConsumer"
        }
    .end annotation

    .line 14
    return-void
.end method

.method public abstract blacklist bindToMessageChannelRouter(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageChannelRouter"
        }
    .end annotation
.end method

.method public abstract blacklist getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;
.end method

.method public abstract blacklist getSubscribeMessages()[Ljava/lang/Integer;
.end method

.method public abstract blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public blacklist removeMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 0
    .param p1, "messageConsumer"    # Lcom/samsung/android/sume/core/message/MessageConsumer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageConsumer"
        }
    .end annotation

    .line 15
    return-void
.end method
