.class public Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
.source "GenericMediaBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sume/core/buffer/MediaBufferBase;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile blacklist planes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    goto :goto_0

    :pswitch_2
    const-class v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    const-class v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Lcom/samsung/android/sume/core/buffer/Align;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;)V

    iput-object p3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->adjustShape()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->adjustShape()V

    return-void
.end method

.method private blacklist dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$dataToString$0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, p0, Landroid/hardware/HardwareBuffer;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic blacklist addExtra(Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->addExtra(Ljava/util/Map;)V

    return-void
.end method

.method public blacklist adjustShape()V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    instance-of v1, v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v1, v2, :cond_9

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->OPAQUE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v1, v2, :cond_9

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->P010:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v1, v2, :cond_9

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->P010_ZIPPED:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne v1, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    if-ne v3, v4, :cond_8

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getChannels()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/buffer/Align;->getDimension()I

    move-result v4

    int-to-float v5, v0

    int-to-float v6, v4

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->bytePerPixel()F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v6, v3}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_1

    :cond_4
    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v6, v5, v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/samsung/android/sume/core/types/DataType;->U16:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v6, v3}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_1

    :cond_5
    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v6, v5, v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/samsung/android/sume/core/types/DataType;->F32:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v6, v3}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_1

    :cond_6
    const/high16 v6, 0x40800000    # 4.0f

    cmpl-float v6, v5, v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/samsung/android/sume/core/types/DataType;->F64:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v6, v3}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :goto_1
    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    goto :goto_2

    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data-size and align(shape) doesn\'t match"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " & "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method public blacklist asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget-object v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inc ref count now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public bridge synthetic blacklist containFlags([I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containFlags([I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist containsAllExtra([Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAllExtra([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist containsAnyExtra([Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAnyExtra([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist containsExtra(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsExtra(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const-string v3, "n/a"

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alignShape="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->extra:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "    "

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/Def;->contentToStringln(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->release()V

    return-object v0
.end method

.method public bridge synthetic blacklist copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist describeContents()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getAlign()Lcom/samsung/android/sume/core/buffer/Align;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getAlign()Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getChannels()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getChannels()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getCols()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getData()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getExifBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getExtra()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIccBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const-string v1, "icc"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMetaDataBuffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist getRows()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getRows()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getScanline()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getScanline()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getStride()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getStride()I

    move-result v0

    return v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/Number;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->transformDataTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist release()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    sget-object v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dec ref count now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    sget-object v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release skipped("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->release()V

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->isDataShared()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->dealloc(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic blacklist removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->removeExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist setExtra(Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic blacklist setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setScanline(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setScanline(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setStride(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setStride(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist size()J
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->bytePerPixel()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getAlign()Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/buffer/Align;->getDimension()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    const-class v2, Landroid/hardware/HardwareBuffer;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    const-class v3, Landroid/hardware/HardwareBuffer;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    move-object v0, v1

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
