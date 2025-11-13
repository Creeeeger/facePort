.class public interface abstract Lcom/samsung/android/sume/core/format/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# direct methods
.method public static varargs blacklist audioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/AudioFormat;
    .locals 1
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/AudioFormat;

    return-object v0
.end method

.method public static varargs blacklist imageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/ImageFormat;
    .locals 1
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/ImageFormat;

    return-object v0
.end method

.method public static varargs blacklist mutableAudioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableAudioFormat;
    .locals 1
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    return-object v0
.end method

.method public static varargs blacklist mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .locals 1
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    return-object v0
.end method

.method public static varargs blacklist mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1
    .param p0, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaType",
            "args"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->isImage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;-><init>()V

    .line 87
    .local v0, "format":Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 88
    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->config([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    return-object v0

    .line 82
    .end local v0    # "format":Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
    :cond_2
    :goto_0
    new-instance v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs blacklist of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 2
    .param p0, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaType",
            "args"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    .line 69
    .local v0, "mutableMediaFormat":Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    return-object v1
.end method

.method public static varargs blacklist scalarOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 2
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist bytePerSample()F
.end method

.method public abstract blacklist checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "clazz"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public varargs abstract blacklist containsAllOf([Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation
.end method

.method public varargs abstract blacklist containsAnyOf([Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation
.end method

.method public abstract blacklist contentToString()Ljava/lang/String;
.end method

.method public abstract blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation
.end method

.method public abstract blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

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

.method public blacklist getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;
    .locals 3

    .line 29
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

.method public abstract blacklist getCols()I
.end method

.method public abstract blacklist getDataType()Lcom/samsung/android/sume/core/types/DataType;
.end method

.method public blacklist getDimensionRect()Landroid/graphics/Rect;
    .locals 4

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public abstract blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
.end method

.method public blacklist getPlanes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getRows()I
.end method

.method public abstract blacklist getShape()Lcom/samsung/android/sume/core/format/Shape;
.end method

.method public abstract blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">()TV;"
        }
    .end annotation
.end method
