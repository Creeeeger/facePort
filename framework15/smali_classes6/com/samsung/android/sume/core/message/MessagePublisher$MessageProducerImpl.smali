.class Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;
.super Ljava/lang/Object;
.source "MessagePublisher.java"

# interfaces
.implements Lcom/samsung/android/sume/core/message/MessageProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/message/MessagePublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageProducerImpl"
.end annotation


# instance fields
.field private final blacklist weakProducer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/core/message/MessagePublisher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessagePublisher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic blacklist lambda$newMessage$0(ILcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessage(I)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$newMessage$1(ILjava/util/Map;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic blacklist lambda$newMessage$2$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(ILjava/lang/Object;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;Ljava/lang/Object;)V

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$newMessage$3$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(ILjava/lang/String;Ljava/lang/Object;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p4, p1, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$newMessage$4$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(I[Landroid/util/Pair;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;[Landroid/util/Pair;)V

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newMessage(I)Lcom/samsung/android/sume/core/message/Message;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    return-object v0
.end method

.method public blacklist newMessage(ILjava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    return-object v0
.end method

.method public blacklist newMessage(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    return-object v0
.end method

.method public blacklist newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;
    .locals 2
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

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda1;-><init>(ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    return-object v0
.end method

.method public varargs blacklist newMessage(I[Landroid/util/Pair;)Lcom/samsung/android/sume/core/message/Message;
    .locals 2
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

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    return-object v0
.end method
