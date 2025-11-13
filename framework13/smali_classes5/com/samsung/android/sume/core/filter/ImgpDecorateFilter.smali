.class Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;
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

    .line 22
    const-class v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 31
    return-void
.end method

.method static synthetic blacklist lambda$run$0(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p0, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "e"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 58
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$run$1()Lcom/samsung/android/sume/core/format/Shape;
    .locals 1

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/Shape;->of(I)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$run$2()Lcom/samsung/android/sume/core/format/Shape;
    .locals 1

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/Shape;->of(I)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$run$3(Lcom/samsung/android/sume/core/buffer/MediaBuffer;I)Z
    .locals 1
    .param p0, "output"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "it"    # I

    .line 83
    const-string v0, "force-rotate"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

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

.method static synthetic blacklist lambda$run$4(FFLcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 3
    .param p0, "scaleY"    # F
    .param p1, "scaleX"    # F
    .param p2, "e"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 102
    const-string/jumbo v0, "roi-on-block"

    const-string/jumbo v1, "roi-on-image"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsAllExtra([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 104
    .local v0, "roiOnBlock":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 105
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 106
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 107
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 109
    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 110
    .local v1, "roiOnImage":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 111
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 112
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 113
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 115
    .end local v0    # "roiOnBlock":Landroid/graphics/Rect;
    .end local v1    # "roiOnImage":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$run$5(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p0, "buffers"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "e"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 123
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$run$6(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p0, "output"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "e"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 133
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist bindToMessageSubscriber(Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;)V
    .locals 0
    .param p1, "mfToMessageSubscriberBinder"    # Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mfToMessageSubscriberBinder"
        }
    .end annotation

    .line 154
    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->imgpDecorateFilter(Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;)V

    .line 155
    return-void
.end method

.method blacklist getPostFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v0
.end method

.method blacklist getPreFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 16
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ibuf",
            "obuf"
        }
    .end annotation

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run: pre="

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

    .line 52
    iget-object v4, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda0;-><init>()V

    .line 53
    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    .line 54
    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/types/SplitType;

    .line 56
    .local v4, "splitType":Lcom/samsung/android/sume/core/types/SplitType;
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v5

    .line 58
    .local v5, "orgFormat":Lcom/samsung/android/sume/core/format/MediaFormat;
    iget-object v6, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda3;

    invoke-direct {v7, v1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 59
    .local v6, "input":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-super {v0, v6, v2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v7

    .line 62
    .local v7, "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    sget-object v8, Lcom/samsung/android/sume/core/types/SplitType;->TILE:Lcom/samsung/android/sume/core/types/SplitType;

    const/4 v9, 0x2

    if-ne v4, v8, :cond_2

    .line 63
    iget-object v8, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v8, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v8, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    new-instance v12, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda4;

    invoke-direct {v12}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda4;-><init>()V

    .line 67
    invoke-virtual {v8, v12}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    new-instance v12, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda5;

    invoke-direct {v12}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda5;-><init>()V

    .line 68
    invoke-virtual {v8, v12}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sume/core/format/Shape;

    .line 70
    .local v8, "iFilterShape":Lcom/samsung/android/sume/core/format/Shape;
    iget-object v12, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v12}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda4;

    invoke-direct {v13}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda4;-><init>()V

    .line 71
    invoke-virtual {v12, v13}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda6;

    invoke-direct {v13}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda6;-><init>()V

    .line 72
    invoke-virtual {v12, v13}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/sume/core/format/Shape;

    .line 74
    .local v12, "oFilterShape":Lcom/samsung/android/sume/core/format/Shape;
    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/Shape;->getRows()I

    move-result v13

    int-to-float v13, v13

    invoke-interface {v8}, Lcom/samsung/android/sume/core/format/Shape;->getRows()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 75
    .local v13, "scaleY":F
    invoke-interface {v12}, Lcom/samsung/android/sume/core/format/Shape;->getCols()I

    move-result v14

    int-to-float v14, v14

    invoke-interface {v8}, Lcom/samsung/android/sume/core/format/Shape;->getCols()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 77
    .local v14, "scaleX":F
    invoke-interface {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v15

    invoke-interface {v15}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v15

    .line 79
    .local v15, "shape":Lcom/samsung/android/sume/core/format/MutableShape;
    invoke-interface {v15}, Lcom/samsung/android/sume/core/format/MutableShape;->getRows()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v13

    float-to-int v11, v11

    invoke-interface {v15, v11}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 80
    invoke-interface {v15}, Lcom/samsung/android/sume/core/format/MutableShape;->getCols()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v14

    float-to-int v11, v11

    invoke-interface {v15, v11}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 82
    const-string v11, "force-rotate"

    invoke-interface {v7, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 83
    new-array v11, v9, [I

    fill-array-data v11, :array_0

    invoke-static {v11}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v11

    new-instance v9, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda7;

    invoke-direct {v9, v7}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v11, v9}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 84
    invoke-interface {v15}, Lcom/samsung/android/sume/core/format/MutableShape;->getCols()I

    move-result v9

    .line 85
    .local v9, "cols":I
    invoke-interface {v15}, Lcom/samsung/android/sume/core/format/MutableShape;->getRows()I

    move-result v11

    invoke-interface {v15, v11}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 86
    invoke-interface {v15, v9}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 90
    .end local v9    # "cols":I
    :cond_0
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 91
    invoke-virtual {v11}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v11

    new-instance v10, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda8;

    invoke-direct {v10}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda8;-><init>()V

    .line 92
    invoke-virtual {v11, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    .line 93
    invoke-virtual {v10, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 94
    invoke-interface {v15}, Lcom/samsung/android/sume/core/format/MutableShape;->toShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 95
    invoke-virtual {v10}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda9;

    invoke-direct {v11}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda9;-><init>()V

    .line 96
    invoke-virtual {v10, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 97
    invoke-virtual {v10, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 90
    invoke-static {v9}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v9

    .line 100
    .local v9, "oRefBuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    mul-float v10, v14, v13

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    .line 101
    invoke-interface {v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda10;

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda10;-><init>(FF)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 118
    :cond_1
    invoke-interface {v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v10

    .line 120
    .local v10, "buffers":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-interface {v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 122
    iget-object v11, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-static {v11}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v11

    new-instance v1, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda1;

    invoke-direct {v1, v10, v2}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 123
    invoke-virtual {v11, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 126
    .local v1, "retBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-interface {v10}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 127
    .end local v8    # "iFilterShape":Lcom/samsung/android/sume/core/format/Shape;
    .end local v9    # "oRefBuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v10    # "buffers":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v12    # "oFilterShape":Lcom/samsung/android/sume/core/format/Shape;
    .end local v13    # "scaleY":F
    .end local v14    # "scaleX":F
    .end local v15    # "shape":Lcom/samsung/android/sume/core/format/MutableShape;
    goto :goto_0

    .end local v1    # "retBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isInputWithEvaluationValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    invoke-interface {v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    .line 129
    .restart local v1    # "retBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    const/4 v8, 0x1

    new-array v9, v8, [I

    const/4 v8, 0x2

    const/4 v10, 0x0

    aput v8, v9, v10

    invoke-interface {v1, v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 131
    invoke-interface {v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v6

    goto :goto_0

    .line 133
    .end local v1    # "retBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v8, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda2;

    invoke-direct {v8, v7, v2}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-virtual {v1, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 136
    .restart local v1    # "retBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isKeepFilterDatatype()Z

    move-result v8

    if-nez v8, :cond_4

    .line 137
    invoke-static {}, Lcom/samsung/android/sume/core/controller/UniImgp;->ofCvtData()Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 139
    invoke-interface {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sume/core/format/ImageFormat;

    .line 137
    invoke-interface {v8, v1, v9}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    .line 143
    :cond_4
    invoke-interface {v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 144
    invoke-interface {v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 146
    invoke-interface {v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-object v1

    nop

    :array_0
    .array-data 4
        0x5a
        0x10e
    .end array-data
.end method

.method public blacklist setPostFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1
    .param p1, "postFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postFilter"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->postImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 46
    :cond_0
    return-void
.end method

.method public blacklist setPreFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1
    .param p1, "preFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preFilter"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->preImgpDescriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 37
    :cond_0
    return-void
.end method
