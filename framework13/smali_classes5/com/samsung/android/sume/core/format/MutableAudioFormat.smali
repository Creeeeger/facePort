.class public Lcom/samsung/android/sume/core/format/MutableAudioFormat;
.super Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
.source "MutableAudioFormat.java"


# direct methods
.method varargs constructor blacklist <init>([Ljava/lang/Object;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;-><init>()V

    .line 8
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->config([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    .local v1, "arg":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 11
    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 12
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2, v3, v3}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 16
    .end local v1    # "arg":Ljava/lang/Object;
    goto :goto_0

    .line 14
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">()TV;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/samsung/android/sume/core/format/AudioFormat;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/format/AudioFormat;-><init>(Lcom/samsung/android/sume/core/format/MutableAudioFormat;)V

    return-object v0
.end method
