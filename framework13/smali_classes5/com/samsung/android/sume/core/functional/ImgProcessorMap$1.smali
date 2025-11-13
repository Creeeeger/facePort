.class Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;
.super Ljava/util/HashMap;
.source "ImgProcessorMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/functional/ImgProcessorMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/sume/core/types/ImgpType;",
        "Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 25
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/format/ImageFormat;Ljava/lang/String;)Lcom/samsung/android/sume/core/types/SplitType;
    .locals 1
    .param p0, "output"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p1, "e"    # Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/core/format/ImageFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Lcom/samsung/android/sume/core/types/SplitType;)Z
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/SplitType;

    .line 28
    sget-object v0, Lcom/samsung/android/sume/core/types/SplitType;->TILE:Lcom/samsung/android/sume/core/types/SplitType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$new$2(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F
    .locals 5
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 26
    const-string/jumbo v0, "split-type"

    const-string v1, "merge-type"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/format/ImageFormat;)V

    .line 27
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1$$ExternalSyntheticLambda1;-><init>()V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 30
    .local v0, "isNotTiled":Z
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 32
    .local v1, "outShapeIsGiven":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getCols()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getRows()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;->compute(Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/format/Shape;)F

    move-result v2

    return v2

    .line 35
    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    return v2
.end method

.method static synthetic blacklist lambda$new$3(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F
    .locals 2
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;->compute(Lcom/samsung/android/sume/core/types/ColorFormat;Lcom/samsung/android/sume/core/types/ColorFormat;)F

    move-result v0

    return v0

    .line 43
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$4(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F
    .locals 2
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;->compute(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)F

    move-result v0

    return v0

    .line 51
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$5(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F
    .locals 2
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 56
    const-string/jumbo v0, "rotation-degrees"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/ImageFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/format/ImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;->compute(Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/format/Shape;)F

    move-result v0

    return v0

    .line 59
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$6(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F
    .locals 2
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 64
    const-string v0, "crop"

    const-string v1, "center-crop"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/ImageFormat;->containsAnyOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$7(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F
    .locals 1
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 76
    const-string/jumbo v0, "split-type"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/ImageFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 79
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$8(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F
    .locals 1
    .param p0, "input"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "output"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 84
    const-string v0, "merge-type"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/format/ImageFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method
