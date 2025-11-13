.class public Lcom/samsung/android/sume/core/plugin/SimgpPlugin;
.super Ljava/lang/Object;
.source "SimgpPlugin.java"

# interfaces
.implements Lcom/samsung/android/sume/core/plugin/Plugin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/plugin/Plugin<",
        "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$Jp6fjua6x02WSnHcT_t5-ygwluY(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->resize(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$W-pO5zD2F6XB3Mfc5uMFJLQFyGA(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->cvtColor(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$i9IF0wZP2tmTrXEEQiZUQfuf7ZY(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->rotate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->TAG:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "sume_mediabuffer_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist cvtColor(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 6
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "format"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to simgp cvtColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 30
    .local v0, "outputFormat":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 32
    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    .line 34
    .local v1, "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v2, "jsonParams":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "cols"

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v3, "rows"

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v3, "src-color-format"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v3, "dst-color-format"

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    nop

    .line 45
    const-class v3, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    const-class v4, Ljava/nio/ByteBuffer;

    invoke-interface {v1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->nativeCvtColor(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/lang/String;)I

    .line 47
    return-object v1

    .line 40
    :catch_0
    move-exception v3

    .line 41
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static synthetic blacklist lambda$bindToFixture$0()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 2

    .line 57
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->SIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;)V

    return-object v0
.end method

.method private static native blacklist nativeCvtColor(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/lang/String;)I
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

.method private static native blacklist nativeResize(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/lang/String;)I
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

.method private static native blacklist nativeRotate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/lang/String;)I
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

.method private blacklist resize(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "format"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to simgp resize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist rotate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "format"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to simgp rotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist bindToFixture(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V
    .locals 2
    .param p1, "fixture"    # Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixture"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setDescriptorLoader(Lcom/samsung/android/sume/core/functional/DescriptorLoader;)V

    .line 58
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .line 59
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .line 60
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .line 62
    return-void
.end method

.method public bridge synthetic blacklist bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fixture"
        }
    .end annotation

    .line 17
    check-cast p1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->bindToFixture(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    return-void
.end method
