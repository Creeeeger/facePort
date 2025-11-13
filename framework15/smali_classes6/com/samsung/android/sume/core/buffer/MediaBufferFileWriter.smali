.class public Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
.super Ljava/lang/Object;
.source "MediaBufferFileWriter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist compressImageWriter:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist exif:Ljava/nio/ByteBuffer;

.field private blacklist exifSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/media/ExifInterface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist ext:Ljava/lang/String;

.field private blacklist gainmap:Landroid/graphics/Bitmap;

.field private blacklist icc:Ljava/nio/ByteBuffer;

.field private blacklist isHDR:Z

.field private final blacklist path:Ljava/lang/String;

.field private final blacklist prefix:Ljava/lang/String;

.field private blacklist shape:Lcom/samsung/android/sume/core/format/Shape;

.field private blacklist uniExifInterface:Lcom/samsung/android/sume/core/UniExifInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->isHDR:Z

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->path:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->isHDR:Z

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->path:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private blacklist extractMetaBuffers(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$extractMetaBuffers$4(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Landroid/media/ExifInterface;
    .locals 1

    const-class v0, Landroid/media/ExifInterface;

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface;

    return-object v0
.end method

.method static synthetic blacklist lambda$writeRawImageSingle$3(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/DataType;->depth()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$writeSingle$0(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "not implement internal compress image writer yet, plz should set explicitly"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$writeSingle$1()Ljava/util/function/BiFunction;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda5;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$writeSingle$2(Lcom/samsung/android/sume/core/types/ColorFormat;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$1;->$SwitchMap$com$samsung$android$sume$core$types$ColorFormat:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "gray"

    return-object v0

    :pswitch_1
    const-string v0, "i420"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist writeGroup(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->extractMetaBuffers(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->writeSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->writeSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist writeRawImageSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z
    .locals 9

    move-object v0, p1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/samsung/android/sume/core/types/DataType;

    sget-object v3, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/sume/core/types/DataType;->S8:Lcom/samsung/android/sume/core/types/DataType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/types/DataType;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getChannels()I

    move-result v6

    invoke-static {v3, v6}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sume/solution/filter/UniImgp;->ofCvtData()Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v3

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    invoke-interface {v3, p1, v6}, Lcom/samsung/android/sume/core/functional/Operator;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-class v3, Ljava/nio/ByteBuffer;

    invoke-interface {v0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    sget-object v6, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "success to save "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v5

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to save "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private blacklist writeSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z
    .locals 12

    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSingle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->shape:Lcom/samsung/android/sume/core/format/Shape;

    if-eqz v1, :cond_1

    const-string v1, "encode-shape"

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->shape:Lcom/samsung/android/sume/core/format/Shape;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->isHDR:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "encode-hdr"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->uniExifInterface:Lcom/samsung/android/sume/core/UniExifInterface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->uniExifInterface:Lcom/samsung/android/sume/core/UniExifInterface;

    invoke-static {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->metadataBufferOf(ILcom/samsung/android/sume/core/UniExifInterface;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exif:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exif:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->metadataBufferOf(ILjava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->icc:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->icc:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->metadataBufferOf(ILjava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->gainmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->gainmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->metadataBufferOf(ILandroid/graphics/Bitmap;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    :cond_7
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    filled-new-array {v3, v4, p2, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s/%s%s.%s"

    invoke-static {v4, v3}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->compressImageWriter:Ljava/util/function/BiFunction;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/BiFunction;

    invoke-interface {v4, p1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_8
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-string v4, "raw"

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getStride()I

    move-result v3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getChannels()I

    move-result v6

    div-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getScanline()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    move-object v8, p2

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s/%s_%dx%d%s.%s"

    invoke-static {v4, v3}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->writeRawImageSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exifSupplier:Ljava/util/function/Supplier;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exifSupplier:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface;

    if-eqz v4, :cond_b

    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v6, Landroid/media/ExifInterface;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {}, Lcom/samsung/android/sume/core/MetaDataUtil;->getExifTags()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    invoke-virtual {v4, v10}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v4, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v6}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_4
    return v2
.end method


# virtual methods
.method synthetic blacklist lambda$extractMetaBuffers$5$com-samsung-android-sume-core-buffer-MediaBufferFileWriter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sume/core/UniExifInterface;

    if-eqz v0, :cond_0

    const-class v0, Lcom/samsung/android/sume/core/UniExifInterface;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/UniExifInterface;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->uniExifInterface:Lcom/samsung/android/sume/core/UniExifInterface;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/media/ExifInterface;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exifSupplier:Ljava/util/function/Supplier;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exif:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "icc"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->icc:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "gain-map"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->gainmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported metadata given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public blacklist setCompressImageWriter(Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->compressImageWriter:Ljava/util/function/BiFunction;

    return-object p0
.end method

.method public blacklist setExif(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exif:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public blacklist setExifSupplier(Ljava/util/function/Supplier;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/media/ExifInterface;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exifSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public blacklist setGainmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->gainmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blacklist setHDR(Z)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->isHDR:Z

    return-object p0
.end method

.method public blacklist setIcc(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->icc:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public blacklist setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->shape:Lcom/samsung/android/sume/core/format/Shape;

    return-object p0
.end method

.method public blacklist setUniExifInterface(Lcom/samsung/android/sume/core/UniExifInterface;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->uniExifInterface:Lcom/samsung/android/sume/core/UniExifInterface;

    return-object p0
.end method

.method public blacklist write(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->writeGroup(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->writeSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
