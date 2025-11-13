.class public Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;
.super Ljava/lang/Object;
.source "NativeUniImgpPlugin.java"

# interfaces
.implements Lcom/samsung/android/sume/core/plugin/Plugin;
.implements Lcom/samsung/android/sume/core/functional/Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/plugin/Plugin<",
        "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
        ">;",
        "Lcom/samsung/android/sume/core/functional/Operator;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist nativeContext:J

.field private blacklist persistentInputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

.field private blacklist persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

.field private blacklist preferredColorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    const-string v0, "sume_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeSetup()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeUniImgpPlugin: version= [core="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sume/core/Def;->getCoreVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/types/ColorFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/ImgpType;",
            ">;",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Lcom/samsung/android/sume/core/types/ColorFormat;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeUniImgpPlugin: version= [core="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sume/core/Def;->getCoreVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentInputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    iput-object p3, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->preferredColorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->preferredColorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v3, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE_HDR:Lcom/samsung/android/sume/core/types/ImgpType;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->isHDRSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "HDR is not supported!"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/ImgpType;->stringfy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->preferredColorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v3, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v2, v3, :cond_4

    const-string v2, "preferred-color-format"

    iget-object v3, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->preferredColorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeInit(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist adjustExif(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 8

    const-class v0, Lcom/samsung/android/sume/core/UniExifInterface;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/UniExifInterface;

    const-string v1, "PixelXDimension"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/UniExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "PixelYDimension"

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/sume/core/UniExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_0

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_0

    return-object p1

    :cond_0
    shr-int/lit8 v5, v3, 0x1

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ImageWidth"

    invoke-virtual {v0, v7, v5}, Lcom/samsung/android/sume/core/UniExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    shr-int/lit8 v5, v2, 0x1

    shl-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ImageLength"

    invoke-virtual {v0, v7, v5}, Lcom/samsung/android/sume/core/UniExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    shr-int/lit8 v5, v3, 0x1

    shl-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/sume/core/UniExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    shr-int/lit8 v1, v2, 0x1

    shl-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/sume/core/UniExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjust exif to... ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x1

    shl-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v2, 0x1

    shl-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/UniExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {v6, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->metadataBufferOf(ILcom/samsung/android/sume/core/UniExifInterface;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private blacklist bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;
    .locals 13

    const-string v0, "pad-size"

    const-string v1, "pad-type"

    const-string v2, "roi-on-block"

    const-string v3, "roi-on-image"

    const-string v4, "scan-lines"

    const-string v5, "row-offset"

    const-string v6, "scale"

    const-string v7, "exposure-value"

    const-string v8, "output-file"

    const-string v9, "input-file"

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v11, "cols"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "rows"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "data-type"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/sume/core/types/DataType;->stringfy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "color-format"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "color-space"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/sume/core/types/ColorSpace;->stringfy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "rotation"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRotation()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {p1, v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {p1, v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-interface {p1, v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {p1, v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-interface {p1, v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p1, v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sume/core/types/CodecType;->NONE:Lcom/samsung/android/sume/core/types/CodecType;

    if-eq v7, v8, :cond_3

    const-string v7, "codec-type"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/types/CodecType;->stringfy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v10, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCropRect()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v6, "crop-rect"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCropRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getSplitType()Lcom/samsung/android/sume/core/types/SplitType;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    if-eq v6, v7, :cond_6

    const-string v6, "split-type"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/sume/core/format/MediaFormat;->getSplitType()Lcom/samsung/android/sume/core/types/SplitType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/types/SplitType;->stringfy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getFlipType()Lcom/samsung/android/sume/core/types/FlipType;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sume/core/types/FlipType;->NONE:Lcom/samsung/android/sume/core/types/FlipType;

    if-eq v6, v7, :cond_7

    const-string v6, "flip-type"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/sume/core/format/MediaFormat;->getFlipType()Lcom/samsung/android/sume/core/types/FlipType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/types/FlipType;->stringfy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsAllExtra([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p1, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v10, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-interface {p1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v10, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_8
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsAllExtra([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/types/PadType;->NONE:Lcom/samsung/android/sume/core/types/PadType;

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/types/PadType;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/PadType;->stringfy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v10
.end method

.method private blacklist createJsonImgpOption(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "pad-type"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getSplitType()Lcom/samsung/android/sume/core/types/SplitType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    if-eq v2, v3, :cond_0

    const-string v2, "split-type"

    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getSplitType()Lcom/samsung/android/sume/core/types/SplitType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/SplitType;->stringfy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getFlipType()Lcom/samsung/android/sume/core/types/FlipType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/types/FlipType;->NONE:Lcom/samsung/android/sume/core/types/FlipType;

    if-eq v2, v3, :cond_1

    const-string v2, "flip-type"

    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getFlipType()Lcom/samsung/android/sume/core/types/FlipType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/FlipType;->stringfy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/types/PadType;->NONE:Lcom/samsung/android/sume/core/types/PadType;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/types/PadType;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/PadType;->stringfy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "prefer-fast"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private blacklist extractExtraFromJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lorg/json/JSONObject;)V
    .locals 26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "offset-sdr"

    const-string v3, "offset-hdr"

    const-string v4, "gamma"

    const-string v5, "min-hdr-capacity"

    const-string v6, "max-hdr-capacity"

    const-string v7, "min-content-boost"

    const-string v8, "max-content-boost"

    const-string v9, "roi-on-image"

    const-string v10, "roi-on-block"

    const-string v11, "scan-lines"

    const-string v12, "row-offset"

    :try_start_0
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v1, v12, v13}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ","

    const-string v13, ""

    const-string v14, "[^0-9|,]"

    if-eqz v11, :cond_2

    :try_start_1
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v11

    new-instance v11, Landroid/graphics/Rect;

    const/16 v19, 0x0

    aget-object v21, v15, v19

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v18, 0x1

    aget-object v21, v15, v18

    move-object/from16 v23, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v17, 0x2

    aget-object v21, v15, v17

    move-object/from16 v24, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v16, 0x3

    aget-object v21, v15, v16

    move-object/from16 v25, v15

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v11, v0, v3, v4, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v10, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    :goto_0
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    aget-object v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x3

    aget-object v13, v3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v9, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v8, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get object from bufferObject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist getNativeSupportBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Landroid/media/Image;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Landroid/graphics/Bitmap;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2
    sget-object v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    const-string v2, "convert as default... (ByteBuffer)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_0
    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isHDRSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_PHOTOHDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isHeifSupported(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/Shape;)Z
    .locals 4

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x200

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/Shape;->getDimension()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/Shape;->getCols()I

    move-result v3

    if-lt v3, v1, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/Shape;->getRows()I

    move-result v3

    if-lt v3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v3

    if-lt v3, v1, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v3

    if-lt v3, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    return v2
.end method

.method static synthetic blacklist lambda$bindToFixture$0()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->NATIVE_UNIIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;)V

    return-object v0
.end method

.method private blacklist makeBufferFromMap(Ljava/util/HashMap;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "output-buffer"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "output-data"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->makeImageBuffer(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    :cond_0
    const-string v3, "block-num"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget-object v5, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "block num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;Ljava/util/HashMap;)V

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Ljava/util/List;

    :cond_1
    const-string v5, "exif"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->metadataBufferOf(ILjava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v5, "icc"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->metadataBufferOf(ILjava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-static {v0, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v4

    return-object v4

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v4

    return-object v4

    :cond_6
    return-object v0
.end method

.method private blacklist makeImageBuffer(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 9

    const-string v0, "color-space"

    const-string v1, "color-format"

    const-string v2, "data-type"

    const-string v3, "rows"

    const-string v4, "cols"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_0
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_1
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sume/core/types/DataType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_2
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_3
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/types/ColorSpace;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_4
    instance-of v0, p2, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v5, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_5
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v5, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    const-string v1, "do nothing to obuf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v6, :cond_7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->extractExtraFromJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    nop

    return-object v6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private native blacklist nativeCreateGainmap(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method private native blacklist nativeCrop(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I
.end method

.method private native blacklist nativeCvtColor(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I
.end method

.method private native blacklist nativeCvtData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I
.end method

.method private native blacklist nativeCvtGamutV2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method private native blacklist nativeDecode(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method private native blacklist nativeEncode(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method private native blacklist nativeEncodeHDR(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method private native blacklist nativeFlipV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method private native blacklist nativeInit(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native blacklist nativeMeasureQuality(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method private native blacklist nativeMerge(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method private native blacklist nativeRelease()I
.end method

.method private native blacklist nativeResize(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I
.end method

.method private native blacklist nativeRotate(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I
.end method

.method private native blacklist nativeRun(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native blacklist nativeSetup()V
.end method

.method private native blacklist nativeSplit(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method private blacklist toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public blacklist bindToFixture(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setDescriptorLoader(Lcom/samsung/android/sume/core/functional/DescriptorLoader;)V

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_GAMUT:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_HDR2SDR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->QUALITY_MEASURE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->DECODE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE_HDR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->FLIP:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CREATE_GAINMAP:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    return-void
.end method

.method public bridge synthetic blacklist bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bindToFixture(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    return-void
.end method

.method public blacklist createGainmap(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v4

    const-class v5, Landroid/graphics/Bitmap;

    move-object/from16 v6, p1

    invoke-interface {v6, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    const-string v7, "jbitmap"

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v7, v8, v9, v2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeCreateGainmap(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v7, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-static {v8}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    invoke-direct {v0, v2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->makeBufferFromMap(Ljava/util/HashMap;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v9, Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    nop

    sget-object v10, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    const-string v11, "create gain-map"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/graphics/Gainmap;

    invoke-direct {v10, v9}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    const-string v11, "max-content-boost"

    invoke-interface {v8, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const-string v12, "min-content-boost"

    invoke-interface {v8, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const-string v13, "gamma"

    invoke-interface {v8, v13}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const-string v14, "offset-hdr"

    invoke-interface {v8, v14}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const-string v15, "offset-sdr"

    invoke-interface {v8, v15}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const-string v0, "max-hdr-capacity"

    invoke-interface {v8, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object/from16 v16, v2

    const-string v2, "min-hdr-capacity"

    invoke-interface {v8, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    float-to-double v3, v11

    move-object/from16 v19, v7

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v8

    move-object/from16 v20, v9

    float-to-double v8, v12

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v10, v3, v3, v3}, Landroid/graphics/Gainmap;->setRatioMax(FFF)V

    invoke-virtual {v10, v8, v8, v8}, Landroid/graphics/Gainmap;->setRatioMin(FFF)V

    invoke-virtual {v10, v13, v13, v13}, Landroid/graphics/Gainmap;->setGamma(FFF)V

    invoke-virtual {v10, v14, v14, v14}, Landroid/graphics/Gainmap;->setEpsilonHdr(FFF)V

    invoke-virtual {v10, v15, v15, v15}, Landroid/graphics/Gainmap;->setEpsilonSdr(FFF)V

    move v9, v3

    move-object/from16 v21, v4

    float-to-double v3, v0

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v10, v3}, Landroid/graphics/Gainmap;->setDisplayRatioForFullHdr(F)V

    float-to-double v3, v2

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v10, v3}, Landroid/graphics/Gainmap;->setMinDisplayRatioForHdrTransition(F)V

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object v1
.end method

.method public blacklist crop(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object p2

    :cond_0
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRotation()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRotation(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v3

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "crop-rect"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeCrop(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v4, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    return-object p2
.end method

.method public blacklist cvtColor(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object p2

    :cond_0
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeCvtColor(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    return-object p2
.end method

.method public blacklist cvtData(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object p2

    :cond_0
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeCvtData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    return-object p2
.end method

.method public blacklist cvtGamut(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ibuf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obuf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/types/ColorSpace;->DISPLAY_P3:Lcom/samsung/android/sume/core/types/ColorSpace;

    const-string v4, "not supported colorSpace. force"

    if-ne v1, v3, :cond_1

    move-object v3, p1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to display-p3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sume/core/types/ColorSpace;->DISPLAY_P3:Lcom/samsung/android/sume/core/types/ColorSpace;

    invoke-interface {v3, v5}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v5

    move-object v3, v5

    :goto_0
    sget-object v5, Lcom/samsung/android/sume/core/types/ColorSpace;->BT709_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

    if-ne v2, v5, :cond_2

    move-object v4, p2

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to bt709-fr"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sume/core/types/ColorSpace;->BT709_FR:Lcom/samsung/android/sume/core/types/ColorSpace;

    invoke-interface {v4, v5}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v5

    move-object v4, v5

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v6

    nop

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->getNativeSupportBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->getNativeSupportBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeCvtGamutV2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v7, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    return-object p2
.end method

.method public blacklist cvtHdr2Sdr(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    return-object p2
.end method

.method public blacklist decode(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/io/FileDescriptor;

    const-string v5, "infile-descriptor"

    if-ne v3, v4, :cond_0

    const-class v3, Ljava/io/FileDescriptor;

    invoke-interface {p1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    const-string v4, "file-descriptor"

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeDecode(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v3, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->makeBufferFromMap(Ljava/util/HashMap;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v4}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_3
    return-object p2
.end method

.method public blacklist encode(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-string v0, "file-descriptor"

    const-string v1, "output-file"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2, v2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Ljava/util/HashMap;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-class v3, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v5

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "outfile-descriptor"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/CodecType;->NONE:Lcom/samsung/android/sume/core/types/CodecType;

    if-eq v0, v1, :cond_2

    const-string v0, "codec-type"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/CodecType;->stringfy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeEncode(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    return-object p2
.end method

.method public blacklist encodeHDR(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-string v0, "file-descriptor"

    const-string v1, "exposure-value"

    const-string v2, "output-file"

    invoke-direct {p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->isHDRSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda17;

    invoke-direct {v5, p0, p2, v3}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Ljava/util/HashMap;)V

    invoke-interface {v4, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-class v4, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v6

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "outfile-descriptor"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/core/types/CodecType;->NONE:Lcom/samsung/android/sume/core/types/CodecType;

    if-eq v0, v2, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/core/types/CodecType;->HEIF:Lcom/samsung/android/sume/core/types/CodecType;

    if-ne v0, v2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->isHeifSupported(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/Shape;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "encode size must bigger than [512x512]"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const-string v0, "codec-type"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/CodecType;->stringfy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1, v3}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeEncodeHDR(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v0, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    return-object p2

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HDR is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist flip(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ibuf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obuf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->getNativeSupportBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getFlipType()Lcom/samsung/android/sume/core/types/FlipType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setFlipType(Lcom/samsung/android/sume/core/types/FlipType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->getNativeSupportBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->createJsonImgpOption(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v5, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeFlipV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    return-object p2
.end method

.method synthetic blacklist lambda$encode$1$com-samsung-android-sume-core-plugin-NativeUniImgpPlugin(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Ljava/util/HashMap;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 3

    invoke-interface {p3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->adjustExif(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    const-class v2, Ljava/nio/ByteBuffer;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "icc"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p3, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unused buffer is given for encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method synthetic blacklist lambda$encodeHDR$2$com-samsung-android-sume-core-plugin-NativeUniImgpPlugin(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Ljava/util/HashMap;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 3

    invoke-interface {p3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->adjustExif(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    const-class v2, Ljava/nio/ByteBuffer;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "icc"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p3, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {p3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "gain-map"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gain-map-format"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p3, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic blacklist lambda$makeBufferFromMap$4$com-samsung-android-sume-core-plugin-NativeUniImgpPlugin(Ljava/util/HashMap;I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-buffer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->makeImageBuffer(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$run$3$com-samsung-android-sume-core-plugin-NativeUniImgpPlugin(Ljava/util/HashMap;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 4

    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    iget-object v2, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->preferredColorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->adjustExif(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    :cond_1
    const-class v2, Ljava/nio/ByteBuffer;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "icc"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "gain-map"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string v2, "gain-map-format"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    const-string v0, "thumbnail"

    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public blacklist measureQuality(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "ibuf size is not 2"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "quality-metric"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    const-string v1, "quality-metric is not given. force to PSNR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const-class v4, Ljava/nio/ByteBuffer;

    invoke-interface {v1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const-class v5, Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0, v4}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0, v4}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v6, v1

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeMeasureQuality(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/HashMap;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v4, v5, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    const-string v2, "quality-value"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    sget-object v5, Lcom/samsung/android/sume/core/types/DataType;->F32C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v3, v3}, Lcom/samsung/android/sume/core/format/Shape;->of(II)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    filled-new-array {v5, v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->scalaOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object p2

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "currently only PSNR is supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist merge(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->setFormat(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    :cond_2
    sget-object v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v9

    :try_start_0
    const-string v1, "block-num"

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v10, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "block"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-format"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-data"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Ljava/nio/ByteBuffer;

    invoke-interface {v1, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v5}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->createJsonImgpOption(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeMerge(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v1, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->makeBufferFromMap(Ljava/util/HashMap;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_5
    return-object p2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist readCompressedImage(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 9

    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read compressed image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "heic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "not supported yet"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->compressedImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v4

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v5

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne v6, v7, :cond_2

    sget-object v6, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-interface {v5, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_2
    sget-object v6, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decode format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v6

    move-object v1, v6

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->decode(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method public blacklist release()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-direct {p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeRelease()I

    iput-wide v2, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist resize(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    const-string v3, "scale"

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-interface {v1, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-interface {v1, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeResize(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    return-object p2
.end method

.method public blacklist rotate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRotation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object p2

    :cond_0
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRotation()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRotation(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeRotate(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    return-object p2
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "scale"

    :try_start_0
    iget-object v1, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    const-string v2, "encode-hdr"

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->isHDRSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HDR is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-wide v1, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1c

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->flag()I

    move-result v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v1, v11, :cond_2

    move v1, v11

    goto :goto_1

    :cond_2
    move v1, v10

    :goto_1
    move v12, v1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->flag()I

    move-result v1

    if-ne v1, v11, :cond_3

    move v1, v11

    goto :goto_2

    :cond_3
    move v1, v10

    :goto_2
    move v13, v1

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {v8, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v13, :cond_15

    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    if-eqz v12, :cond_6

    if-eqz v13, :cond_5

    iget-object v2, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentInputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    sget-object v6, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v2, v6, :cond_6

    iget-object v2, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentInputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    iget-object v6, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentInputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/types/ColorFormat;->getChannels()I

    move-result v6

    invoke-static {v2, v6}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    iget-object v6, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/types/ColorFormat;->getChannels()I

    move-result v6

    invoke-static {v2, v6}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_6
    :goto_3
    if-eqz v13, :cond_7

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_4

    :cond_7
    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :goto_4
    iget-object v2, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_8
    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_9
    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCropRect(Landroid/graphics/Rect;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_a
    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRotation()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRotation()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRotation(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_b
    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getFlipType()Lcom/samsung/android/sume/core/types/FlipType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/core/types/FlipType;->NONE:Lcom/samsung/android/sume/core/types/FlipType;

    if-eq v0, v2, :cond_c

    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getFlipType()Lcom/samsung/android/sume/core/types/FlipType;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setFlipType(Lcom/samsung/android/sume/core/types/FlipType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_c
    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v0, v2, :cond_d

    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_d
    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorSpace;->NONE:Lcom/samsung/android/sume/core/types/ColorSpace;

    if-eq v0, v2, :cond_e

    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_e
    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/core/types/CodecType;->NONE:Lcom/samsung/android/sume/core/types/CodecType;

    if-eq v0, v2, :cond_11

    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/core/types/CodecType;->HEIF:Lcom/samsung/android/sume/core/types/CodecType;

    if-ne v0, v2, :cond_10

    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->isHeifSupported(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/Shape;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "encode size must bigger than [512x512]"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_5
    iget-object v0, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->persistentOutputFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCodecType()Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCodecType(Lcom/samsung/android/sume/core/types/CodecType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_11
    if-eqz v13, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    goto :goto_7

    :cond_12
    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v14

    cmp-long v0, v14, v4

    if-eqz v0, :cond_14

    if-eqz v12, :cond_13

    goto :goto_6

    :cond_13
    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    goto :goto_7

    :cond_14
    :goto_6
    invoke-virtual {v9, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->setFormat(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    :cond_15
    :goto_7
    if-nez v13, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_16
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_9

    :cond_17
    :goto_8
    const/4 v0, 0x0

    :goto_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v14, v1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v15, v1

    invoke-direct {v7, v9}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v16, v1

    if-eqz v12, :cond_18

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/io/FileDescriptor;

    if-ne v1, v2, :cond_18

    const-string v1, "infile-descriptor"

    const-class v2, Ljava/io/FileDescriptor;

    invoke-interface {v8, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    if-eqz v13, :cond_19

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/io/FileDescriptor;

    if-ne v1, v2, :cond_19

    const-string v1, "outfile-descriptor"

    const-class v2, Ljava/io/FileDescriptor;

    invoke-virtual {v9, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda18;

    invoke-direct {v2, v7, v14}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;Ljava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v5, v0

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeRun(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/HashMap;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v1, v2, :cond_1a

    move v10, v11

    :cond_1a
    invoke-static {v10}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    if-nez v0, :cond_1b

    invoke-direct {v7, v14}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->makeBufferFromMap(Ljava/util/HashMap;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v9, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1b
    nop

    iget-object v2, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v9

    :cond_1c
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, v7, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist split(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->toDirectByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->bufferToJson(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->createJsonImgpOption(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v4, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->nativeSplit(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sume/core/types/Status;->from(I)Lcom/samsung/android/sume/core/types/Status;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/Status;->OK:Lcom/samsung/android/sume/core/types/Status;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->makeBufferFromMap(Ljava/util/HashMap;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    return-object p2
.end method

.method public blacklist writeCompressedImage(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "encode-shape"

    sget-object v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write compressed image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/core/types/ColorFormat;->NV12:Lcom/samsung/android/sume/core/types/ColorFormat;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableCompressedImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v4

    const-string v5, "file-descriptor"

    invoke-interface {v4, v5, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/sume/core/types/CodecType;->JPEG_QURAM:Lcom/samsung/android/sume/core/types/CodecType;

    invoke-interface {v4, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCodecType(Lcom/samsung/android/sume/core/types/CodecType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_0
    const-string v6, "heic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/sume/core/types/CodecType;->HEIF:Lcom/samsung/android/sume/core/types/CodecType;

    invoke-interface {v4, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCodecType(Lcom/samsung/android/sume/core/types/CodecType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;

    invoke-interface {v4, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_1
    invoke-static {v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    const-string v7, "encode-hdr"

    invoke-interface {v6, v7}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->encodeHDR(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->encode(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v6, "not supported yet"

    invoke-direct {v0, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    sget-object v0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "succes to save"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
