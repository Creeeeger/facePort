.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;
.super Ljava/lang/Object;
.source "IUXColorUtils.java"


# static fields
.field public static final blacklist COLOR8_TO_NORMALIZED:F = 0.003921569f

.field static final blacklist GRAYSCALE_THRESHOLD_BRIGHTNESS:F = 0.25f

.field static final blacklist GRAYSCALE_THRESHOLD_SATURATION:F = 0.12f


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist HSVToColor([F)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([FF)I

    move-result v0

    return v0
.end method

.method public static blacklist HSVToColor([FF)I
    .locals 15

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const v3, 0x3b360b61

    mul-float/2addr v0, v3

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/high16 v4, 0x437f0000    # 255.0f

    if-nez v3, :cond_0

    mul-float v3, v2, v4

    mul-float v5, v2, v4

    mul-float v6, v2, v4

    goto :goto_1

    :cond_0
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v5, v0, v3

    cmpl-float v3, v5, v3

    if-nez v3, :cond_1

    const/4 v5, 0x0

    :cond_1
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v1

    mul-float/2addr v7, v2

    int-to-float v8, v3

    sub-float v8, v5, v8

    mul-float/2addr v8, v1

    sub-float v8, v6, v8

    mul-float/2addr v8, v2

    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-float v9, v6, v9

    mul-float/2addr v9, v1

    sub-float/2addr v6, v9

    mul-float/2addr v6, v2

    packed-switch v3, :pswitch_data_0

    move v9, v2

    move v10, v7

    move v11, v8

    goto :goto_0

    :pswitch_0
    move v9, v6

    move v10, v7

    move v11, v2

    goto :goto_0

    :pswitch_1
    move v9, v7

    move v10, v8

    move v11, v2

    goto :goto_0

    :pswitch_2
    move v9, v7

    move v10, v2

    move v11, v6

    goto :goto_0

    :pswitch_3
    move v9, v8

    move v10, v2

    move v11, v7

    goto :goto_0

    :pswitch_4
    move v9, v2

    move v10, v6

    move v11, v7

    nop

    :goto_0
    mul-float v12, v9, v4

    mul-float v13, v10, v4

    mul-float v14, v11, v4

    move v3, v12

    move v5, v13

    move v6, v14

    :goto_1
    mul-float v4, v4, p1

    float-to-int v4, v4

    float-to-int v7, v3

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-static {v4, v7, v8, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->argb(IIII)I

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist addColorColor(II)I
    .locals 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static blacklist argb(IIII)I
    .locals 3

    const/4 v0, 0x0

    shl-int/lit8 v1, p0, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static blacklist caculateLuminosity(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(III)F

    move-result v0

    return v0
.end method

.method public static blacklist caculateLuminosity(III)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-float v0, p0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p2

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist caculateLuminosity2(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(III)F

    move-result v0

    return v0
.end method

.method public static blacklist caculateLuminosity2(III)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-float v0, p0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p2

    const v2, 0x3de978d5    # 0.114f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static blacklist calculateGrayScaleColor(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateGrayScaleColor(III)F

    move-result v0

    return v0
.end method

.method public static blacklist calculateGrayScaleColor(III)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    mul-int v0, p0, p1

    add-int/2addr v0, p2

    int-to-float v0, v0

    const v1, 0x3eaaaa9f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist calculateHsvPositionFromCornSpace([FF[F)V
    .locals 8

    const/4 v0, 0x2

    aget v1, p0, v0

    const/4 v2, 0x0

    aget v3, p0, v2

    const v4, 0x3c8efa03

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v1

    mul-float/2addr v5, p1

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v5

    aput v6, p2, v2

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v2, v5

    aput v2, p2, v4

    aput v1, p2, v0

    return-void
.end method

.method public static blacklist calculateHsvPositionFromCornSpaceDouble([FD[D)V
    .locals 11

    const/4 v0, 0x2

    aget v1, p0, v0

    float-to-double v1, v1

    const/4 v3, 0x0

    aget v4, p0, v3

    const v5, 0x3c8efa03

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x1

    aget v7, p0, v6

    float-to-double v7, v7

    mul-double/2addr v7, v1

    mul-double/2addr v7, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    aput-wide v9, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    aput-wide v9, p3, v6

    aput-wide v1, p3, v0

    return-void
.end method

.method public static blacklist calculateLuminance(I)F
    .locals 3

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(III)F

    move-result v0

    return v0
.end method

.method public static blacklist calculateLuminance(III)F
    .locals 22

    const-wide v0, 0x3f70101010101010L    # 0.00392156862745098

    move/from16 v2, p0

    int-to-double v3, v2

    mul-double/2addr v3, v0

    move/from16 v5, p1

    int-to-double v6, v5

    mul-double/2addr v6, v0

    move/from16 v8, p2

    int-to-double v9, v8

    mul-double/2addr v9, v0

    const-wide v11, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v13, v3, v11

    const-wide v14, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v11, 0x4003333333333333L    # 2.4

    const-wide v16, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v18, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v13, :cond_0

    div-double v20, v3, v14

    goto :goto_0

    :cond_0
    add-double v20, v3, v18

    div-double v14, v20, v16

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    :goto_0
    move-wide/from16 v3, v20

    const-wide v13, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v15, v6, v13

    if-gez v15, :cond_1

    const-wide v13, 0x4029d70a3d70a3d7L    # 12.92

    div-double v20, v6, v13

    goto :goto_1

    :cond_1
    add-double v13, v6, v18

    div-double v13, v13, v16

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    :goto_1
    move-wide/from16 v6, v20

    const-wide v13, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v13, v9, v13

    if-gez v13, :cond_2

    const-wide v11, 0x4029d70a3d70a3d7L    # 12.92

    div-double v11, v9, v11

    goto :goto_2

    :cond_2
    add-double v18, v9, v18

    div-double v13, v18, v16

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    :goto_2
    move-wide v9, v11

    const-wide v11, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v11, v3

    const-wide v13, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v13, v6

    add-double/2addr v11, v13

    const-wide v13, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    double-to-float v11, v11

    return v11
.end method

.method public static blacklist calculateLuminanceInLinearSpace(I)F
    .locals 3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(III)F

    move-result v0

    return v0
.end method

.method public static blacklist calculateLuminanceInLinearSpace(III)F
    .locals 3

    int-to-float v0, p0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p2

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist checkGayScale(ID)Z
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkGayScale([FD)Z

    move-result v1

    return v1
.end method

.method public static blacklist checkGayScale([FD)Z
    .locals 5

    const/4 v0, 0x1

    aget v1, p0, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v3, p1

    cmpg-double v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x2

    aget v1, p0, v1

    float-to-double v1, v1

    const-wide v3, 0x3fc3333340000000L    # 0.15000000596046448

    add-double/2addr v3, p1

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist checkGrayScaleWithSV([FFF)Z
    .locals 2

    const/4 v0, 0x1

    aget v1, p0, v0

    cmpg-float v1, v1, p1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    aget v1, p0, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist checkSameHSV([F[F)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget v2, p0, v1

    aget v3, p1, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget v3, p0, v2

    aget v2, p1, v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static blacklist checkSameHSV([F[FF)Z
    .locals 13

    const/4 v0, 0x0

    const v1, 0x3df5c28f    # 0.12f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {p0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkGrayScaleWithSV([FFF)Z

    move-result v3

    invoke-static {p1, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkGrayScaleWithSV([FFF)Z

    move-result v1

    if-ne v3, v1, :cond_1

    const/4 v2, 0x3

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    const v5, 0x3fddb3d7

    mul-float/2addr v5, p2

    mul-float/2addr v5, v5

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, p2

    mul-float/2addr v6, v6

    if-eqz v3, :cond_0

    move-object v7, v2

    move v8, v6

    goto :goto_0

    :cond_0
    move-object v7, v4

    move v8, v5

    :goto_0
    invoke-static {p0, p1, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hsv_square2([F[F[F)D

    move-result-wide v9

    float-to-double v11, v8

    cmpg-double v9, v9, v11

    if-gez v9, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
        0x3f266666    # 0.65f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static blacklist checkWhite(ID)Z
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkWhite([FD)Z

    move-result v1

    return v1
.end method

.method public static blacklist checkWhite([FD)Z
    .locals 5

    const/4 v0, 0x1

    aget v1, p0, v0

    float-to-double v1, v1

    const-wide v3, 0x3fa99999a0000000L    # 0.05000000074505806

    add-double/2addr v3, p1

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x2

    aget v1, p0, v1

    float-to-double v1, v1

    const-wide v3, 0x3fecccccc0000000L    # 0.8999999761581421

    add-double/2addr v3, p1

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist colorDistanceHSV([F[F[F)D
    .locals 17

    const/4 v0, 0x2

    new-array v1, v0, [D

    const/4 v2, 0x0

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    new-array v3, v0, [D

    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aput-wide v6, v3, v2

    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    aput-wide v6, v3, v5

    aget-wide v6, v1, v2

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    aget-wide v8, v1, v5

    aget-wide v10, v3, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    aget v4, p1, v5

    aget v10, p0, v5

    sub-float/2addr v4, v10

    float-to-double v10, v4

    aget v4, p1, v0

    aget v12, p0, v0

    sub-float/2addr v4, v12

    float-to-double v12, v4

    aget v4, p2, v2

    aget v14, p2, v5

    add-float/2addr v4, v14

    aget v14, p2, v0

    add-float/2addr v4, v14

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v4

    float-to-double v14, v14

    aget v2, p2, v2

    move-object/from16 v16, v1

    float-to-double v0, v2

    mul-double/2addr v0, v14

    mul-double/2addr v8, v0

    aget v0, p2, v5

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v10, v0

    const/4 v0, 0x2

    aget v0, p2, v0

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v12, v0

    add-double v0, v8, v10

    add-double/2addr v0, v12

    return-wide v0
.end method

.method public static blacklist colorDistanceHueFast(FF)D
    .locals 6

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v3

    mul-float v4, v0, v2

    mul-float v5, v1, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public static blacklist colorDistance_hsv([F[F[F)D
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hsv_square2([F[F[F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist colorDistance_hsv_square2([F[F[F)D
    .locals 17

    const/4 v0, 0x2

    new-array v1, v0, [D

    const/4 v2, 0x0

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    new-array v3, v0, [D

    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aput-wide v6, v3, v2

    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    aput-wide v6, v3, v5

    aget-wide v6, v1, v2

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    aget-wide v8, v1, v5

    aget-wide v10, v3, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    aget v4, p1, v5

    aget v10, p0, v5

    sub-float/2addr v4, v10

    float-to-double v10, v4

    aget v4, p1, v0

    aget v12, p0, v0

    sub-float/2addr v4, v12

    float-to-double v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aget v2, p2, v2

    move-object/from16 v16, v1

    float-to-double v0, v2

    mul-double/2addr v0, v14

    mul-double/2addr v8, v0

    aget v0, p2, v5

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v10, v0

    const/4 v0, 0x2

    aget v0, p2, v0

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v12, v0

    mul-double v0, v8, v8

    mul-double v4, v10, v10

    add-double/2addr v0, v4

    mul-double v4, v12, v12

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static blacklist colorDistance_hue(FF)D
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [D

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const/4 v5, 0x1

    aput-wide v2, v1, v5

    new-array v0, v0, [D

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, v0, v4

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    aput-wide v2, v0, v5

    aget-wide v2, v1, v4

    aget-wide v6, v0, v4

    mul-double/2addr v2, v6

    aget-wide v6, v1, v5

    aget-wide v4, v0, v5

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public static blacklist colorDistance_hue([F[F)D
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hue(FF)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist colorDistance_rgb(II)D
    .locals 6

    nop

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist colorDistance_rgb_sqaure2(II)D
    .locals 6

    nop

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist colorToHSV(III[F)V
    .locals 11

    if-ge p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    int-to-float v0, v0

    move v1, v0

    int-to-float v2, p2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    int-to-float v0, p2

    :goto_1
    if-le p0, p1, :cond_2

    move v1, p0

    goto :goto_2

    :cond_2
    move v1, p1

    :goto_2
    int-to-float v1, v1

    move v2, v1

    int-to-float v3, p2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    int-to-float v1, p2

    :goto_3
    sub-float v2, v1, v0

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    cmpl-float v4, v2, v3

    const/high16 v8, 0x437f0000    # 255.0f

    if-nez v4, :cond_4

    aput v3, p3, v7

    aput v3, p3, v6

    div-float v3, v1, v8

    aput v3, p3, v5

    return-void

    :cond_4
    div-float v4, v2, v1

    int-to-float v9, p0

    cmpl-float v9, v9, v1

    if-nez v9, :cond_5

    sub-int v9, p1, p2

    int-to-float v9, v9

    div-float/2addr v9, v2

    goto :goto_4

    :cond_5
    int-to-float v9, p1

    cmpl-float v9, v9, v1

    if-nez v9, :cond_6

    sub-int v9, p2, p0

    int-to-float v9, v9

    div-float/2addr v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v9, v10

    goto :goto_4

    :cond_6
    sub-int v9, p0, p1

    int-to-float v9, v9

    div-float/2addr v9, v2

    const/high16 v10, 0x40800000    # 4.0f

    add-float/2addr v9, v10

    :goto_4
    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v9, v10

    cmpg-float v3, v9, v3

    if-gez v3, :cond_7

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v9, v3

    :cond_7
    div-float v3, v1, v8

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_5
    aput v9, p3, v7

    aput v4, p3, v6

    aput v3, p3, v5

    return-void
.end method

.method public static blacklist colorToHSV(I[F)V
    .locals 3

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(III[F)V

    return-void
.end method

.method public static blacklist combinAlphaIntoIntColor(II)I
    .locals 2

    shl-int/lit8 v0, p0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    const v1, 0xffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static blacklist convertDpToPixel(F)I
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static blacklist convertHsv2CornSpace([FF[F)V
    .locals 7

    const/4 v0, 0x2

    aget v1, p0, v0

    const/4 v2, 0x0

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v1

    mul-float/2addr v5, p1

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v6

    mul-float/2addr v6, v5

    aput v6, p2, v2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v2

    mul-float/2addr v2, v5

    aput v2, p2, v4

    aput v1, p2, v0

    return-void
.end method

.method public static blacklist convertPixelsToDp(F)F
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    div-float v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

.method public static blacklist copyHSVToHSV([F[F)V
    .locals 2

    array-length v0, p1

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist getAlphaRatio(I)F
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist getAverageColor([I)I
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v2, -0x1000000

    const/high16 v3, 0xff0000

    const v4, 0xff00

    const/16 v5, 0xff

    array-length v6, v0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    array-length v13, v0

    :goto_0
    const/high16 v15, 0xff0000

    if-ge v1, v13, :cond_1

    aget v14, v0, v1

    and-int/2addr v15, v14

    move/from16 v16, v2

    move/from16 v17, v3

    int-to-long v2, v15

    add-long/2addr v7, v2

    const v2, 0xff00

    and-int/2addr v2, v14

    int-to-long v2, v2

    add-long/2addr v9, v2

    and-int/lit16 v2, v14, 0xff

    int-to-long v2, v2

    add-long/2addr v11, v2

    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_0

    :cond_1
    move/from16 v16, v2

    move/from16 v17, v3

    int-to-long v1, v6

    div-long v1, v7, v1

    long-to-int v1, v1

    and-int/2addr v1, v15

    int-to-long v2, v6

    div-long v2, v9, v2

    long-to-int v2, v2

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-long v13, v6

    div-long v13, v11, v13

    long-to-int v3, v13

    and-int/lit16 v3, v3, 0xff

    const/high16 v13, -0x1000000

    or-int/2addr v13, v1

    or-int/2addr v13, v2

    or-int/2addr v13, v3

    return v13
.end method

.method public static blacklist getAverageHSV([I)[F
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageColor([I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    return-object v1
.end method

.method public static blacklist getAvgHSVFromTwoHSV([F[F)[F
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    aget v4, p0, v1

    aget v5, p1, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    add-float/2addr v2, v5

    const/high16 v4, 0x43b40000    # 360.0f

    cmpl-float v5, v2, v4

    if-ltz v5, :cond_0

    sub-float/2addr v2, v4

    :cond_0
    aput v2, v0, v1

    const/4 v1, 0x1

    aget v4, p0, v1

    aget v5, p1, v1

    add-float/2addr v4, v5

    mul-float/2addr v4, v3

    aput v4, v0, v1

    const/4 v1, 0x2

    aget v4, p0, v1

    aget v5, p1, v1

    add-float/2addr v4, v5

    mul-float/2addr v4, v3

    aput v4, v0, v1

    return-object v0
.end method

.method public static blacklist getBlueRatio(I)F
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist getColorFromChannelValue(I)I
    .locals 1

    invoke-static {p0, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static blacklist getColorFromLuminance(F)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    return v1
.end method

.method public static blacklist getCopiedHSV([F)[F
    .locals 7

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    new-array v6, v6, [F

    aput v1, v6, v0

    aput v3, v6, v2

    aput v5, v6, v4

    return-object v6
.end method

.method public static blacklist getGammaCorrectedValue(F)F
    .locals 4

    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    float-to-double v0, p0

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, v2

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0
.end method

.method public static blacklist getGammaCorrectionFromValue(D)D
    .locals 4

    const-wide v0, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double v0, p0, v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, p0

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static blacklist getGreenRatio(I)F
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist getHSVFromColor(I)[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-object v0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpace([F[F)F
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    aget v0, p1, v0

    sub-float/2addr v2, v0

    const/4 v0, 0x2

    aget v3, p0, v0

    aget v0, p1, v0

    sub-float/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result v0

    return v0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpace([F[FF)F
    .locals 6

    invoke-static {p0, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object v0

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v2, v1, v2

    sub-float/2addr v3, v2

    const/4 v2, 0x1

    aget v4, v0, v2

    aget v2, v1, v2

    sub-float/2addr v4, v2

    const/4 v2, 0x2

    aget v5, v0, v2

    aget v2, v1, v2

    sub-float/2addr v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result v2

    return v2
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpace([F[FF[F[F)F
    .locals 14

    const/4 v0, 0x2

    aget v1, p0, v0

    const/4 v2, 0x0

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v1

    mul-float v5, v5, p2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v6

    mul-float/2addr v6, v5

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v7

    mul-float/2addr v7, v5

    move v8, v1

    aget v0, p1, v0

    aget v1, p1, v2

    aget v2, p1, v4

    mul-float/2addr v2, v0

    mul-float v2, v2, p2

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v9

    mul-float/2addr v9, v2

    move v10, v0

    sub-float v11, v6, v4

    sub-float v12, v7, v9

    sub-float v13, v8, v10

    invoke-static {v11, v12, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result v11

    return v11
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpaceDouble([F[FF)D
    .locals 6

    invoke-static {p0, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object v0

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v2, v1, v2

    sub-float/2addr v3, v2

    const/4 v2, 0x1

    aget v4, v0, v2

    aget v2, v1, v2

    sub-float/2addr v4, v2

    const/4 v2, 0x2

    aget v5, v0, v2

    aget v2, v1, v2

    sub-float/2addr v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result v2

    float-to-double v2, v2

    return-wide v2
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpaceDouble([F[FF[F[F)D
    .locals 4

    invoke-static {p0, p2, p3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpace([FF[F)V

    invoke-static {p1, p2, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpace([FF[F)V

    const/4 v0, 0x0

    aget v1, p3, v0

    aget v0, p4, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p3, v0

    aget v0, p4, v0

    sub-float/2addr v2, v0

    const/4 v0, 0x2

    aget v3, p3, v0

    aget v0, p4, v0

    sub-float/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpaceDoubleFast([F[FF)D
    .locals 12

    const/4 v0, 0x2

    aget v1, p0, v0

    const/4 v2, 0x0

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v1

    mul-float/2addr v5, p2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v6

    mul-float/2addr v6, v5

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v7

    mul-float/2addr v7, v5

    move v8, v1

    aget v0, p1, v0

    aget v1, p1, v2

    aget v2, p1, v4

    mul-float/2addr v2, v0

    mul-float/2addr v2, p2

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v4

    mul-float/2addr v4, v2

    move v5, v0

    sub-float v9, v6, v3

    sub-float v10, v7, v4

    sub-float v11, v8, v5

    invoke-static {v9, v10, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result v9

    float-to-double v9, v9

    return-wide v9
.end method

.method public static blacklist getHsvPositionFromCornSpace([FF)[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpace([FF[F)V

    return-object v0
.end method

.method public static blacklist getHsvPositionFromCornSpaceDouble([FD)[D
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpaceDouble([FD[D)V

    return-object v0
.end method

.method public static blacklist getHumanEyeBasedHueNormalizedDistance(F)F
    .locals 8

    const/high16 v0, 0x42900000    # 72.0f

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x437c0000    # 252.0f

    sub-float v3, v1, v0

    const v4, 0x3ff33333    # 1.9f

    mul-float/2addr v3, v4

    sub-float v4, v2, v1

    const v5, 0x3faccccd    # 1.35f

    mul-float/2addr v4, v5

    cmpl-float v5, p0, v2

    if-lez v5, :cond_0

    sub-float v5, p0, v2

    add-float v6, v0, v3

    add-float/2addr v6, v4

    add-float/2addr v5, v6

    goto :goto_0

    :cond_0
    cmpl-float v5, p0, v1

    if-lez v5, :cond_1

    sub-float v5, p0, v1

    sub-float v6, v2, v1

    div-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float v6, v0, v3

    add-float/2addr v5, v6

    goto :goto_0

    :cond_1
    cmpl-float v5, p0, v0

    if-lez v5, :cond_2

    sub-float v5, p0, v0

    sub-float v6, v1, v0

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v5, v0

    goto :goto_0

    :cond_2
    move v5, p0

    :goto_0
    const/high16 v6, 0x43b40000    # 360.0f

    sub-float/2addr v6, v2

    add-float v7, v0, v3

    add-float/2addr v7, v4

    add-float/2addr v6, v7

    div-float/2addr v5, v6

    return v5
.end method

.method public static blacklist getInterpolatedColorHSVBased([F[FF)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getInterpolatedHSV([F[FF)[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static blacklist getInterpolatedHSV([F[FF)[F
    .locals 16

    move/from16 v0, p2

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aget v3, p0, v2

    aget v4, p1, v2

    cmpl-float v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_0

    aget v3, p0, v2

    aput v3, v1, v2

    goto/16 :goto_1

    :cond_0
    new-array v3, v4, [D

    aget v6, p0, v2

    invoke-static {v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v3, v2

    aget v6, p0, v2

    invoke-static {v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v3, v5

    new-array v6, v4, [D

    aget v7, p1, v2

    invoke-static {v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v6, v2

    aget v7, p1, v2

    invoke-static {v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v6, v5

    aget v7, p0, v2

    const/high16 v8, 0x42b40000    # 90.0f

    add-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    aget-wide v9, v6, v2

    invoke-static {v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v9, v11

    aget-wide v11, v6, v5

    invoke-static {v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v13

    float-to-double v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    aget-wide v10, v3, v2

    aget-wide v12, v6, v2

    mul-double/2addr v10, v12

    aget-wide v12, v3, v5

    aget-wide v14, v6, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    float-to-double v14, v0

    mul-double/2addr v12, v14

    if-eqz v9, :cond_2

    aget v14, p0, v2

    float-to-double v14, v14

    add-double/2addr v14, v12

    double-to-float v14, v14

    aput v14, v1, v2

    aget v14, v1, v2

    cmpl-float v14, v14, v8

    if-lez v14, :cond_3

    aget v14, v1, v2

    sub-float/2addr v14, v8

    aput v14, v1, v2

    goto :goto_1

    :cond_2
    aget v14, p0, v2

    float-to-double v14, v14

    sub-double/2addr v14, v12

    double-to-float v14, v14

    aput v14, v1, v2

    aget v14, v1, v2

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    aget v14, v1, v2

    add-float/2addr v14, v8

    aput v14, v1, v2

    :cond_3
    :goto_1
    aget v2, p0, v5

    aget v3, p1, v5

    invoke-static {v0, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v5

    aget v2, p0, v4

    aget v3, p1, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v4

    return-object v1
.end method

.method public static blacklist getInverseHSV([F)[F
    .locals 7

    const/4 v0, 0x0

    aget v1, p0, v0

    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    rem-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    new-array v6, v6, [F

    aput v1, v6, v0

    aput v3, v6, v2

    aput v5, v6, v4

    return-object v6
.end method

.method public static blacklist getRGBFromColor(I)[I
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRedRatio(I)F
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist hsvDistanceSquare2([F[F[F)D
    .locals 17

    const/4 v0, 0x2

    new-array v1, v0, [D

    const/4 v2, 0x0

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    new-array v3, v0, [D

    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aput-wide v6, v3, v2

    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    aput-wide v6, v3, v5

    aget-wide v6, v1, v2

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    aget-wide v8, v1, v5

    aget-wide v10, v3, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    aget v4, p1, v5

    aget v10, p0, v5

    sub-float/2addr v4, v10

    float-to-double v10, v4

    aget v4, p1, v0

    aget v12, p0, v0

    sub-float/2addr v4, v12

    float-to-double v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aget v2, p2, v2

    move-object/from16 v16, v1

    float-to-double v0, v2

    mul-double/2addr v0, v14

    mul-double/2addr v8, v0

    aget v0, p2, v5

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v10, v0

    const/4 v0, 0x2

    aget v0, p2, v0

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v12, v0

    mul-double v0, v8, v8

    mul-double v4, v10, v10

    add-double/2addr v0, v4

    mul-double v4, v12, v12

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static blacklist interpolateHSV([F[FF)[F
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v5, v4, v3

    mul-float/2addr v5, p2

    aget v6, p0, v2

    aget v7, p1, v2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    aget v6, p0, v2

    sub-float/2addr v6, v5

    const/4 v1, 0x0

    cmpg-float v1, v6, v1

    if-gez v1, :cond_1

    add-float/2addr v6, v4

    goto :goto_0

    :cond_0
    aget v6, p0, v2

    add-float/2addr v6, v5

    cmpl-float v1, v6, v4

    if-ltz v1, :cond_1

    sub-float/2addr v6, v4

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    aget v4, p0, v2

    aget v5, p1, v2

    aget v6, p0, v2

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    add-float v6, v4, v5

    :goto_1
    aput v6, v0, v2

    const/4 v1, 0x1

    aget v2, p0, v1

    aget v4, p1, v1

    aget v5, p0, v1

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x2

    aget v2, p0, v1

    aget v4, p1, v1

    aget v5, p0, v1

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    aput v2, v0, v1

    return-object v0
.end method

.method public static blacklist multipleColorValue(IF)I
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static blacklist resetHSVBlack([F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    const/4 v0, 0x2

    aput v1, p0, v0

    return-void
.end method

.method public static blacklist rgb(III)I
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static blacklist setHSV([FFFF)V
    .locals 1

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 v0, 0x1

    aput p2, p0, v0

    const/4 v0, 0x2

    aput p3, p0, v0

    return-void
.end method


# virtual methods
.method blacklist getGradation(IIIIF)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p5

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;-><init>(Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;IIIFI)V

    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/PaintDrawable;->setBounds(IIII)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/PaintDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method
