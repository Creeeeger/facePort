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
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->TAG:Ljava/lang/String;

    const-string v0, "sume_mediabuffer_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist cvtColor(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to simgp cvtColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cols"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rows"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "src-color-format"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dst-color-format"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const-class v2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->nativeCvtColor(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/lang/String;)I

    return-object p2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic blacklist lambda$bindToFixture$0()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->SIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;)V

    return-object v0
.end method

.method private static native blacklist nativeCvtColor(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/lang/String;)I
.end method

.method private static native blacklist nativeResize(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/lang/String;)I
.end method

.method private static native blacklist nativeRotate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/lang/String;)I
.end method

.method private blacklist resize(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to simgp resize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->copy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    const-string v2, "scale"

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "src-cols"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "src-rows"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dst-cols"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getCols()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dst-rows"

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getRows()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "color-format"

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/ColorFormat;->stringfy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const-class v2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->nativeResize(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/lang/String;)I

    return-object p2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist rotate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to simgp rotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist bindToFixture(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setDescriptorLoader(Lcom/samsung/android/sume/core/functional/DescriptorLoader;)V

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    return-void
.end method

.method public bridge synthetic blacklist bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->bindToFixture(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    return-void
.end method

.method synthetic blacklist lambda$bindToFixture$1$com-samsung-android-sume-core-plugin-SimgpPlugin(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->resize(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$bindToFixture$2$com-samsung-android-sume-core-plugin-SimgpPlugin(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->rotate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$bindToFixture$3$com-samsung-android-sume-core-plugin-SimgpPlugin(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->cvtColor(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method
