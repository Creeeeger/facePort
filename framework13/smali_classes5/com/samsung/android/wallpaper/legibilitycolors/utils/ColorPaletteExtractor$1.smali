.class Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$1;
.super Ljava/lang/Object;
.source "ColorPaletteExtractor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->discardSameColorFromDominantColorsForColorPalette([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;DLcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;)I
    .locals 4
    .param p1, "lhs"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .param p2, "rhs"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;

    .line 260
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 261
    const/4 v0, 0x0

    return v0

    .line 262
    :cond_0
    if-nez p1, :cond_1

    .line 263
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_1
    if-nez p2, :cond_2

    .line 265
    const/4 v0, -0x1

    return v0

    .line 267
    :cond_2
    iget-wide v0, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->dist:D

    iget-wide v2, p2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->dist:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 257
    check-cast p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;

    check-cast p2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$1;->compare(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;)I

    move-result p1

    return p1
.end method
