.class public final synthetic Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/Channel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method
