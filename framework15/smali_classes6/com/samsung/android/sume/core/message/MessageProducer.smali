.class public interface abstract Lcom/samsung/android/sume/core/message/MessageProducer;
.super Ljava/lang/Object;
.source "MessageProducer.java"


# virtual methods
.method public abstract blacklist newMessage(I)Lcom/samsung/android/sume/core/message/Message;
.end method

.method public abstract blacklist newMessage(ILjava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
.end method

.method public abstract blacklist newMessage(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
.end method

.method public abstract blacklist newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Message;"
        }
    .end annotation
.end method

.method public varargs abstract blacklist newMessage(I[Landroid/util/Pair;)Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Message;"
        }
    .end annotation
.end method
