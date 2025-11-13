.class public Lcom/samsung/android/wallpaper/colortheme/ColorThemeExtractor;
.super Ljava/lang/Object;
.source "ColorThemeExtractor.java"


# static fields
.field private static final blacklist DEST_SCALE_HEIGHT:I = 0x96

.field private static final blacklist TAG:Ljava/lang/String; = "ColorThemeExtractor"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSeedColors(Landroid/graphics/Bitmap;)[I
    .locals 12

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x1e

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    int-to-float v2, v0

    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->makeClusterGroupColorBandBasedFromHueInterval(F[F)[I

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v5, 0x96

    invoke-static {v3, v4, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    move v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3df5c28f    # 0.12f

    invoke-static {v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->setSaturationThresholdForGrayscale(F)V

    const v6, 0x3e3851ec    # 0.18f

    invoke-static {v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->setBrightnessThresholdForGrayscale(F)V

    invoke-static {v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->setHsvSpaceHueRadiusValue(F)V

    invoke-static {v4, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v6

    const/high16 v7, 0x42340000    # 45.0f

    float-to-double v8, v7

    const-wide v10, 0x4076800000000000L    # 360.0

    div-double/2addr v8, v10

    sget-object v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    const/4 v11, 0x1

    invoke-static {v6, v8, v9, v10, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->discardSameColorFromDominantColorsForColorPalette([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;DLcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;Z)I

    float-to-double v8, v7

    invoke-static {v6, v8, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->getOnlyColorsFromDominantColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;D)[I

    move-result-object v8

    if-nez v8, :cond_2

    const/high16 v9, -0x1000000

    filled-new-array {v9}, [I

    move-result-object v9

    move-object v8, v9

    :cond_2
    return-object v8

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method
