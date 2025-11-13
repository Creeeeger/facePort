.class Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;
.source "ImageBufferAlloc.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/ImageFormat;)V
    .locals 0
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 16
    return-void
.end method

.method private blacklist initBuffer(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V
    .locals 0
    .param p1, "buf"    # Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4

    .line 23
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 24
    .local v0, "buf":Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->initBuffer(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V

    .line 25
    return-object v0
.end method

.method public blacklist allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4

    .line 30
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->getInstance()Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 31
    .local v0, "buf":Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->initBuffer(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V

    .line 32
    return-object v0
.end method

.method public blacklist wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3
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

    .line 41
    .local p1, "data":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc$Nothing;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc$Nothing;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 43
    .local v0, "buf":Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
    const-string v1, "file-descriptor"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    .end local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 47
    .restart local v0    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;->initBuffer(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V

    .line 48
    return-object v0
.end method
