.class public interface abstract Lcom/samsung/android/sume/core/format/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/format/MediaFormat$MetadataKey;
    }
.end annotation


# static fields
.field public static final blacklist EXIF:I = 0x1

.field public static final blacklist GAINMAP:I = 0x3

.field public static final blacklist ICC:I = 0x2


# direct methods
.method public static varargs blacklist audioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist compressedAudioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist compressedImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist compressedVideoOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist gainMapOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableGainMapOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPlanes(Lcom/samsung/android/sume/core/format/MediaFormat;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isImage()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    if-eq v0, v1, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->isYuv()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/DataType;->depth()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v3

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v3

    shr-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->numberOfChromaChannels()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->toShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-static {v1, v4}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v3

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->numberOfPlanes()I

    move-result v3

    invoke-static {v4, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;)V

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    nop

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "not support yet for planar except yuv format"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/samsung/android/sume/core/format/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat$1;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not support non data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not support non image format"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist imageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic blacklist lambda$getPlanes$0(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;I)V
    .locals 1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist lambda$getPlanes$1(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    instance-of v0, p0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static varargs blacklist metaOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->U8C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableAudioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableCompressedAudioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableCompressedImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableCompressedVideoOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist mutableEmptyOf()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;-><init>()V

    return-object v0
.end method

.method public static varargs blacklist mutableGainMapOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableMetaOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "gain-map"

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableMetaOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->U8C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;-><init>(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs blacklist mutableScalaOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableThumbnailOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    const/16 v1, 0x180

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/samsung/android/sume/core/format/Shape;->of(II)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist mutableVideoOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist scalarOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist thumbnailOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    const/16 v1, 0x180

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/samsung/android/sume/core/format/Shape;->of(II)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist videoOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist bytePerPixel()F
.end method

.method public abstract blacklist bytePerSample()F
.end method

.method public abstract blacklist checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist contains(Ljava/lang/String;)Z
.end method

.method public varargs abstract blacklist containsAllOf([Ljava/lang/String;)Z
.end method

.method public varargs abstract blacklist containsAnyOf([Ljava/lang/String;)Z
.end method

.method public abstract blacklist contentToString()Ljava/lang/String;
.end method

.method public abstract blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public blacklist dimension()I
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public abstract blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract blacklist get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist getBatch()I
.end method

.method public abstract blacklist getChannels()I
.end method

.method public abstract blacklist getCodecType()Lcom/samsung/android/sume/core/types/CodecType;
.end method

.method public blacklist getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getColorSpace()Lcom/samsung/android/sume/core/types/ColorSpace;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not suppor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist getCols()I
.end method

.method public abstract blacklist getCropRect()Landroid/graphics/Rect;
.end method

.method public abstract blacklist getDataType()Lcom/samsung/android/sume/core/types/DataType;
.end method

.method public blacklist getDimensionRect()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public abstract blacklist getFlipType()Lcom/samsung/android/sume/core/types/FlipType;
.end method

.method public abstract blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
.end method

.method public abstract blacklist getPlanesFormat()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getRotation()I
.end method

.method public abstract blacklist getRows()I
.end method

.method public abstract blacklist getShape()Lcom/samsung/android/sume/core/format/Shape;
.end method

.method public abstract blacklist getSplitType()Lcom/samsung/android/sume/core/types/SplitType;
.end method

.method public abstract blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract blacklist size()J
.end method

.method public abstract blacklist toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public blacklist total()I
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->dimension()I

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getChannels()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
