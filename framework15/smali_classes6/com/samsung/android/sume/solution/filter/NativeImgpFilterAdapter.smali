.class public Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;
.super Ljava/lang/Object;
.source "NativeImgpFilterAdapter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/Operator;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist plugin:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/types/ColorFormat;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outputFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred-ColorFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->DECODE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/sume/core/functional/OperatorMap;->inferOperations(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;)Ljava/util/List;

    :cond_1
    const-string v1, "scale"

    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p3, :cond_5

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq p3, v1, :cond_5

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    if-eq v1, v2, :cond_6

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v1, v2, :cond_6

    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorSpace;->NONE:Lcom/samsung/android/sume/core/types/ColorSpace;

    if-eq v1, v2, :cond_7

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_GAMUT:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRotation()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getFlipType()Lcom/samsung/android/sume/core/types/FlipType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/FlipType;->NONE:Lcom/samsung/android/sume/core/types/FlipType;

    if-eq v1, v2, :cond_9

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->FLIP:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v1, v2, :cond_b

    const-string v1, "codec-type"

    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "encode-hdr"

    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE_HDR:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_0
    sget-object v1, Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/types/ColorFormat;)V

    iput-object v1, p0, Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;->plugin:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    return-void
.end method


# virtual methods
.method public blacklist release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;->plugin:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->release()V

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/solution/filter/NativeImgpFilterAdapter;->plugin:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method
