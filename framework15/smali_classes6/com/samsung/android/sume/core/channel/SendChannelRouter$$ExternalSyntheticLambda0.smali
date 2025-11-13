.class public final synthetic Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/channel/SendChannelRouter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/SendChannelRouter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->$r8$lambda$TcA2RU-nYg6-j_GlDRc-miIYaqw(Lcom/samsung/android/sume/core/channel/SendChannelRouter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    return-void
.end method
