.class Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;
.super Lcom/samsung/android/sume/core/format/StapleMediaFormat;
.source "StapleUpdatableMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;


# instance fields
.field protected blacklist flags:I

.field blacklist source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

.field blacklist updater:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;

    iget-object v0, v0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/format/StapleMediaFormat;-><init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->flags:I

    return-void
.end method

.method private blacklist coerceAtMostCols(II)I
    .locals 2

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getCols()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method private blacklist coerceAtMostRows(II)I
    .locals 2

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getRows()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method private blacklist getCroppedRect()[I
    .locals 2

    const-string v0, "crop"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "crop-rect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "crop"

    const-string v2, "center-crop"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->containsAnyOf([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-direct {p0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->getCroppedRect()[I

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCroppedShape()Lcom/samsung/android/sume/core/format/Shape;
    .locals 2

    const-string v0, "crop"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;

    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedRect$0$com-samsung-android-sume-core-format-StapleUpdatableMediaFormat([I)[I
    .locals 5

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    aget v0, p1, v0

    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->coerceAtMostCols(II)I

    move-result v0

    aget v2, p1, v2

    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->coerceAtMostRows(II)I

    move-result v2

    filled-new-array {v1, v3, v0, v2}, [I

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedRect$1$com-samsung-android-sume-core-format-StapleUpdatableMediaFormat([I)[I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getCols()I

    move-result v0

    const/4 v1, 0x0

    aget v2, p1, v1

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    shr-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getRows()I

    move-result v3

    aget v4, p1, v2

    sub-int/2addr v3, v4

    shr-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget v1, p1, v1

    iget-object v4, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getCols()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v2, p1, v2

    iget-object v4, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getRows()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedRect$2$com-samsung-android-sume-core-format-StapleUpdatableMediaFormat()[I
    .locals 2

    nop

    const-string v0, "center-crop"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedShape$3$com-samsung-android-sume-core-format-StapleUpdatableMediaFormat([I)Lcom/samsung/android/sume/core/format/Shape;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getBatch()I

    move-result v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->coerceAtMostRows(II)I

    move-result v1

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->coerceAtMostCols(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getChannels()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedShape$4$com-samsung-android-sume-core-format-StapleUpdatableMediaFormat([I)Lcom/samsung/android/sume/core/format/Shape;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getBatch()I

    move-result v0

    const/4 v1, 0x1

    aget v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getRows()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    aget v2, p1, v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getChannels()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedShape$5$com-samsung-android-sume-core-format-StapleUpdatableMediaFormat()Lcom/samsung/android/sume/core/format/Shape;
    .locals 2

    nop

    const-string v0, "center-crop"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->impl:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    check-cast v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    iget-object v0, v0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->attributes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist setUpdater(Ljava/util/function/BiConsumer;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;)",
            "Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->updater:Ljava/util/function/BiConsumer;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->updater:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->updater:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0, p0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist with(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->source:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :goto_0
    return-object p0
.end method
