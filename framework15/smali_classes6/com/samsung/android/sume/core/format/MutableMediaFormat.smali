.class public interface abstract Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.super Ljava/lang/Object;
.source "MutableMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MediaFormat;
.implements Lcom/samsung/android/sume/core/format/Copyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/format/MediaFormat;",
        "Lcom/samsung/android/sume/core/format/Copyable<",
        "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
        ">;"
    }
.end annotation


# direct methods
.method public static varargs blacklist of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setChannels(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setCodecType(Lcom/samsung/android/sume/core/types/CodecType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public blacklist setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setCropRect(Landroid/graphics/Rect;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public blacklist setDimension(II)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 0

    invoke-interface {p0, p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {p0, p2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object p0
.end method

.method public abstract blacklist setFlipType(Lcom/samsung/android/sume/core/types/FlipType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setRotation(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public abstract blacklist setSplitType(Lcom/samsung/android/sume/core/types/SplitType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
.end method

.method public blacklist toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
