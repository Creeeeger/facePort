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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mCaptureNative:Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    iput p1, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mFormat:I

    iput p2, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mQuality:I

    return-void
.end method

.method private blacklist convert(Ljava/util/List;Lcom/samsung/android/media/heif/jni/AMessageJNI;)I
    .locals 7
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

    const/4 v0, 0x1

    const-string v1, "cover-count"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/heif/SemHeifConfig;

    nop

    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getMasterImage()Lcom/samsung/android/media/heif/SemInputImage;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/media/heif/CaptureSourceInternal$Parser;->makeInternalSource(Lcom/samsung/android/media/heif/SemInputImage;)Lcom/samsung/android/media/heif/CaptureSourceInternal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setImageRole(I)V

    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getExifData()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getExifData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setExifData(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getCameraInfo()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getCameraInfo()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setCameraInfo(Ljava/nio/ByteBuffer;)V

    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "cover%02d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->getMsg()Lcom/samsung/android/media/heif/jni/AMessageJNI;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setId(I)V

    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getThumbnailImage()Lcom/samsung/android/media/heif/SemInputImage;

    move-result-object v0

    if-eqz v0, :cond_2

    nop

    invoke-virtual {v2}, Lcom/samsung/android/media/heif/SemHeifConfig;->getThumbnailImage()Lcom/samsung/android/media/heif/SemInputImage;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/heif/CaptureSourceInternal$Parser;->makeInternalSource(Lcom/samsung/android/media/heif/SemInputImage;)Lcom/samsung/android/media/heif/CaptureSourceInternal;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setImageRole(I)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setId(I)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setThumbnail(Lcom/samsung/android/media/heif/CaptureSourceInternal;)V

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mCaptureNative:Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    invoke-virtual {v1, p2}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeStore(Lcom/samsung/android/media/heif/jni/AMessageJNI;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->deinitialize()V

    return-void
.end method

.method public whitelist convert(Lcom/samsung/android/media/heif/SemHeifConfig;Ljava/io/FileDescriptor;)I
    .locals 2

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->convert(Ljava/util/List;ILjava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public whitelist convert(Lcom/samsung/android/media/heif/SemHeifConfig;Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->convert(Ljava/util/List;ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public whitelist convert(Ljava/util/List;ILjava/io/FileDescriptor;)I
    .locals 2
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

    new-instance v0, Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;-><init>()V

    const-string v1, "output-fd"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->convert(Ljava/util/List;Lcom/samsung/android/media/heif/jni/AMessageJNI;)I

    move-result v1

    return v1
.end method

.method public whitelist convert(Ljava/util/List;ILjava/nio/ByteBuffer;)I
    .locals 3
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

    new-instance v0, Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;-><init>()V

    const-string v1, "output-buffer"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v1, "output-buffer-capacity"

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->convert(Ljava/util/List;Lcom/samsung/android/media/heif/jni/AMessageJNI;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return v1
.end method

.method public whitelist deinitialize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mCaptureNative:Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    invoke-virtual {v0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeStop()I

    return-void
.end method

.method public whitelist initialize()V
    .locals 3

    new-instance v0, Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;-><init>()V

    const-string v1, "color-format"

    iget v2, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mFormat:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;->mCaptureNative:Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;

    invoke-virtual {v1, v0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeStart(Lcom/samsung/android/media/heif/jni/AMessageJNI;)I

    return-void
.end method
