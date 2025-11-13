.class public final synthetic Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

.field public final synthetic blacklist f$1:Ljava/lang/Integer;

.field public final synthetic blacklist f$2:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;Ljava/lang/Integer;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->lambda$receiveAny$1$com-samsung-android-sume-core-channel-ReceiveChannelRouter(Ljava/lang/Integer;Ljava/util/concurrent/BlockingQueue;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method
