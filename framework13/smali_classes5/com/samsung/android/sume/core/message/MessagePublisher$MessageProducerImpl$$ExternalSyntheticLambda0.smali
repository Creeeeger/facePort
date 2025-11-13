.class public final synthetic Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->lambda$newMessage$0(ILjava/util/Map;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object p1

    return-object p1
.end method
