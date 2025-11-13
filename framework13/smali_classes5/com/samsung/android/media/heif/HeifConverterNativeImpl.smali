.class final Lcom/samsung/android/media/heif/HeifConverterNativeImpl;
.super Ljava/lang/Object;
.source "HeifConverterNativeImpl.java"

# interfaces
.implements Lcom/samsung/android/media/heif/SemHeifConverter;


# instance fields
.field private final blacklist mCaptureNative:Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

.field private final blacklist mFormat:I

.field private final blacklist mQuality:I


# direct methods
.method constructor blacklist <init>(II)V
    .locals 1
    .param p1, "format"    # I
    .param p2, "quality"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mCaptureNative:Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    .line 24
    iput p1, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mFormat:I

    .line 25
    iput p2, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mQuality:I

    .line 26
    return-void
.end method

.method private blacklist convert(Ljava/util/List;Lcom/samsung/android/media/heif/jni/AMessageJNI;)I
    .locals 9
    .param p2, "msg"    # Lcom/samsung/android/media/heif/jni/AMessageJNI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/heif/SemHeifConfig;",
            ">;",
            "Lcom/samsung/android/media/heif/jni/AMessageJNI;",
            ")I"
        }
    .end annotation

    .line 68
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/heif/SemHeifConfig;>;"
    const/4 v0, 0x1

    .line 69
    .local v0, "id":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "cover-count"

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/heif/SemHeifConfig;

    .line 71
    .local v2, "config":Lcom/samsung/android/media/heif/SemHeifConfig;
    nop

    .line 72
    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getMasterImage()Lcom/samsung/android/media/heif/SemInputImage;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/media/heif/CaptureSourceInternal$Parser;->makeInternalSource(Lcom/samsung/android/media/heif/SemInputImage;)Lcom/samsung/android/media/heif/CaptureSourceInternal;

    move-result-object v3

    .line 73
    .local v3, "masterInternal":Lcom/samsung/android/media/heif/CaptureSourceInternal;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setImageRole(I)V

    .line 74
    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getExifData()Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 75
    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getExifData()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setExifData(Ljava/nio/ByteBuffer;)V

    .line 78
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getCameraInfo()Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 79
    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getCameraInfo()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setCameraInfo(Ljava/nio/ByteBuffer;)V

    .line 82
    :cond_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v4, "cover%02d"

    invoke-static {v5, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->getMsg()Lcom/samsung/android/media/heif/jni/AMessageJNI;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V

    .line 84
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "id":I
    .local v4, "id":I
    invoke-virtual {v3, v0}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setId(I)V

    .line 86
    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getThumbnailImage()Lcom/samsung/android/media/heif/SemInputImage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    nop

    .line 88
    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getThumbnailImage()Lcom/samsung/android/media/heif/SemInputImage;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/heif/CaptureSourceInternal$Parser;->makeInternalSource(Lcom/samsung/android/media/heif/SemInputImage;)Lcom/samsung/android/media/heif/CaptureSourceInternal;

    move-result-object v0

    .line 89
    .local v0, "thumbInternal":Lcom/samsung/android/media/heif/CaptureSourceInternal;
    invoke-virtual {v0, v6}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setImageRole(I)V

    .line 90
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "id":I
    .local v5, "id":I
    invoke-virtual {v0, v4}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setId(I)V

    .line 91
    invoke-virtual {v3, v0}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setThumbnail(Lcom/samsung/android/media/heif/CaptureSourceInternal;)V

    move v0, v5

    goto :goto_1

    .line 86
    .end local v0    # "thumbInternal":Lcom/samsung/android/media/heif/CaptureSourceInternal;
    .end local v5    # "id":I
    .restart local v4    # "id":I
    :cond_2
    move v0, v4

    .line 93
    .end local v2    # "config":Lcom/samsung/android/media/heif/SemHeifConfig;
    .end local v3    # "masterInternal":Lcom/samsung/android/media/heif/CaptureSourceInternal;
    .end local v4    # "id":I
    .local v0, "id":I
    :goto_1
    goto :goto_0

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mCaptureNative:Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    invoke-virtual {v1, p2}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeStore(Lcom/samsung/android/media/heif/jni/AMessageJNI;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->deinitialize()V

    .line 105
    return-void
.end method

.method public whitelist convert(Lcom/samsung/android/media/heif/SemHeifConfig;Ljava/io/FileDescriptor;)I
    .locals 2
    .param p1, "config"    # Lcom/samsung/android/media/heif/SemHeifConfig;
    .param p2, "outputFd"    # Ljava/io/FileDescriptor;

    .line 37
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->convert(Ljava/util/List;ILjava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public whitelist convert(Lcom/samsung/android/media/heif/SemHeifConfig;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "config"    # Lcom/samsung/android/media/heif/SemHeifConfig;
    .param p2, "outputBuffer"    # Ljava/nio/ByteBuffer;

    .line 42
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->convert(Ljava/util/List;ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public whitelist convert(Ljava/util/List;ILjava/io/FileDescriptor;)I
    .locals 2
    .param p2, "coverIndex"    # I
    .param p3, "outputFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/heif/SemHeifConfig;",
            ">;I",
            "Ljava/io/FileDescriptor;",
            ")I"
        }
    .end annotation

    .line 47
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/heif/SemHeifConfig;>;"
    new-instance v0, Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;-><init>()V

    .line 48
    .local v0, "msg":Lcom/samsung/android/media/heif/jni/AMessageJNI;
    const-string/jumbo v1, "output-fd"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->convert(Ljava/util/List;Lcom/samsung/android/media/heif/jni/AMessageJNI;)I

    move-result v1

    return v1
.end method

.method public whitelist convert(Ljava/util/List;ILjava/nio/ByteBuffer;)I
    .locals 3
    .param p2, "coverIndex"    # I
    .param p3, "outputBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/heif/SemHeifConfig;",
            ">;I",
            "Ljava/nio/ByteBuffer;",
            ")I"
        }
    .end annotation

    .line 54
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/heif/SemHeifConfig;>;"
    new-instance v0, Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;-><init>()V

    .line 55
    .local v0, "msg":Lcom/samsung/android/media/heif/jni/AMessageJNI;
    const-string/jumbo v1, "output-buffer"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 56
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const-string/jumbo v2, "output-buffer-capacity"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->convert(Ljava/util/List;Lcom/samsung/android/media/heif/jni/AMessageJNI;)I

    move-result v1

    .line 59
    .local v1, "limit":I
    if-lez v1, :cond_0

    .line 60
    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 61
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    :cond_0
    return v1
.end method

.method public whitelist deinitialize()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mCaptureNative:Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    invoke-virtual {v0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeStop()I

    .line 100
    return-void
.end method

.method public whitelist initialize()V
    .locals 3

    .line 30
    new-instance v0, Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;-><init>()V

    .line 31
    .local v0, "msg":Lcom/samsung/android/media/heif/jni/AMessageJNI;
    iget v1, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mFormat:I

    const-string v2, "color-format"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    .line 32
    iget-object v1, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mCaptureNative:Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    invoke-virtual {v1, v0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeStart(Lcom/samsung/android/media/heif/jni/AMessageJNI;)I

    .line 33
    return-void
.end method
