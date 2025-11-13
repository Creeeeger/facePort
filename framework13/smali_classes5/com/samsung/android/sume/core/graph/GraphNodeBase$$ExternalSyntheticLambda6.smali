.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphNodeBase$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/SendChannelRouter;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sume/core/graph/GraphNodeBase;->lambda$prepare$5(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p1

    return p1
.end method
