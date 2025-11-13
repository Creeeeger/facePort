.class abstract Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;
.super Ljava/lang/Object;
.source "MediaBufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist align:Lcom/samsung/android/sume/core/buffer/Align;

.field protected blacklist format:Lcom/samsung/android/sume/core/format/MediaFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    new-instance v0, Lcom/samsung/android/sume/core/buffer/Align;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getChannels()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/Align;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    return-void
.end method

.method static blacklist of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;
    .locals 3

    instance-of v0, p0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->TAG:Ljava/lang/String;

    const-string v1, "mutable format converted as immutable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object p0

    :cond_0
    move-object v0, p0

    instance-of v1, p0, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    if-eqz v1, :cond_1

    const-string v1, "update-at-alloc"

    invoke-interface {p0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->update()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/Align;->setByFormat(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;)V

    return-object v2
.end method

.method static blacklist of(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;)Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;
    .locals 2

    instance-of v0, p0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->TAG:Ljava/lang/String;

    const-string v1, "mutable format converted as immutable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getDimension()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/Align;->setByFormat(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->adjustAlign()V

    :cond_1
    new-instance v0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;)V

    return-object v0
.end method


# virtual methods
.method abstract blacklist allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method abstract blacklist allocate(Lcom/samsung/android/sume/core/buffer/Align;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method abstract blacklist allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method abstract blacklist wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation
.end method
