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
    .param p1, "messagePublisher"    # Lcom/samsung/android/sume/core/message/MessagePublisher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messagePublisher"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method

.method static synthetic blacklist lambda$newMessage$0(ILjava/util/Map;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1
    .param p0, "code"    # I
    .param p1, "data"    # Ljava/util/Map;
    .param p2, "e"    # Lcom/samsung/android/sume/core/message/MessagePublisher;

    .line 55
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic blacklist lambda$newMessage$1$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(ILjava/lang/Object;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "e"    # Lcom/samsung/android/sume/core/message/MessagePublisher;

    .line 62
    new-instance v0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$1;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;Ljava/lang/Object;)V

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$newMessage$2$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(ILjava/lang/String;Ljava/lang/Object;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1
    .param p1, "code"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "e"    # Lcom/samsung/android/sume/core/message/MessagePublisher;

    .line 71
    new-instance v0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$2;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p4, p1, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$newMessage$3$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl(I[Landroid/util/Pair;Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1
    .param p1, "code"    # I
    .param p2, "keyValues"    # [Landroid/util/Pair;
    .param p3, "e"    # Lcom/samsung/android/sume/core/message/MessagePublisher;

    .line 80
    new-instance v0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$3;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;[Landroid/util/Pair;)V

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newMessage(ILjava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "data"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;ILjava/lang/Object;)V

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    .line 61
    return-object v0
.end method

.method public blacklist newMessage(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
    .locals 2
    .param p1, "code"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "key",
            "data"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;ILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    .line 70
    return-object v0
.end method

.method public blacklist newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;
    .locals 2
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "data"
        }
    .end annotation

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

    .line 54
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0;-><init>(ILjava/util/Map;)V

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    .line 54
    return-object v0
.end method

.method public varargs blacklist newMessage(I[Landroid/util/Pair;)Lcom/samsung/android/sume/core/message/Message;
    .locals 2
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "keyValues"
        }
    .end annotation

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

    .line 79
    .local p2, "keyValues":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;->weakProducer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/message/MessagePublisher$MessageProducerImpl;I[Landroid/util/Pair;)V

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    .line 79
    return-object v0
.end method
