.class public interface abstract Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/EntityString;


# virtual methods
.method public abstract getActions()J
.end method

.method public abstract getAppColorScheme()Lcom/android/systemui/monet/ColorScheme;
.end method

.method public abstract getAppIcon()Landroidx/compose/ui/graphics/painter/Painter;
.end method

.method public abstract getArtist()Ljava/lang/String;
.end method

.method public getAttributes()Ljava/util/List;
    .locals 3

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "id"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    new-instance v0, Lkotlin/Pair;

    const-string/jumbo v2, "title"

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDuration()J
.end method

.method public getForegroundColors()Ljava/util/List;
    .locals 6

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getThumbColorScheme()Lcom/android/systemui/monet/ColorScheme;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getAppColorScheme()Lcom/android/systemui/monet/ColorScheme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;

    iget-object v1, v0, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v1}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x3

    new-array v2, p0, [F

    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v3, 0x2

    aget v4, v2, v3

    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    aput v5, v2, v3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v0}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result v0

    new-array p0, p0, [F

    invoke-static {v0, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, p0, v3

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    aput v5, p0, v3

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    :goto_1
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    const/16 v3, 0x72

    invoke-static {v3, p0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v3, 0xff

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMediaActions()Ljava/util/List;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getPosition()J
.end method

.method public abstract getThumbColorScheme()Lcom/android/systemui/monet/ColorScheme;
.end method

.method public abstract getThumbnail()Landroidx/compose/ui/graphics/ImageBitmap;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public isInvalidAction()Z
    .locals 3

    const-wide/16 v0, 0x4

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isSupportAction(J)Z

    move-result v0

    const-wide/16 v1, 0x2

    invoke-interface {p0, v1, v2}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isSupportAction(J)Z

    move-result v1

    or-int/2addr v0, v1

    const-wide/16 v1, 0x200

    invoke-interface {p0, v1, v2}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isSupportAction(J)Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x20

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isSupportAction(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x10

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isSupportAction(J)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSame(Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupportAction(J)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getActions()J

    move-result-wide v0

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
