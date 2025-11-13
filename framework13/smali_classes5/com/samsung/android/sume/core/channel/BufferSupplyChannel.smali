.class public Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;
.super Ljava/lang/Object;
.source "BufferSupplyChannel.java"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/BufferChannel;
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/channel/BufferChannel;",
        "Ljava/util/function/Supplier<",
        "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private blacklist supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 0
    .param p1, "channel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    .line 45
    return-void
.end method

.method public blacklist close()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->close()V

    .line 40
    return-void
.end method

.method public blacklist configure(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->supplier:Ljava/util/function/Supplier;

    .line 24
    return-void
.end method

.method public blacklist get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->supplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel$$ExternalSyntheticLambda0;-><init>()V

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 59
    return-object v0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isClosedForReceive()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForReceive()Z

    move-result v0

    return v0
.end method

.method public blacklist isClosedForSend()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForSend()Z

    move-result v0

    return v0
.end method

.method public blacklist receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public bridge synthetic blacklist receive()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 3
    .param p1, "data"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public bridge synthetic blacklist send(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method
