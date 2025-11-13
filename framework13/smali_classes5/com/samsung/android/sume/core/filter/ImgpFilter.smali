.class public Lcom/samsung/android/sume/core/filter/ImgpFilter;
.super Lcom/samsung/android/sume/core/filter/PluginFilter;
.source "ImgpFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/filter/PluginFilter<",
        "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

.field private blacklist imgp:Lcom/samsung/android/sume/core/functional/ImgProcessor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/samsung/android/sume/core/filter/ImgpFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V
    .locals 0
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    .param p2, "plugin"    # Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "plugin"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/filter/PluginFilter;-><init>(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/ImgpFilter;->init()V

    .line 40
    return-void
.end method

.method private blacklist init()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->asInputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 46
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 47
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getImgpTypeName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 48
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getImgpType()Ljava/lang/Enum;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda4;-><init>()V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/filter/ImgpFilter;)V

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->imgp:Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 59
    instance-of v1, v0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->config(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V

    goto :goto_0

    .line 61
    :cond_1
    instance-of v1, v0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    if-eqz v1, :cond_2

    .line 62
    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->config(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V

    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$run$1()Ljava/lang/IllegalStateException;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "designate format is not given, one of output buffer or descriptor should be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1
    .param p0, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p1, "preFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p2, "postFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "successor",
            "preFilter",
            "postFilter"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 28
    .local v0, "filter":Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;
    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->setPreFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 29
    invoke-virtual {v0, p2}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->setPostFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    return-object v0
.end method

.method synthetic blacklist lambda$init$0$com-samsung-android-sume-core-filter-ImgpFilter(Ljava/lang/Object;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p1, "it"    # Ljava/lang/Object;

    .line 52
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    check-cast v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->getImgProcessor(Ljava/lang/String;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    check-cast v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->getImgProcessor(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$run$2$com-samsung-android-sume-core-filter-ImgpFilter()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda2;-><init>()V

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda3;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 71
    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 11
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

    .line 68
    sget-object v0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run: ibuf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda0;-><init>()V

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/ImgpFilter;)V

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/ImageFormat;

    .line 76
    .local v1, "format":Lcom/samsung/android/sume/core/format/ImageFormat;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "keep-org-ratio"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/sume/core/format/ImageFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/ImageFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 78
    .local v4, "fmt":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    invoke-virtual {v4}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string/jumbo v8, "scale-cols"

    invoke-interface {p1, v8, v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 79
    invoke-virtual {v4}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string/jumbo v7, "scale-rows"

    invoke-interface {p1, v7, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 80
    invoke-virtual {v4}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/samsung/android/sume/core/format/ImageFormat;

    .line 83
    .end local v4    # "fmt":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    :cond_0
    const-string v4, "force-rotate"

    invoke-interface {p1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v6, "rotation-degrees"

    if-eqz v5, :cond_1

    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/ImageFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 85
    .local v5, "fmt":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    invoke-interface {p1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 86
    invoke-virtual {v5}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Lcom/samsung/android/sume/core/format/ImageFormat;

    .line 87
    invoke-interface {p1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->removeExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .end local v5    # "fmt":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    :cond_1
    const-string/jumbo v5, "rotate-ifnot-fit"

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/sume/core/format/ImageFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    .line 92
    .local v3, "src":Lcom/samsung/android/sume/core/format/MediaFormat;
    move-object v5, v1

    .line 94
    .local v5, "dst":Lcom/samsung/android/sume/core/format/MediaFormat;
    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v7

    invoke-interface {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_2

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v7

    invoke-interface {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v8

    if-le v7, v8, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    move v7, v2

    .line 95
    :goto_0
    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v8

    invoke-interface {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v10

    if-le v8, v10, :cond_3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v8

    invoke-interface {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v10

    if-ge v8, v10, :cond_3

    move v2, v9

    :cond_3
    xor-int/2addr v2, v7

    .line 97
    .local v2, "requestForceRotate":Z
    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/ImageFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 99
    .local v7, "fmt":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    const/16 v8, 0x5a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 100
    invoke-virtual {v7}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lcom/samsung/android/sume/core/format/ImageFormat;

    .line 101
    const/16 v6, 0x10e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v4, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .end local v2    # "requestForceRotate":Z
    .end local v3    # "src":Lcom/samsung/android/sume/core/format/MediaFormat;
    .end local v5    # "dst":Lcom/samsung/android/sume/core/format/MediaFormat;
    .end local v7    # "fmt":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 106
    invoke-static {v1}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    move-result-object v2

    .line 107
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->with(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    move-result-object v2

    .line 108
    const-string/jumbo v3, "update-at-alloc"

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->set(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/samsung/android/sume/core/format/ImageFormat;

    .line 112
    :cond_5
    if-eqz p2, :cond_6

    .line 113
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 115
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->imgp:Lcom/samsung/android/sume/core/functional/ImgProcessor;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    .line 117
    .local v2, "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obuf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v2
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
