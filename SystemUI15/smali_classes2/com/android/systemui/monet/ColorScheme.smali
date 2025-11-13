.class public final Lcom/android/systemui/monet/ColorScheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccent1:Lcom/android/systemui/monet/TonalPalette;

.field public final mAccent2:Lcom/android/systemui/monet/TonalPalette;

.field public final mAccent3:Lcom/android/systemui/monet/TonalPalette;

.field public final mIsDark:Z

.field public final mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

.field public final mNeutral1:Lcom/android/systemui/monet/TonalPalette;

.field public final mNeutral2:Lcom/android/systemui/monet/TonalPalette;

.field public final mSeed:I

.field public final mStyle:Lcom/android/systemui/monet/Style;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    sget-object v0, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/monet/ColorScheme;-><init>(IZLcom/android/systemui/monet/Style;)V

    return-void
.end method

.method public constructor <init>(IZLcom/android/systemui/monet/Style;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/monet/ColorScheme;-><init>(IZLcom/android/systemui/monet/Style;D)V

    return-void
.end method

.method public constructor <init>(IZLcom/android/systemui/monet/Style;D)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/monet/ColorScheme;->mSeed:I

    iput-boolean p2, p0, Lcom/android/systemui/monet/ColorScheme;->mIsDark:Z

    iput-object p3, p0, Lcom/android/systemui/monet/ColorScheme;->mStyle:Lcom/android/systemui/monet/Style;

    invoke-static {p1}, Lcom/google/ux/material/libmonet/hct/Hct;->fromInt(I)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    const v1, -0xe4910d

    if-nez p1, :cond_0

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    if-eq p3, v2, :cond_1

    iget-wide v2, v0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/ux/material/libmonet/hct/Hct;->fromInt(I)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/monet/ColorScheme$1;->$SwitchMap$com$android$systemui$monet$Style:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown style: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p3, Lcom/android/systemui/monet/SchemeClockVibrant;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/android/systemui/monet/SchemeClockVibrant;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    goto :goto_2

    :pswitch_1
    new-instance p3, Lcom/android/systemui/monet/SchemeClock;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/android/systemui/monet/SchemeClock;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    goto :goto_2

    :pswitch_2
    new-instance p3, Lcom/google/ux/material/libmonet/scheme/SchemeMonochrome;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/ux/material/libmonet/scheme/SchemeMonochrome;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    goto :goto_2

    :pswitch_3
    new-instance p3, Lcom/google/ux/material/libmonet/scheme/SchemeContent;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/ux/material/libmonet/scheme/SchemeContent;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    goto :goto_2

    :pswitch_4
    new-instance p3, Lcom/google/ux/material/libmonet/scheme/SchemeFruitSalad;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/ux/material/libmonet/scheme/SchemeFruitSalad;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    goto :goto_2

    :pswitch_5
    new-instance p3, Lcom/google/ux/material/libmonet/scheme/SchemeRainbow;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/ux/material/libmonet/scheme/SchemeRainbow;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    goto :goto_2

    :pswitch_6
    new-instance p3, Lcom/google/ux/material/libmonet/scheme/SchemeExpressive;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/ux/material/libmonet/scheme/SchemeExpressive;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    goto :goto_2

    :pswitch_7
    new-instance p3, Lcom/google/ux/material/libmonet/scheme/SchemeVibrant;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/ux/material/libmonet/scheme/SchemeVibrant;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    goto :goto_2

    :pswitch_8
    new-instance p3, Lcom/google/ux/material/libmonet/scheme/SchemeTonalSpot;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/ux/material/libmonet/scheme/SchemeTonalSpot;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    goto :goto_2

    :pswitch_9
    new-instance p3, Lcom/google/ux/material/libmonet/scheme/SchemeNeutral;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/ux/material/libmonet/scheme/SchemeNeutral;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V

    :goto_2
    iput-object p3, p0, Lcom/android/systemui/monet/ColorScheme;->mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance p1, Lcom/android/systemui/monet/TonalPalette;

    iget-object p2, p3, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->primaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    invoke-direct {p1, p2}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/google/ux/material/libmonet/palettes/TonalPalette;)V

    iput-object p1, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    new-instance p1, Lcom/android/systemui/monet/TonalPalette;

    iget-object p2, p3, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->secondaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    invoke-direct {p1, p2}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/google/ux/material/libmonet/palettes/TonalPalette;)V

    iput-object p1, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    new-instance p1, Lcom/android/systemui/monet/TonalPalette;

    iget-object p2, p3, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->tertiaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    invoke-direct {p1, p2}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/google/ux/material/libmonet/palettes/TonalPalette;)V

    iput-object p1, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent3:Lcom/android/systemui/monet/TonalPalette;

    new-instance p1, Lcom/android/systemui/monet/TonalPalette;

    iget-object p2, p3, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->neutralPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    invoke-direct {p1, p2}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/google/ux/material/libmonet/palettes/TonalPalette;)V

    iput-object p1, p0, Lcom/android/systemui/monet/ColorScheme;->mNeutral1:Lcom/android/systemui/monet/TonalPalette;

    new-instance p1, Lcom/android/systemui/monet/TonalPalette;

    iget-object p2, p3, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->neutralVariantPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    invoke-direct {p1, p2}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/google/ux/material/libmonet/palettes/TonalPalette;)V

    iput-object p1, p0, Lcom/android/systemui/monet/ColorScheme;->mNeutral2:Lcom/android/systemui/monet/TonalPalette;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/app/WallpaperColors;Z)V
    .locals 1

    sget-object v0, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/android/systemui/monet/ColorScheme;->getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/monet/ColorScheme;-><init>(IZLcom/android/systemui/monet/Style;)V

    return-void
