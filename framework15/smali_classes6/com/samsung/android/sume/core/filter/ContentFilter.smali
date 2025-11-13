.class public Lcom/samsung/android/sume/core/filter/ContentFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "ContentFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist filterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist message:Lcom/samsung/android/sume/core/functional/PlaceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/ContentFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/ContentFilterRegister;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter;->filterMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/ContentFilter$1;-><init>(Lcom/samsung/android/sume/core/filter/ContentFilter;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter;->message:Lcom/samsung/android/sume/core/functional/PlaceHolder;

    new-instance v0, Lcom/samsung/android/sume/core/filter/ContentFilter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/ContentFilter$2;-><init>(Lcom/samsung/android/sume/core/filter/ContentFilter;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/filter/ContentFilterRegister;->registerFilter(Lcom/samsung/android/sume/core/filter/ContentFilterRegistry;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sume/core/filter/ContentFilter;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter;->filterMap:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist evaluateDataType(Ljava/lang/Object;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/functional/PlaceHolder;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sume/core/types/DataType;",
            "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/android/sume/core/types/DataType;

    const-string v1, " is not supported by filter: "

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/ContentFilter;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->put(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    instance-of v0, p1, [Lcom/samsung/android/sume/core/types/DataType;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, [Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/types/DataType;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, p1

    check-cast v2, [Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/ContentFilter;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/types/DataType;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/ContentFilter;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->put(Ljava/lang/Object;)V

    nop

    :cond_3
    :goto_1
    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid filter value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist evaluateDimension(Ljava/lang/Object;Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/functional/PlaceHolder;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sume/core/format/Shape;",
            "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/Shape;->getDimension()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/ContentFilter;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported by filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->put(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method private blacklist evaluateMediaType(Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/sume/core/functional/PlaceHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist filterOut(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter;->filterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/core/filter/ContentFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/filter/ContentFilter;Lcom/samsung/android/sume/core/format/MediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sume/core/exception/ContentFilterOutException;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/ContentFilter;->message:Lcom/samsung/android/sume/core/functional/PlaceHolder;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->reset()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/exception/ContentFilterOutException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/ContentFilter;->getSuccessorFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$evaluateDataType$1(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$evaluateDataType$2(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method synthetic blacklist lambda$filterOut$0$com-samsung-android-sume-core-filter-ContentFilter(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/util/Map$Entry;)Z
    .locals 3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mime-type"

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/ContentFilter;->message:Lcom/samsung/android/sume/core/functional/PlaceHolder;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sume/core/filter/ContentFilter;->evaluateMediaType(Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/sume/core/functional/PlaceHolder;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/ContentFilter;->message:Lcom/samsung/android/sume/core/functional/PlaceHolder;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sume/core/filter/ContentFilter;->evaluateDataType(Ljava/lang/Object;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/functional/PlaceHolder;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/ContentFilter;->message:Lcom/samsung/android/sume/core/functional/PlaceHolder;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sume/core/filter/ContentFilter;->evaluateDimension(Ljava/lang/Object;Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/functional/PlaceHolder;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/ContentFilter;->filterOut(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v1

    return-object v1
.end method
