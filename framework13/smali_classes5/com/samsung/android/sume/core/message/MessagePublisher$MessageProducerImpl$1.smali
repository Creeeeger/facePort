.class Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;
.super Ljava/util/HashMap;
.source "MessagePublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->lambda$newMessage$1$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(ILjava/lang/Object;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
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
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;->this$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

    iput-object p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 63
    const-string v0, "data"

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
