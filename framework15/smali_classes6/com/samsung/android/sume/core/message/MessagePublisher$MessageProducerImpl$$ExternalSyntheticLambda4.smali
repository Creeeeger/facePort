.class public final synthetic Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

    iput p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

    iget v1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->lambda$newMessage$3$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(ILjava/lang/String;Ljava/lang/Object;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object p1

    return-object p1
.end method
