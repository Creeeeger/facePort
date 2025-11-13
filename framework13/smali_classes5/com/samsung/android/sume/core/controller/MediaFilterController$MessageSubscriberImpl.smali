.class final Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;
.super Lcom/samsung/android/sume/core/message/MessageSubscriberBase;
.source "MediaFilterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/controller/MediaFilterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageSubscriberImpl"
.end annotation


# instance fields
.field private final blacklist messageThread:Ljava/lang/Thread;


# direct methods
.method public static synthetic blacklist $r8$lambda$tMUccS7nsBFjxS1FCxUYgPCLodw(Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->threadEntry()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 235
    new-instance v0, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;

    const-string v1, "MediaFilterController"

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;-><init>(Lcom/samsung/android/sume/core/message/MessageChannel;)V

    .line 237
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->messageThread:Ljava/lang/Thread;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;

    .line 241
    .local v1, "bmc":Lcom/samsung/android/sume/core/message/BlockingMessageChannel;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/BlockingMessageChannel;->setThreadWeakReference(Ljava/lang/ref/WeakReference;)V

    .line 242
    return-void
.end method

.method private blacklist threadEntry()V
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;

    move-result-object v0

    .line 248
    .local v0, "messageChannel":Lcom/samsung/android/sume/core/message/MessageChannel;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/sume/core/message/MessageChannel;->receive()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/message/Message;

    .line 249
    .local v1, "message":Lcom/samsung/android/sume/core/message/Message;
    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v1    # "message":Lcom/samsung/android/sume/core/message/Message;
    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    invoke-static {}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message channel is canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    return-void
.end method


# virtual methods
.method public blacklist release()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/message/MessageChannel;->cancel()V

    .line 259
    return-void
.end method
