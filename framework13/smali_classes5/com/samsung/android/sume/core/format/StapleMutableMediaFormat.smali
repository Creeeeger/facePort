.class public Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
.super Ljava/lang/Object;
.source "StapleMutableMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MutableMediaFormat;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist dataType:Lcom/samsung/android/sume/core/types/DataType;

.field protected blacklist mediaType:Lcom/samsung/android/sume/core/types/MediaType;

.field protected blacklist shape:Lcom/samsung/android/sume/core/format/MutableShape;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    return-void
.end method

.method private blacklist getColorString()Ljava/lang/String;
    .locals 2

    .line 233
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, ""

    return-object v1
.end method

.method static synthetic blacklist lambda$adjustChannels$6(Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "it"    # Ljava/lang/Integer;

    .line 208
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$bytePerSample$1(Lcom/samsung/android/sume/core/types/ColorFormat;)Ljava/lang/Float;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->isPlanar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->bytePerPixel()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$bytePerSample$2(Lcom/samsung/android/sume/core/types/DataType;)Ljava/lang/Float;
    .locals 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/DataType;

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/DataType;->size()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/DataType;->channels()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$config$0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "it"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p0, Lcom/samsung/android/sume/core/types/DataType;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/samsung/android/sume/core/format/Shape;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public varargs blacklist adjustChannels([Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 194
    .local p1, "channelSuppliers":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda16;-><init>()V

    .line 208
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    .local v0, "channel":I
    if-eq v0, v1, :cond_1

    .line 211
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/DataType;->channels()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/DataType;->depth()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->getChannels()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v2, v0}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableShape;->getBatch()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableShape;->setBatch(I)Lcom/samsung/android/sume/core/format/MutableShape;

    .line 218
    :cond_2
    return-void
.end method

.method public blacklist bytePerSample()F
    .locals 3

    .line 80
    const-string v0, "color-format"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda9;-><init>()V

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 82
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 83
    .local v0, "bppOfColor":F
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda10;-><init>()V

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 85
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 86
    .local v1, "bppOfDataType":F
    mul-float v2, v0, v1

    return v2
.end method

.method public blacklist checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 122
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected varargs blacklist config([Ljava/lang/Object;)Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda1;-><init>()V

    .line 30
    invoke-static {v1}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 32
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Boolean;Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "arg":Ljava/lang/Object;
    instance-of v3, v2, Lcom/samsung/android/sume/core/types/DataType;

    if-eqz v3, :cond_0

    .line 35
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/sume/core/types/DataType;

    iput-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    goto :goto_1

    .line 36
    :cond_0
    instance-of v3, v2, Lcom/samsung/android/sume/core/format/Shape;

    if-eqz v3, :cond_1

    .line 37
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/sume/core/format/Shape;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 38
    .end local v2    # "arg":Ljava/lang/Object;
    :cond_1
    :goto_1
    goto :goto_0

    .line 40
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public blacklist contains(Ljava/lang/String;)Z
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

    .line 107
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAllOf([Ljava/lang/String;)Z
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 117
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAnyOf([Ljava/lang/String;)Z
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 112
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    .line 228
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shape="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 241
    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->contentToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nattributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 246
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    return-object v0
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 2

    .line 253
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 256
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->copy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deepCopy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->copy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    .line 264
    .local v0, "copied":Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableShape;

    iput-object v1, v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 265
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    .line 266
    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->deepCopy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

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

    .line 96
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 102
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatch()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getChannels()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getCols()I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDataType()Lcom/samsung/android/sume/core/types/DataType;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->NONE:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/DataType;

    return-object v0
.end method

.method public blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method

.method public blacklist getRows()I
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getShape()Lcom/samsung/android/sume/core/format/Shape;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;

    return-object v0
.end method

.method synthetic blacklist lambda$adjustChannels$5$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 3
    .param p1, "it"    # Ljava/lang/Class;

    .line 195
    const-class v0, Lcom/samsung/android/sume/core/format/MutableShape;

    const/4 v1, -0x1

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 195
    if-eq p1, v0, :cond_3

    const-class v0, Lcom/samsung/android/sume/core/format/Shape;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    const-class v0, Lcom/samsung/android/sume/core/types/DataType;

    if-ne p1, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 199
    :cond_1
    const-class v0, Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne p1, v0, :cond_2

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    return-object v1

    .line 206
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support channel supplier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method synthetic blacklist lambda$containsAllOf$4$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$containsAnyOf$3$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
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

    .line 127
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 5
    .param p1, "option"    # Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    .line 272
    .local v0, "splitType":Lcom/samsung/android/sume/core/types/SplitType;
    sget-object v1, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    const/16 v2, 0x8

    if-eq v0, v1, :cond_1

    .line 273
    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    const-string/jumbo v3, "split-type"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 275
    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    const-string v3, "merge-type"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 280
    .local v1, "pad":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string/jumbo v4, "pad-type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string/jumbo v4, "pad-size"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_2
    return-object p0
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

    .line 222
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-object p0
.end method

.method public blacklist setChannels(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3
    .param p1, "channels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channels"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;-><init>()V

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 188
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 190
    return-object p0
.end method

.method public blacklist setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3
    .param p1, "cols"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cols"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda0;-><init>()V

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 179
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 181
    return-object p0
.end method

.method public blacklist setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3
    .param p1, "dataType"    # Lcom/samsung/android/sume/core/types/DataType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataType"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->dataType:Lcom/samsung/android/sume/core/types/DataType;

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 154
    return-object p0
.end method

.method public blacklist setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1
    .param p1, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaType"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->mediaType:Lcom/samsung/android/sume/core/types/MediaType;

    .line 145
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne p1, v0, :cond_0

    .line 146
    const/4 v0, 0x1

    invoke-static {v0, v0, v0, v0}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf(IIII)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 147
    :cond_0
    return-object p0
.end method

.method public blacklist setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rows"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 170
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 172
    return-object p0
.end method

.method public blacklist setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3
    .param p1, "shape"    # Lcom/samsung/android/sume/core/format/Shape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/android/sume/core/format/Shape;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/android/sume/core/types/DataType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->adjustChannels([Ljava/lang/Class;)V

    .line 163
    return-object p0
.end method

.method public blacklist size()J
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->bytePerSample()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->shape:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    return-wide v0
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

    .line 133
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/format/StapleMediaFormat;-><init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V

    return-object v0
.end method

.method public blacklist toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">()TV;"
        }
    .end annotation

    .line 139
    return-object p0
.end method
