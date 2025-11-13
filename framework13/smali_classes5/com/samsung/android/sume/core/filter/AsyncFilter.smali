.class public abstract Lcom/samsung/android/sume/core/filter/AsyncFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "AsyncFilter.java"


# instance fields
.field private blacklist id:I

.field protected blacklist inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field protected blacklist outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "successor"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->id:I

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist addBufferChannels(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/filter/AsyncFilter;
    .locals 0
    .param p1, "inputChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p2, "outputChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputChannel",
            "outputChannel"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 31
    return-object p0
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 2

    .line 25
    iget v0, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getInputChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method public blacklist getOutputChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method public blacklist prepare()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "either input-channel or output-channel is not given"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->prepare()V

    .line 46
    return-void
.end method

.method public blacklist release()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->release()V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->close()V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->close()V

    .line 59
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ibuf",
            "obuf"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "do not call, instead call prepare & release"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setId(I)V
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 20
    iput p1, p0, Lcom/samsung/android/sume/core/filter/AsyncFilter;->id:I

    .line 21
    return-void
.end method
