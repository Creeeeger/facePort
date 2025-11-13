.class public Lcom/android/internal/util/ArtFastDataOutput;
.super Lcom/android/modules/utils/FastDataOutput;
.source "ArtFastDataOutput.java"


# static fields
.field private static blacklist sOutCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/util/ArtFastDataOutput;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sRuntime:Ldalvik/system/VMRuntime;


# instance fields
.field private final blacklist mBufferPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/modules/utils/FastDataOutput;-><init>(Ljava/io/OutputStream;I)V

    sget-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    iget-object v1, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBuffer:[B

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPtr:J

    return-void
.end method

.method public static blacklist obtain(Ljava/io/OutputStream;)Lcom/android/internal/util/ArtFastDataOutput;
    .locals 3

    sget-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ArtFastDataOutput;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/ArtFastDataOutput;->setOutput(Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/internal/util/ArtFastDataOutput;

    const v2, 0x8000

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/ArtFastDataOutput;-><init>(Ljava/io/OutputStream;I)V

    return-object v1
.end method


# virtual methods
.method public blacklist newByteArray(I)[B
    .locals 2

    sget-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist release()V
    .locals 2

    invoke-super {p0}, Lcom/android/modules/utils/FastDataOutput;->release()V

    iget v0, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferCap:I

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/util/ArtFastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public whitelist test-api writeUTF(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/util/ArtFastDataOutput;->drain()V

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPtr:J

    iget v2, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferCap:I

    invoke-static {p1, v0, v1, v2, v3}, Landroid/util/CharsetUtils;->toModifiedUtf8Bytes(Ljava/lang/String;JII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_2

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ArtFastDataOutput;->writeShort(I)V

    iget v1, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/ArtFastDataOutput;->mBufferPos:I

    goto :goto_0

    :cond_1
    neg-int v0, v0

    sget-object v1, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    sget-object v2, Lcom/android/internal/util/ArtFastDataOutput;->sRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v2, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v5, v4}, Landroid/util/CharsetUtils;->toModifiedUtf8Bytes(Ljava/lang/String;JII)I

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ArtFastDataOutput;->writeShort(I)V

    invoke-virtual {p0, v1, v5, v0}, Lcom/android/internal/util/ArtFastDataOutput;->write([BII)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified UTF-8 length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
