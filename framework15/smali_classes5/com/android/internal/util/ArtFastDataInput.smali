.class public Lcom/android/internal/util/ArtFastDataInput;
.super Lcom/android/modules/utils/FastDataInput;
.source "ArtFastDataInput.java"


# static fields
.field private static blacklist sInCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/util/ArtFastDataInput;",
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

    sput-object v0, Lcom/android/internal/util/ArtFastDataInput;->sInCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ArtFastDataInput;->sRuntime:Ldalvik/system/VMRuntime;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/modules/utils/FastDataInput;-><init>(Ljava/io/InputStream;I)V

    sget-object v0, Lcom/android/internal/util/ArtFastDataInput;->sRuntime:Ldalvik/system/VMRuntime;

    iget-object v1, p0, Lcom/android/internal/util/ArtFastDataInput;->mBuffer:[B

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/ArtFastDataInput;->mBufferPtr:J

    return-void
.end method

.method public static blacklist obtain(Ljava/io/InputStream;)Lcom/android/internal/util/ArtFastDataInput;
    .locals 3

    sget-object v0, Lcom/android/internal/util/ArtFastDataInput;->sInCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ArtFastDataInput;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/ArtFastDataInput;->setInput(Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/internal/util/ArtFastDataInput;

    const v2, 0x8000

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/ArtFastDataInput;-><init>(Ljava/io/InputStream;I)V

    return-object v1
.end method


# virtual methods
.method public blacklist newByteArray(I)[B
    .locals 2

    sget-object v0, Lcom/android/internal/util/ArtFastDataInput;->sRuntime:Ldalvik/system/VMRuntime;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api readUTF()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/ArtFastDataInput;->readUnsignedShort()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/ArtFastDataInput;->mBufferCap:I

    if-le v1, v0, :cond_1

    iget v1, p0, Lcom/android/internal/util/ArtFastDataInput;->mBufferLim:I

    iget v2, p0, Lcom/android/internal/util/ArtFastDataInput;->mBufferPos:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ArtFastDataInput;->fill(I)V

    :cond_0
    iget-wide v1, p0, Lcom/android/internal/util/ArtFastDataInput;->mBufferPtr:J

    iget v3, p0, Lcom/android/internal/util/ArtFastDataInput;->mBufferPos:I

    invoke-static {v1, v2, v3, v0}, Landroid/util/CharsetUtils;->fromModifiedUtf8Bytes(JII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/ArtFastDataInput;->mBufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/util/ArtFastDataInput;->mBufferPos:I

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/internal/util/ArtFastDataInput;->sRuntime:Ldalvik/system/VMRuntime;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/util/ArtFastDataInput;->readFully([BII)V

    sget-object v3, Lcom/android/internal/util/ArtFastDataInput;->sRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v3, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-static {v3, v4, v2, v0}, Landroid/util/CharsetUtils;->fromModifiedUtf8Bytes(JII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist release()V
    .locals 2

    invoke-super {p0}, Lcom/android/modules/utils/FastDataInput;->release()V

    iget v0, p0, Lcom/android/internal/util/ArtFastDataInput;->mBufferCap:I

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/util/ArtFastDataInput;->sInCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
