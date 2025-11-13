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

.field private final blacklist path:Ljava/lang/String;

.field private final blacklist prefix:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "name"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->path:Ljava/lang/String;

    .line 38
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, "extPos":I
    if-lez v0, :cond_0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    .line 41
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    .line 46
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$writeRawImageSingle$3(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)Z
    .locals 1
    .param p0, "dataType"    # Lcom/samsung/android/sume/core/types/DataType;
    .param p1, "e"    # Lcom/samsung/android/sume/core/types/DataType;

    .line 132
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
    .param p0, "buf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "not implement internal compress image writer yet, plz should set explicitly"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$writeSingle$1()Ljava/util/function/BiFunction;
    .locals 1

    .line 78
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$writeSingle$2(Lcom/samsung/android/sume/core/types/ColorFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 86
    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$1;->$SwitchMap$com$samsung$android$sume$core$types$ColorFormat:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :pswitch_0
    const-string v0, "gray"

    return-object v0

    .line 87
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
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 57
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 58
    .local v0, "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->writeSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 59
    .end local v0    # "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "exception":Ljava/lang/UnsupportedOperationException;
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v1

    .line 61
    .local v1, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 62
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

    .line 63
    const/4 v3, 0x0

    return v3

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist writeRawImageSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z
    .locals 8
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "name"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    .line 132
    .local v0, "dataType":Lcom/samsung/android/sume/core/types/DataType;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/sume/core/types/DataType;

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->S8:Lcom/samsung/android/sume/core/types/DataType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/types/DataType;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v1

    .line 134
    .local v1, "fmt":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getChannels()I

    move-result v5

    invoke-static {v2, v5}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 135
    invoke-static {}, Lcom/samsung/android/sume/core/controller/UniImgp;->ofCvtData()Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-interface {v2, p1, v5}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    .line 138
    .end local v1    # "fmt":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    :cond_0
    const/4 v1, 0x0

    .line 140
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 141
    const-class v2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 142
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 143
    sget-object v5, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "success to save "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    nop

    .line 150
    nop

    .line 152
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return v4

    .line 150
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 145
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    sget-object v4, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to save "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    nop

    .line 150
    if-eqz v1, :cond_1

    .line 152
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 155
    goto :goto_1

    .line 153
    :catch_2
    move-exception v4

    .line 154
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return v3

    .line 150
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v1, :cond_2

    .line 152
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 155
    goto :goto_3

    .line 153
    :catch_3
    move-exception v3

    .line 154
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v2
.end method

.method private blacklist writeSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z
    .locals 10
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "index"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeSingle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "success":Z
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->path:Ljava/lang/String;

    aput-object v7, v2, v6

    iget-object v7, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    aput-object v7, v2, v5

    aput-object p2, v2, v4

    aput-object v1, v2, v3

    const-string v1, "%s/%s%s.%s"

    invoke-static {v1, v2}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "fullPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->compressImageWriter:Ljava/util/function/BiFunction;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda0;-><init>()V

    .line 78
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BiFunction;

    .line 82
    invoke-interface {v2, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 84
    .end local v1    # "fullPath":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v7, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter$$ExternalSyntheticLambda1;-><init>()V

    .line 85
    invoke-virtual {v1, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 92
    const-string/jumbo v7, "raw"

    invoke-virtual {v1, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    .line 94
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->path:Ljava/lang/String;

    aput-object v7, v1, v6

    iget-object v7, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->prefix:Ljava/lang/String;

    aput-object v7, v1, v5

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p2, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->ext:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s/%s_%dx%d%s.%s"

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "fullPath":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->writeRawImageSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z

    move-result v0

    .line 98
    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exifSupplier:Ljava/util/function/Supplier;

    if-eqz v2, :cond_4

    .line 99
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface;

    .line 100
    .local v2, "src":Landroid/media/ExifInterface;
    if-eqz v2, :cond_4

    .line 101
    const/4 v3, 0x0

    .line 103
    .local v3, "os":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 104
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 106
    new-instance v4, Landroid/media/ExifInterface;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    .line 108
    .local v4, "dst":Landroid/media/ExifInterface;
    invoke-static {}, Lcom/samsung/android/sume/MetaDataUtil;->getExifTags()[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v8, v5, v6

    .line 109
    .local v8, "tag":Ljava/lang/String;
    invoke-virtual {v2, v8}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 110
    invoke-virtual {v2, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v8    # "tag":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v4    # "dst":Landroid/media/ExifInterface;
    nop

    .line 118
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 116
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 113
    :catch_0
    move-exception v4

    .line 114
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_4

    .line 118
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 121
    :goto_2
    goto :goto_5

    .line 119
    :catch_1
    move-exception v4

    .line 120
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 116
    :goto_3
    if-eqz v3, :cond_3

    .line 118
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 121
    goto :goto_4

    .line 119
    :catch_2
    move-exception v5

    .line 120
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v4

    .line 127
    .end local v2    # "src":Landroid/media/ExifInterface;
    .end local v3    # "os":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_5
    return v0
.end method


# virtual methods
.method public blacklist setCompressImageWriter(Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressImageWriter"
        }
    .end annotation

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

    .line 162
    .local p1, "compressImageWriter":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->compressImageWriter:Ljava/util/function/BiFunction;

    .line 163
    return-object p0
.end method

.method public blacklist setExifSupplier(Ljava/util/function/Supplier;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exifSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/media/ExifInterface;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;"
        }
    .end annotation

    .line 167
    .local p1, "exifSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/media/ExifInterface;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->exifSupplier:Ljava/util/function/Supplier;

    .line 168
    return-object p0
.end method

.method public blacklist write(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 1
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 49
    instance-of v0, p1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    if-eqz v0, :cond_0

    .line 50
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->writeSingle(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileWriter;->writeGroup(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result v0

    return v0
.end method
