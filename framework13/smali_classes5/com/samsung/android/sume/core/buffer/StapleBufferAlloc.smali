.class public Lcom/samsung/android/sume/core/buffer/StapleBufferAlloc;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;
.source "StapleBufferAlloc.java"


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 0
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 10
    return-void
.end method


# virtual methods
.method blacklist allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 24
    .local p1, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method
