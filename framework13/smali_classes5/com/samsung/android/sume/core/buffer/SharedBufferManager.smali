.class public final Lcom/samsung/android/sume/core/buffer/SharedBufferManager;
.super Ljava/lang/Object;
.source "SharedBufferManager.java"


# static fields
.field private static volatile blacklist sInstance:Lcom/samsung/android/sume/core/buffer/SharedBufferManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 134
    const-string/jumbo v0, "sume_mediabuffer_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->initBufferExtensions()V

    .line 35
    return-void
.end method

.method private blacklist CreateForAudio(Lcom/samsung/android/sume/core/format/MutableAudioFormat;)Landroid/hardware/HardwareBuffer;
    .locals 8
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MutableAudioFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 96
    nop

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->size()J

    move-result-wide v0

    long-to-int v2, v0

    .line 96
    const/4 v3, 0x1

    const/16 v4, 0x21

    const/4 v5, 0x1

    const-wide/16 v6, 0x33

    invoke-static/range {v2 .. v7}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createForImage(Lcom/samsung/android/sume/core/format/ImageFormat;)Landroid/hardware/HardwareBuffer;
    .locals 8
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$1;->$SwitchMap$com$samsung$android$sume$core$types$ColorFormat:[I

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 85
    nop

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->size()J

    move-result-wide v0

    long-to-int v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x21

    const/4 v5, 0x1

    const-wide/16 v6, 0x33

    .line 85
    invoke-static/range {v2 .. v7}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/samsung/android/sume/core/buffer/SharedBufferManager;
    .locals 2

    .line 24
    sget-object v0, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->sInstance:Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->sInstance:Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->sInstance:Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->sInstance:Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    return-object v0
.end method

.method private blacklist initBufferExtensions()V
    .locals 5

    .line 38
    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;-><init>()V

    .line 39
    .local v0, "registry":Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/hardware/HardwareBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/SharedBufferManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;

    move-result-object v1

    const-class v2, Landroid/hardware/HardwareBuffer;

    const-class v3, Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda1;-><init>()V

    .line 57
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;

    move-result-object v1

    const-class v2, Landroid/hardware/HardwareBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda2;-><init>()V

    .line 75
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->addBufferStatusLogger(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;

    move-result-object v1

    const-class v2, Landroid/hardware/HardwareBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda3;-><init>()V

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->addRelease(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->register()V

    .line 79
    return-void
.end method

.method static synthetic blacklist lambda$initBufferExtensions$1(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/hardware/HardwareBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 58
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, "dstBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v1, "jsonParams":Lorg/json/JSONObject;
    const-string v2, "cols"

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/Shape;->getCols()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v2, "rows"

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/Shape;->getRows()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v2, "size"

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    instance-of v2, p0, Lcom/samsung/android/sume/core/format/ImageFormat;

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "color-format"

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->nativeHw2ByteBuffer(Landroid/hardware/HardwareBuffer;Ljava/nio/Buffer;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    nop

    .end local v1    # "jsonParams":Lorg/json/JSONObject;
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$initBufferExtensions$2(Landroid/hardware/HardwareBuffer;)Ljava/lang/String;
    .locals 4
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[w=%d, h=%d, fmt=%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 75
    invoke-static {v0, v1}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist nativeByte2HwBuffer(Ljava/nio/Buffer;Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "jsonParams"
        }
    .end annotation
.end method

.method private static native blacklist nativeHw2ByteBuffer(Landroid/hardware/HardwareBuffer;Ljava/nio/Buffer;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "jsonParams"
        }
    .end annotation
.end method

.method private static native blacklist nativeLockHwBuffer(Landroid/hardware/HardwareBuffer;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation
.end method

.method private static native blacklist nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation
.end method


# virtual methods
.method public blacklist copyTo(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Landroid/hardware/HardwareBuffer;)V
    .locals 4
    .param p1, "src"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "dst"    # Landroid/hardware/HardwareBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dst"
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v0, "jsonParams":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "cols"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v1, "rows"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v1, "size"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/sume/core/format/ImageFormat;

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "color-format"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_0
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/Buffer;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->nativeByte2HwBuffer(Ljava/nio/Buffer;Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    nop

    .line 126
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;
    .locals 1
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 107
    instance-of v0, p1, Lcom/samsung/android/sume/core/format/ImageFormat;

    if-eqz v0, :cond_0

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->createForImage(Lcom/samsung/android/sume/core/format/ImageFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->CreateForAudio(Lcom/samsung/android/sume/core/format/MutableAudioFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$initBufferExtensions$0$com-samsung-android-sume-core-buffer-SharedBufferManager(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Landroid/hardware/HardwareBuffer;
    .locals 5
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "srcBuffer"    # Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 44
    .local v0, "dstBuffer":Landroid/hardware/HardwareBuffer;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v1, "jsonParams":Lorg/json/JSONObject;
    const-string v2, "cols"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v2, "rows"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string/jumbo v2, "size"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    instance-of v2, p1, Lcom/samsung/android/sume/core/format/ImageFormat;

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "color-format"

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->nativeByte2HwBuffer(Ljava/nio/Buffer;Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    nop

    .end local v1    # "jsonParams":Lorg/json/JSONObject;
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method
