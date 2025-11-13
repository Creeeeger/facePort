.class public final synthetic Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/ExecutorService;

.field public final synthetic blacklist f$2:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda5;->f$1:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda5;->f$1:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/BlockingQueue;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->lambda$receiveAny$2$com-samsung-android-sume-core-channel-ReceiveChannelRouter(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Integer;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
