.class public Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;
.source "AudioBufferAlloc.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/AudioFormat;)V
    .locals 0
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/AudioFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 14
    return-void
.end method


# virtual methods
.method public blacklist allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4

    .line 18
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4

    .line 23
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->getInstance()Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
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

    .line 28
    .local p1, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method
