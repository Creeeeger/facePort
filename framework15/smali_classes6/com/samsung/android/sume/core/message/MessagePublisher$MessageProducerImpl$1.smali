.class Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;
.super Ljava/util/HashMap;
.source "MessagePublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->newMessage(ILjava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

.field final synthetic blacklist val$data:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;->this$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

    iput-object p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p2, "data"

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;->val$data:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
