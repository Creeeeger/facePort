.class Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;
.super Ljava/util/HashMap;
.source "MessagePublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->newMessage(I[Landroid/util/Pair;)Lcom/samsung/android/sume/core/message/Message;
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

.field final synthetic blacklist val$keyValues:[Landroid/util/Pair;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;[Landroid/util/Pair;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;->this$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

    iput-object p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;->val$keyValues:[Landroid/util/Pair;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;->val$keyValues:[Landroid/util/Pair;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl$3(Landroid/util/Pair;)V
    .locals 2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
