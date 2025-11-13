.class Lcom/samsung/android/sume/core/functional/OperatorMap$1;
.super Ljava/util/HashMap;
.source "OperatorMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/functional/OperatorMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/sume/core/types/ImgpType;",
        "Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->DECODE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;)Lcom/samsung/android/sume/core/types/SplitType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Lcom/samsung/android/sume/core/types/SplitType;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/SplitType;->TILE:Lcom/samsung/android/sume/core/types/SplitType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$new$10(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 1

    const-string v0, "merge-type"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$2(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 8

    const-string v0, "split-type"

    const-string v1, "merge-type"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v6

    cmp-long v3, v6, v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getCols()I

    move-result v3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getRows()I

    move-result v3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/samsung/android/sume/core/functional/OpPriorityCompute;->compute(Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/format/Shape;)F

    move-result v3

    return v3

    :cond_3
    const/high16 v3, -0x40800000    # -1.0f

    return v3
.end method

.method static synthetic blacklist lambda$new$3(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 2

    const-string v0, "file-descriptor"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "input-file"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$4(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 2

    const-string v0, "file-descriptor"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "output-file"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v0, v1, :cond_1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$5(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/sume/core/functional/OpPriorityCompute;->compute(Lcom/samsung/android/sume/core/types/ColorFormat;Lcom/samsung/android/sume/core/types/ColorFormat;)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$6(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/sume/core/functional/OpPriorityCompute;->compute(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$7(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 4

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "rotation-degrees"

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/sume/core/functional/OpPriorityCompute;->compute(Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/format/Shape;)F

    move-result v1

    return v1

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    return v1
.end method

.method static synthetic blacklist lambda$new$8(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 2

    const-string v0, "crop"

    const-string v1, "center-crop"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->containsAnyOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$new$9(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 1

    const-string v0, "split-type"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method
