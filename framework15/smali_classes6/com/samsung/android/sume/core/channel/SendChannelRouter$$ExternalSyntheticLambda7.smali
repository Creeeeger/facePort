.class public final synthetic Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->lambda$evaluate$4(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
