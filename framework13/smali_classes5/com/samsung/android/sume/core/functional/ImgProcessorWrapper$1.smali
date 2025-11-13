.class Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;
.super Ljava/util/HashMap;
.source "ImgProcessorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/sume/core/types/ImgpType;",
        "Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;)V
    .locals 2
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getRows()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getCols()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-void
.end method

.method static synthetic blacklist lambda$new$1(Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;)V
    .locals 1
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->getCroppedShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-void
.end method

.method static synthetic blacklist lambda$new$2(Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;)V
    .locals 3
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 31
    const-string/jumbo v0, "rotation-degrees"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/ImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    .local v0, "orientation":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v1

    .line 34
    .local v1, "tmp":I
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 35
    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 37
    .end local v1    # "tmp":I
    :cond_1
    return-void
.end method

.method static synthetic blacklist lambda$new$3(Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;)V
    .locals 2
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/ColorFormat;->getChannels()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->getChannels()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->depth()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/ColorFormat;->getChannels()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 42
    return-void
.end method

.method static synthetic blacklist lambda$new$4(Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;)V
    .locals 1
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 45
    return-void
.end method

.method static synthetic blacklist lambda$new$5(Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;)V
    .locals 3
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    .local v0, "dim":I
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getRows()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getCols()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 52
    :cond_0
    const-string/jumbo v1, "split-type"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/format/ImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/types/SplitType;

    .line 53
    .local v1, "splitType":Lcom/samsung/android/sume/core/types/SplitType;
    sget-object v2, Lcom/samsung/android/sume/core/types/SplitType;->ALPHA:Lcom/samsung/android/sume/core/types/SplitType;

    if-ne v1, v2, :cond_1

    .line 54
    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->GRAY:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 56
    :cond_1
    return-void
.end method

.method static synthetic blacklist lambda$new$6(Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;)V
    .locals 1
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 59
    return-void
.end method
