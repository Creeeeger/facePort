.class public final synthetic Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/concurrent/Future;

    invoke-static {p1}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->lambda$receiveAny$3(Ljava/util/concurrent/Future;)V

    return-void
.end method
