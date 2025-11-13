.class public final synthetic Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;

    return-void
.end method


# virtual methods
.method public final blacklist receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;

    invoke-static {v0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->$r8$lambda$1yJMJ4ZLcSYYrdKeJzmymkW0vws(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method
