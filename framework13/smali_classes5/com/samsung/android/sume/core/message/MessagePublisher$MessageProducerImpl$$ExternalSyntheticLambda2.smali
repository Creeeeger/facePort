.class public final synthetic Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:[Landroid/util/Pair;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;I[Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

    iput p2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;->f$2:[Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;

    iget v1, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;->f$2:[Landroid/util/Pair;

    check-cast p1, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->lambda$newMessage$3$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(I[Landroid/util/Pair;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object p1

    return-object p1
.end method
