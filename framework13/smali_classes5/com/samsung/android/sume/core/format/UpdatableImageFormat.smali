.class Lcom/samsung/android/sume/core/format/UpdatableImageFormat;
.super Lcom/samsung/android/sume/core/format/ImageFormat;
.source "UpdatableImageFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;


# instance fields
.field protected blacklist flags:I

.field blacklist source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

.field blacklist updater:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lcom/samsung/android/sume/core/format/ImageFormat;",
            "Lcom/samsung/android/sume/core/format/MutableImageFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/ImageFormat;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 14
    iget-object v0, p1, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/format/ImageFormat;-><init>(Lcom/samsung/android/sume/core/format/MutableImageFormat;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->flags:I

    .line 15
    return-void
.end method

.method private blacklist coerceAtMostCols(II)I
    .locals 2
    .param p1, "left"    # I
    .param p2, "cols"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "cols"
        }
    .end annotation

    .line 58
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method private blacklist coerceAtMostRows(II)I
    .locals 2
    .param p1, "top"    # I
    .param p2, "rows"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "top",
            "rows"
        }
    .end annotation

    .line 55
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method private blacklist getCroppedRect()[I
    .locals 2

    .line 62
    const-string v0, "crop"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/format/UpdatableImageFormat;)V

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/format/UpdatableImageFormat;)V

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 62
    return-object v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
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

    .line 40
    const-string v0, "crop-rect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "crop"

    const-string v2, "center-crop"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->containsAnyOf([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-direct {p0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->getCroppedRect()[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCroppedShape()Lcom/samsung/android/sume/core/format/Shape;
    .locals 2

    .line 81
    const-string v0, "crop"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/format/UpdatableImageFormat;)V

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/format/UpdatableImageFormat;)V

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;

    .line 81
    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedRect$0$com-samsung-android-sume-core-format-UpdatableImageFormat([I)[I
    .locals 5
    .param p1, "e"    # [I

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    aput v3, v0, v2

    aget v1, p1, v1

    const/4 v3, 0x2

    aget v4, p1, v3

    .line 66
    invoke-direct {p0, v1, v4}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->coerceAtMostCols(II)I

    move-result v1

    aput v1, v0, v3

    aget v1, p1, v2

    const/4 v2, 0x3

    aget v3, p1, v2

    .line 67
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->coerceAtMostRows(II)I

    move-result v1

    aput v1, v0, v2

    .line 63
    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedRect$1$com-samsung-android-sume-core-format-UpdatableImageFormat([I)[I
    .locals 5
    .param p1, "e"    # [I

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 71
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v1

    const/4 v2, 0x0

    aget v3, p1, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x1

    shr-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 72
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    shr-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v3

    aget v1, p1, v2

    iget-object v2, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 73
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    aget v1, p1, v3

    iget-object v2, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 74
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 70
    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedRect$2$com-samsung-android-sume-core-format-UpdatableImageFormat()[I
    .locals 2

    .line 76
    nop

    .line 69
    const-string v0, "center-crop"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/format/UpdatableImageFormat;)V

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedShape$3$com-samsung-android-sume-core-format-UpdatableImageFormat([I)Lcom/samsung/android/sume/core/format/Shape;
    .locals 4
    .param p1, "e"    # [I

    .line 82
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 83
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getBatch()I

    move-result v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    .line 84
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->coerceAtMostRows(II)I

    move-result v1

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    .line 85
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->coerceAtMostCols(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 86
    invoke-virtual {v3}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getChannels()I

    move-result v3

    .line 82
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedShape$4$com-samsung-android-sume-core-format-UpdatableImageFormat([I)Lcom/samsung/android/sume/core/format/Shape;
    .locals 4
    .param p1, "e"    # [I

    .line 88
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getBatch()I

    move-result v0

    const/4 v1, 0x1

    aget v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 90
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    aget v2, p1, v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 91
    invoke-virtual {v3}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 92
    invoke-virtual {v3}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getChannels()I

    move-result v3

    .line 88
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCroppedShape$5$com-samsung-android-sume-core-format-UpdatableImageFormat()Lcom/samsung/android/sume/core/format/Shape;
    .locals 2

    .line 93
    nop

    .line 87
    const-string v0, "center-crop"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/format/UpdatableImageFormat;)V

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    iget-object v0, v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;->attributes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-object p0
.end method

.method public blacklist setUpdater(Ljava/util/function/BiConsumer;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updater"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Lcom/samsung/android/sume/core/format/ImageFormat;",
            "Lcom/samsung/android/sume/core/format/MutableImageFormat;",
            ">;)",
            "Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;"
        }
    .end annotation

    .line 34
    .local p1, "updater":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->updater:Ljava/util/function/BiConsumer;

    .line 35
    return-object p0
.end method

.method public blacklist update()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->updater:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-interface {v0, p0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist with(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 25
    instance-of v0, p1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    if-eqz v0, :cond_0

    .line 26
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->source:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 29
    :goto_0
    return-object p0
.end method
