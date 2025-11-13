.class Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;
.super Ljava/util/HashMap;
.source "MessagePublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->lambda$newMessage$2$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(ILjava/lang/String;Ljava/lang/Object;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
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
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$key",
            "val$data"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->this$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

    iput-object p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method
