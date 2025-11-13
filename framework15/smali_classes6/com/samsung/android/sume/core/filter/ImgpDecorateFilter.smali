.class public Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "ImgpDecorateFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

.field private blacklist postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

.field private blacklist preFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

.field private blacklist preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method

.method static synthetic blacklist lambda$run$0(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$run$1(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;I)Z
    .locals 1

    const-string v0, "force-rotate"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$run$2(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/types/DataType;
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method static synthetic blacklist lambda$run$3(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/types/ColorFormat;
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method static synthetic blacklist lambda$run$4(FFLcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 3

    const-string v0, "roi-on-block"

    const-string v1, "roi-on-image"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsAllExtra([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$run$5(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Z
    .locals 1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isKeepFilterDatatype()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getPostFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v0
.end method

.method public blacklist getPreFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run: pre="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", post="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/types/SplitType;

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    move-object/from16 v6, p2

    invoke-super {v0, v5, v6}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    sget-object v7, Lcom/samsung/android/sume/core/types/SplitType;->TILE:Lcom/samsung/android/sume/core/types/SplitType;

    if-ne v3, v7, :cond_3

    iget-object v7, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v7

    const-string v9, "merge-type"

    sget-object v10, Lcom/samsung/android/sume/core/types/SplitType;->TILE:Lcom/samsung/android/sume/core/types/SplitType;

    invoke-interface {v7, v9, v10}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    iget-object v7, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v9, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v7, v9}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    invoke-interface {v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v9

    invoke-interface {v9}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sume/core/format/Shape;

    iget-object v9, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v9}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v10

    invoke-interface {v10}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sume/core/format/Shape;

    invoke-interface {v9}, Lcom/samsung/android/sume/core/format/Shape;->getRows()I

    move-result v10

    int-to-float v10, v10

    invoke-interface {v7}, Lcom/samsung/android/sume/core/format/Shape;->getRows()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-interface {v9}, Lcom/samsung/android/sume/core/format/Shape;->getCols()I

    move-result v11

    int-to-float v11, v11

    invoke-interface {v7}, Lcom/samsung/android/sume/core/format/Shape;->getCols()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/MutableShape;->getRows()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    float-to-int v13, v13

    invoke-interface {v12, v13}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/MutableShape;->getCols()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v11

    float-to-int v13, v13

    invoke-interface {v12, v13}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    const-string v13, "force-rotate"

    invoke-virtual {v6, v13}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x5a

    const/16 v14, 0x10e

    filled-new-array {v13, v14}, [I

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v13

    new-instance v14, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda3;

    invoke-direct {v14, v6}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)V

    invoke-interface {v13, v14}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/MutableShape;->getCols()I

    move-result v13

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/MutableShape;->getRows()I

    move-result v14

    invoke-interface {v12, v14}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v12, v13}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    :cond_0
    iget-object v13, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v13}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    new-instance v14, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda4;

    invoke-direct {v14, v6}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)V

    invoke-virtual {v13, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v13

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v14

    invoke-interface {v14}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/MutableShape;->toShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v14

    iget-object v15, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v15}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v15

    new-instance v8, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda5;

    invoke-direct {v8, v6}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)V

    invoke-virtual {v15, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v15

    invoke-interface {v15}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    filled-new-array {v13, v14, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v8

    mul-float v13, v11, v10

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v14, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda6;

    invoke-direct {v14, v10, v11}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda6;-><init>(FF)V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->asList()Ljava/util/List;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v13

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    iget-object v14, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->reset()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    iget-object v14, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v14, v13, v2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    :cond_2
    invoke-interface {v13}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isInputWithEvaluationValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->copy()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->asList()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v7

    const/4 v8, 0x2

    filled-new-array {v8}, [I

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {v2, v7}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    goto :goto_0

    :cond_4
    iget-object v7, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->reset()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    :cond_5
    :goto_0
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    aput-object v9, v7, v8

    invoke-static {v7}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda7;

    invoke-direct {v8}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v8, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->TAG:Ljava/lang/String;

    const-string v9, "convert output data-type to one of input"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sume/solution/filter/UniImgp;->ofCvtData()Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v9

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sume/core/format/MediaFormat;->imageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/samsung/android/sume/core/functional/Operator;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_6
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->addExtra(Ljava/util/Map;)V

    invoke-interface {v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->addExtra(Ljava/util/Map;)V

    if-eq v1, v5, :cond_7

    invoke-interface {v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    :cond_7
    sget-object v8, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ret: obuf="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist setPostFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    :cond_0
    return-void
.end method

.method public blacklist setPreFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    :cond_0
    return-void
.end method
