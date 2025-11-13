.class public Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;
.super Ljava/lang/Object;
.source "ColorHSV.java"


# instance fields
.field blacklist avgColor:I

.field blacklist avgH:F

.field blacklist avgS:F

.field blacklist avgV:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return-void
.end method

.method public static blacklist colorToHSV(I[F)V
    .locals 11

    const v0, 0xffffff

    and-int/2addr v0, p0

    shr-int/lit8 v1, v0, 0x10

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v0, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v5, v4

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-eqz v8, :cond_4

    cmpl-float v8, v6, v7

    if-nez v8, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    div-float v8, v6, v5

    int-to-float v9, v1

    cmpl-float v9, v9, v5

    if-nez v9, :cond_1

    sub-int v9, v2, v3

    int-to-float v9, v9

    div-float/2addr v9, v6

    goto :goto_0

    :cond_1
    int-to-float v9, v2

    cmpl-float v9, v9, v5

    if-nez v9, :cond_2

    sub-int v9, v3, v1

    int-to-float v9, v9

    div-float/2addr v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v9, v10

    goto :goto_0

    :cond_2
    sub-int v9, v1, v2

    int-to-float v9, v9

    div-float/2addr v9, v6

    const/high16 v10, 0x40800000    # 4.0f

    add-float/2addr v9, v10

    :goto_0
    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v9, v10

    cmpg-float v7, v9, v7

    if-gez v7, :cond_3

    const/high16 v7, 0x43b40000    # 360.0f

    add-float/2addr v7, v9

    goto :goto_1

    :cond_3
    move v7, v9

    :goto_1
    const/high16 v9, 0x437f0000    # 255.0f

    div-float v9, v5, v9

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x0

    aput v7, p1, v10

    const/4 v10, 0x1

    aput v8, p1, v10

    const/4 v10, 0x2

    aput v9, p1, v10

    return-void
.end method


# virtual methods
.method public blacklist calcAvgColor([I)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageColor([I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->colorToHSV(I[F)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return-void
.end method

.method public blacklist getAvgColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    return v0
.end method

.method public blacklist getAvgH()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    return v0
.end method

.method public blacklist getAvgS()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    return v0
.end method

.method public blacklist getAvgV()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return v0
.end method

.method public blacklist reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return-void
.end method
