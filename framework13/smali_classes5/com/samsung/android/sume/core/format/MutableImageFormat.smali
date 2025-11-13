.class public Lcom/samsung/android/sume/core/format/MutableImageFormat;
.super Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
.source "MutableImageFormat.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->TAG:Ljava/lang/String;

    return-void
.end method

.method varargs constructor blacklist <init>([Ljava/lang/Object;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;-><init>()V

    .line 20
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 23
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->config([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 25
    .local v1, "arg":Ljava/lang/Object;
    instance-of v3, v1, Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 26
    move-object v3, v1

    check-cast v3, Landroid/graphics/Rect;

    .line 27
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-nez v4, :cond_0

    .line 28
    new-instance v4, Lcom/samsung/android/sume/core/format/StapleMutableShape;

    const/4 v5, -0x1

    invoke-direct {v4, v2, v5, v5, v5}, Lcom/samsung/android/sume/core/format/StapleMutableShape;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 30
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 31
    .end local v3    # "rect":Landroid/graphics/Rect;
    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eqz v2, :cond_2

    .line 32
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v2, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 36
    .end local v1    # "arg":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 34
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v3, v0, v1

    const-class v1, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 39
    return-void
.end method

.method static synthetic blacklist lambda$getPlanes$0(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;I)V
    .locals 2
    .param p0, "planes"    # Ljava/util/List;
    .param p1, "depth"    # Lcom/samsung/android/sume/core/types/DataType;
    .param p2, "chromaShape"    # Lcom/samsung/android/sume/core/format/Shape;
    .param p3, "it"    # I

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 102
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x24a2ada1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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

    .line 109
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 111
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x24a2ada1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    return-object v0
.end method

.method public blacklist getPlanes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MutableImageFormat;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    if-ne v0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "planes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/format/MutableImageFormat;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->isYuv()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/DataType;->depth()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    .line 64
    .local v1, "depth":Lcom/samsung/android/sume/core/types/DataType;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    .line 65
    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v3

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v3

    shr-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->numberOfChromaChannels()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->toShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    .line 72
    .local v2, "chromaShape":Lcom/samsung/android/sume/core/format/Shape;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v4}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->numberOfPlanes()I

    move-result v3

    invoke-static {v4, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/format/MutableImageFormat$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/samsung/android/sume/core/format/MutableImageFormat$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;)V

    .line 76
    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 77
    .end local v1    # "depth":Lcom/samsung/android/sume/core/types/DataType;
    .end local v2    # "chromaShape":Lcom/samsung/android/sume/core/format/Shape;
    goto :goto_0

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "not support yet for planar except yuv format"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "obj"
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 90
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 95
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x24a2ada1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .locals 3
    .param p1, "colorFormat"    # Lcom/samsung/android/sume/core/types/ColorFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFormat"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->colorFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 50
    return-object p0
.end method

.method public bridge synthetic blacklist setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "colorFormat"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">()TV;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/format/ImageFormat;-><init>(Lcom/samsung/android/sume/core/format/MutableImageFormat;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
