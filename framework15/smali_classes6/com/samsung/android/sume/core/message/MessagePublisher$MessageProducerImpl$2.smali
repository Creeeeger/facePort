.class Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;
.super Ljava/util/HashMap;
.source "MessagePublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->newMessage(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
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

.field final synthetic blacklist val$key:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->this$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

    iput-object p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->val$key:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->val$data:Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
