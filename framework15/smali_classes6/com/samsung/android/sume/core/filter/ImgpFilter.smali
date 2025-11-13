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

.field private blacklist imgp:Lcom/samsung/android/sume/core/functional/Operator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/ImgpFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/filter/PluginFilter;-><init>(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/ImgpFilter;->init()V

    return-void
.end method

.method private blacklist init()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->asInputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getImgpTypeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getImgpType()Ljava/lang/Enum;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/ImgpFilter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/Operator;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->imgp:Lcom/samsung/android/sume/core/functional/Operator;

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->imgp:Lcom/samsung/android/sume/core/functional/Operator;

    instance-of v0, v0, Lcom/samsung/android/sume/core/functional/OperatorMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->imgp:Lcom/samsung/android/sume/core/functional/Operator;

    check-cast v0, Lcom/samsung/android/sume/core/functional/OperatorMap;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap;->config(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->imgp:Lcom/samsung/android/sume/core/functional/Operator;

    instance-of v0, v0, Lcom/samsung/android/sume/core/functional/OperatorChain;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->imgp:Lcom/samsung/android/sume/core/functional/Operator;

    check-cast v0, Lcom/samsung/android/sume/core/functional/OperatorChain;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/functional/OperatorChain;->config(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$run$1(IILcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const-string v0, "contents-id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "num-blocks"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->setPreFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->setPostFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    return-object v0
.end method

.method synthetic blacklist lambda$init$0$com-samsung-android-sume-core-filter-ImgpFilter(Ljava/lang/Object;)Lcom/samsung/android/sume/core/functional/Operator;
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    check-cast v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->getImgProcessor(Ljava/lang/String;)Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    check-cast v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->getImgProcessor(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 10

    sget-object v0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: ibuf="

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

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->getFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    :goto_1
    instance-of v1, v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    const-string v4, "designate format is not given, one of output buffer or descriptor should be given"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "keep-org-ratio"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getCols()I

    move-result v4

    int-to-float v4, v4

    const-string v5, "scale-cols"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getRows()I

    move-result v4

    int-to-float v4, v4

    const-string v5, "scale-rows"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    :cond_4
    const-string v3, "force-rotate"

    invoke-interface {p1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "rotation-degrees"

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v4

    invoke-interface {p1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {p1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->removeExtra(Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    const-string v4, "rotate-ifnot-fit"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v4

    move-object v6, v0

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v7

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v7

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v8

    if-le v7, v8, :cond_6

    move v7, v1

    goto :goto_3

    :cond_6
    move v7, v2

    :goto_3
    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v8

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v9

    if-le v8, v9, :cond_7

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v8

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v9

    if-ge v8, v9, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    xor-int/2addr v1, v7

    if-eqz v1, :cond_8

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    const/16 v7, 0x5a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const/16 v5, 0x10e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/io/FileDescriptor;

    if-ne v1, v2, :cond_9

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    const-class v2, Ljava/io/FileDescriptor;

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "file-descriptor"

    invoke-interface {v1, v3, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    :cond_9
    const-string v1, "output-file"

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_a
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->with(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    move-result-object v1

    const-string v2, "update-at-alloc"

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->set(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    move-result-object v0

    :cond_b
    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter;->imgp:Lcom/samsung/android/sume/core/functional/Operator;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/sume/core/functional/Operator;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->addExtra(Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    if-eq p1, v2, :cond_c

    instance-of v2, p1, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;

    if-nez v2, :cond_c

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;

    if-eqz v2, :cond_c

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "contents-id"

    invoke-virtual {p2, v3, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2, v3}, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_c
    sget-object v2, Lcom/samsung/android/sume/core/filter/ImgpFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obuf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
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

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