.end method

.method public static getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;
    .locals 13

    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const v5, -0xe4910d

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v7, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda7;

    invoke-direct {v7, v0, v1}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda7;-><init>(D)V

    invoke-static {v6, v7}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v6, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v4, v6}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/16 v3, 0x168

    invoke-static {v3, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ux/material/libmonet/hct/Hct;

    iget-wide v8, v2, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    rem-int/2addr v8, v3

    if-eqz p1, :cond_2

    iget-wide v9, v2, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    cmpg-double v2, v9, v11

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    add-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v4, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v2, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1, v4}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda9;-><init>(Ljava/util/Map;Ljava/util/List;)V

    invoke-static {v0, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda10;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v2, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/Map$Entry;->comparingByValue()Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x5a

    :goto_2
    const/16 v2, 0xf

    if-lt v0, v2, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1, v4, v0}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;II)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_5

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object p1
.end method

.method public static humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    const-string v0, "\n"

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringForColor(I)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/google/ux/material/libmonet/hct/Hct;->fromInt(I)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%4s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "H"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v3, v0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "C"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/ux/material/libmonet/hct/Hct;->tone:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "T"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0xffffff

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = #"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorScheme {\n  seed color: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/monet/ColorScheme;->mSeed:I

    invoke-static {v1}, Lcom/android/systemui/monet/ColorScheme;->stringForColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/monet/ColorScheme;->mStyle:Lcom/android/systemui/monet/Style;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  palettes: \n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    iget-object v1, v1, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    const-string v2, "PRIMARY"

    invoke-static {v2, v1}, Lcom/android/systemui/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    iget-object v2, v2, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    const-string v3, "SECONDARY"

    invoke-static {v3, v2}, Lcom/android/systemui/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent3:Lcom/android/systemui/monet/TonalPalette;

    iget-object v2, v2, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    const-string v3, "TERTIARY"

    invoke-static {v3, v2}, Lcom/android/systemui/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/monet/ColorScheme;->mNeutral1:Lcom/android/systemui/monet/TonalPalette;

    iget-object v2, v2, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    const-string v3, "NEUTRAL"

    invoke-static {v3, v2}, Lcom/android/systemui/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/monet/ColorScheme;->mNeutral2:Lcom/android/systemui/monet/TonalPalette;

    iget-object p0, p0, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    const-string v1, "NEUTRAL VARIANT"

    invoke-static {v1, p0}, Lcom/android/systemui/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
