.class abstract Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;
.super Ljava/lang/Object;
.source "MediaBufferAlloc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc$Nothing;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist format:Lcom/samsung/android/sume/core/format/MediaFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;->TAG:Ljava/lang/String;

    return-void
.end method

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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 16
    return-void
.end method

.method static blacklist of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;
    .locals 3
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 30
    instance-of v0, p0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mutable format not allowed"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    move-object v0, p0

    .line 33
    .local v0, "fmt":Lcom/samsung/android/sume/core/format/MediaFormat;
    instance-of v1, p0, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "update-at-alloc"

    invoke-interface {p0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->update()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    .line 36
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/sume/core/format/ImageFormat;

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/buffer/ImageBufferAlloc;-><init>(Lcom/samsung/android/sume/core/format/ImageFormat;)V

    return-object v1

    .line 38
    :cond_1
    instance-of v1, v0, Lcom/samsung/android/sume/core/format/AudioFormat;

    if-eqz v1, :cond_2

    .line 39
    new-instance v1, Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/format/AudioFormat;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/buffer/AudioBufferAlloc;-><init>(Lcom/samsung/android/sume/core/format/AudioFormat;)V

    return-object v1

    .line 41
    :cond_2
    new-instance v1, Lcom/samsung/android/sume/core/buffer/StapleBufferAlloc;

    invoke-direct {v1, v0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAlloc;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    return-object v1
.end method


# virtual methods
.method abstract blacklist allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method abstract blacklist allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method blacklist placeHolder()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3

    .line 23
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method

.method blacklist placeHolder(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
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

    .line 26
    .local p1, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method

.method abstract blacklist wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
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
.end method
