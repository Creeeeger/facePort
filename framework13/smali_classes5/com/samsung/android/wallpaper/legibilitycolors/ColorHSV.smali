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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    .line 11
    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    .line 12
    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return-void
.end method

.method public static blacklist colorToHSV(I[F)V
    .locals 11
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    .line 17
    const v0, 0xffffff

    and-int/2addr v0, p0

    .line 18
    .local v0, "c":I
    shr-int/lit8 v1, v0, 0x10

    .line 19
    .local v1, "r":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 20
    .local v2, "g":I
    and-int/lit16 v3, v0, 0xff

    .line 22
    .local v3, "b":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 23
    .local v4, "min":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 24
    .local v5, "max":F
    sub-float v6, v5, v4

    .line 26
    .local v6, "delta":F
    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-eqz v8, :cond_4

    .line 27
    cmpl-float v8, v6, v7

    if-nez v8, :cond_0

    .line 28
    const/4 v7, 0x0

    .line 29
    .local v7, "h":F
    const/4 v8, 0x0

    .local v8, "s":F
    goto :goto_1

    .line 32
    .end local v7    # "h":F
    .end local v8    # "s":F
    :cond_0
    div-float v8, v6, v5

    .line 34
    .restart local v8    # "s":F
    int-to-float v9, v1

    cmpl-float v9, v9, v5

    if-nez v9, :cond_1

    .line 35
    sub-int v9, v2, v3

    int-to-float v9, v9

    div-float/2addr v9, v6

    .local v9, "h":F
    goto :goto_0

    .line 36
    .end local v9    # "h":F
    :cond_1
    int-to-float v9, v2

    cmpl-float v9, v9, v5

    if-nez v9, :cond_2

    .line 37
    const/high16 v9, 0x40000000    # 2.0f

    sub-int v10, v3, v1

    int-to-float v10, v10

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    .restart local v9    # "h":F
    goto :goto_0

    .line 39
    .end local v9    # "h":F
    :cond_2
    const/high16 v9, 0x40800000    # 4.0f

    sub-int v10, v1, v2

    int-to-float v10, v10

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    .line 41
    .restart local v9    # "h":F
    :goto_0
    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v9, v10

    .line 42
    cmpg-float v7, v9, v7

    if-gez v7, :cond_3

    .line 43
    const/high16 v7, 0x43b40000    # 360.0f

    add-float/2addr v7, v9

    .end local v9    # "h":F
    .restart local v7    # "h":F
    goto :goto_1

    .line 42
    .end local v7    # "h":F
    .restart local v9    # "h":F
    :cond_3
    move v7, v9

    .line 47
    .end local v9    # "h":F
    .restart local v7    # "h":F
    :goto_1
    const/high16 v9, 0x437f0000    # 255.0f

    div-float v9, v5, v9

    .local v9, "v":F
    goto :goto_2

    .line 51
    .end local v7    # "h":F
    .end local v8    # "s":F
    .end local v9    # "v":F
    :cond_4
    const/4 v8, 0x0

    .line 52
    .restart local v8    # "s":F
    const/4 v7, 0x0

    .line 53
    .restart local v7    # "h":F
    const/4 v9, 0x0

    .line 55
    .restart local v9    # "v":F
    :goto_2
    const/4 v10, 0x0

    aput v7, p1, v10

    .line 56
    const/4 v10, 0x1

    aput v8, p1, v10

    .line 57
    const/4 v10, 0x2

    aput v9, p1, v10

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist calcAvgColor([I)V
    .locals 2
    .param p1, "pixels"    # [I

    .line 61
    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageColor([I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    .line 62
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 64
    .local v1, "avgHSV":[F
    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->colorToHSV(I[F)V

    .line 66
    const/4 v0, 0x0

    aget v0, v1, v0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    .line 67
    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    .line 68
    const/4 v0, 0x2

    aget v0, v1, v0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    .line 69
    return-void
.end method

.method public blacklist getAvgColor()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    return v0
.end method

.method public blacklist getAvgH()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    return v0
.end method

.method public blacklist getAvgS()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    return v0
.end method

.method public blacklist getAvgV()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return v0
.end method

.method public blacklist reset()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    .line 89
    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    .line 90
    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    .line 91
    return-void
.end method
