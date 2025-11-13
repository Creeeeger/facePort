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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist HSVToColor([F)I
    .locals 1
    .param p0, "hsv"    # [F

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([FF)I

    move-result v0

    return v0
.end method

.method public static blacklist HSVToColor([FF)I
    .locals 15
    .param p0, "hsv"    # [F
    .param p1, "alpha"    # F

    .line 106
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 107
    .local v0, "h":F
    const/4 v1, 0x1

    aget v1, p0, v1

    .line 108
    .local v1, "s":F
    const/4 v2, 0x2

    aget v2, p0, v2

    .line 110
    .local v2, "v":F
    const v3, 0x3b360b61

    mul-float/2addr v0, v3

    .line 113
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/high16 v4, 0x437f0000    # 255.0f

    if-nez v3, :cond_0

    .line 114
    mul-float v3, v2, v4

    .line 115
    .local v3, "r":F
    mul-float v5, v2, v4

    .line 116
    .local v5, "g":F
    mul-float v6, v2, v4

    .local v6, "b":F
    goto :goto_1

    .line 118
    .end local v3    # "r":F
    .end local v5    # "g":F
    .end local v6    # "b":F
    :cond_0
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v5, v0, v3

    .line 119
    .local v5, "var_h":F
    cmpl-float v3, v5, v3

    if-nez v3, :cond_1

    .line 120
    const/4 v5, 0x0

    .line 122
    :cond_1
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 124
    .local v3, "var_i":I
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v1

    mul-float/2addr v7, v2

    .line 125
    .local v7, "var_1":F
    int-to-float v8, v3

    sub-float v8, v5, v8

    mul-float/2addr v8, v1

    sub-float v8, v6, v8

    mul-float/2addr v8, v2

    .line 126
    .local v8, "var_2":F
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-float v9, v6, v9

    mul-float/2addr v9, v1

    sub-float/2addr v6, v9

    mul-float/2addr v6, v2

    .line 131
    .local v6, "var_3":F
    packed-switch v3, :pswitch_data_0

    .line 158
    move v9, v2

    .line 159
    .local v9, "var_r":F
    move v10, v7

    .line 160
    .local v10, "var_g":F
    move v11, v8

    .local v11, "var_b":F
    goto :goto_0

    .line 153
    .end local v9    # "var_r":F
    .end local v10    # "var_g":F
    .end local v11    # "var_b":F
    :pswitch_0
    move v9, v6

    .line 154
    .restart local v9    # "var_r":F
    move v10, v7

    .line 155
    .restart local v10    # "var_g":F
    move v11, v2

    .line 156
    .restart local v11    # "var_b":F
    goto :goto_0

    .line 148
    .end local v9    # "var_r":F
    .end local v10    # "var_g":F
    .end local v11    # "var_b":F
    :pswitch_1
    move v9, v7

    .line 149
    .restart local v9    # "var_r":F
    move v10, v8

    .line 150
    .restart local v10    # "var_g":F
    move v11, v2

    .line 151
    .restart local v11    # "var_b":F
    goto :goto_0

    .line 143
    .end local v9    # "var_r":F
    .end local v10    # "var_g":F
    .end local v11    # "var_b":F
    :pswitch_2
    move v9, v7

    .line 144
    .restart local v9    # "var_r":F
    move v10, v2

    .line 145
    .restart local v10    # "var_g":F
    move v11, v6

    .line 146
    .restart local v11    # "var_b":F
    goto :goto_0

    .line 138
    .end local v9    # "var_r":F
    .end local v10    # "var_g":F
    .end local v11    # "var_b":F
    :pswitch_3
    move v9, v8

    .line 139
    .restart local v9    # "var_r":F
    move v10, v2

    .line 140
    .restart local v10    # "var_g":F
    move v11, v7

    .line 141
    .restart local v11    # "var_b":F
    goto :goto_0

    .line 133
    .end local v9    # "var_r":F
    .end local v10    # "var_g":F
    .end local v11    # "var_b":F
    :pswitch_4
    move v9, v2

    .line 134
    .restart local v9    # "var_r":F
    move v10, v6

    .line 135
    .restart local v10    # "var_g":F
    move v11, v7

    .line 136
    .restart local v11    # "var_b":F
    nop

    .line 163
    :goto_0
    mul-float v12, v9, v4

    .line 164
    .local v12, "r":F
    mul-float v13, v10, v4

    .line 165
    .local v13, "g":F
    mul-float v14, v11, v4

    move v3, v12

    move v5, v13

    move v6, v14

    .line 167
    .end local v7    # "var_1":F
    .end local v8    # "var_2":F
    .end local v9    # "var_r":F
    .end local v10    # "var_g":F
    .end local v11    # "var_b":F
    .end local v12    # "r":F
    .end local v13    # "g":F
    .local v3, "r":F
    .local v5, "g":F
    .local v6, "b":F
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
    .param p0, "colorA"    # I
    .param p1, "colorB"    # I

    .line 764
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
    .param p0, "a"    # I
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "result":I
    shl-int/lit8 v1, p0, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 177
    shl-int/lit8 v1, p1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 178
    shl-int/lit8 v1, p2, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 179
    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    .line 180
    return v0
.end method

.method public static blacklist caculateLuminosity(I)F
    .locals 3
    .param p0, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 582
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
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
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
    .param p0, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
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
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
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
    .param p0, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 568
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
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    mul-int v0, p0, p1

    add-int/2addr v0, p2

    int-to-float v0, v0

    const v1, 0x3eaaaa9f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist calculateHsvPositionFromCornSpace([FF[F)V
    .locals 8
    .param p0, "hsv"    # [F
    .param p1, "sWeight"    # F
    .param p2, "result"    # [F

    .line 422
    const/4 v0, 0x2

    aget v1, p0, v0

    .line 423
    .local v1, "v":F
    const/4 v2, 0x0

    aget v3, p0, v2

    const v4, 0x3c8efa03

    mul-float/2addr v3, v4

    .line 424
    .local v3, "hRadian":F
    const/4 v4, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v1

    mul-float/2addr v5, p1

    .line 425
    .local v5, "diameterValue":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v5

    aput v6, p2, v2

    .line 426
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v2, v5

    aput v2, p2, v4

    .line 427
    aput v1, p2, v0

    .line 428
    return-void
.end method

.method public static blacklist calculateHsvPositionFromCornSpaceDouble([FD[D)V
    .locals 11
    .param p0, "hsv"    # [F
    .param p1, "sWeight"    # D
    .param p3, "result"    # [D

    .line 467
    const/4 v0, 0x2

    aget v1, p0, v0

    float-to-double v1, v1

    .line 468
    .local v1, "v":D
    const/4 v3, 0x0

    aget v4, p0, v3

    const v5, 0x3c8efa03

    mul-float/2addr v4, v5

    float-to-double v4, v4

    .line 469
    .local v4, "hRadian":D
    const/4 v6, 0x1

    aget v7, p0, v6

    float-to-double v7, v7

    mul-double/2addr v7, v1

    mul-double/2addr v7, p1

    .line 470
    .local v7, "diameterValue":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    aput-wide v9, p3, v3

    .line 471
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    aput-wide v9, p3, v6

    .line 472
    aput-wide v1, p3, v0

    .line 473
    return-void
.end method

.method public static blacklist calculateLuminance(I)F
    .locals 3
    .param p0, "color"    # I

    .line 599
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
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 615
    const-wide v0, 0x3f70101010101010L    # 0.00392156862745098

    .line 616
    .local v0, "colorToNormalized":D
    move/from16 v2, p0

    int-to-double v3, v2

    mul-double/2addr v3, v0

    .line 617
    .local v3, "nr":D
    move/from16 v5, p1

    int-to-double v6, v5

    mul-double/2addr v6, v0

    .line 618
    .local v6, "ng":D
    move/from16 v8, p2

    int-to-double v9, v8

    mul-double/2addr v9, v0

    .line 619
    .local v9, "nb":D
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

    .line 620
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

    .line 621
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

    .line 622
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
    .param p0, "color"    # I

    .line 645
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
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 637
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
    .param p0, "color"    # I
    .param p1, "offsetValue"    # D

    .line 535
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 536
    .local v0, "hsv":[F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 537
    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkGayScale([FD)Z

    move-result v1

    return v1
.end method

.method public static blacklist checkGayScale([FD)Z
    .locals 5
    .param p0, "hsv"    # [F
    .param p1, "offsetValue"    # D

    .line 541
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
    .param p0, "hsv"    # [F
    .param p1, "offsetValue_s"    # F
    .param p2, "offsetValue_b"    # F

    .line 545
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
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F

    .line 88
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aget v1, p0, v2

    aget v3, p1, v2

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget v3, p0, v1

    aget v1, p1, v1

    cmpl-float v1, v3, v1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static blacklist checkSameHSV([F[FF)Z
    .locals 13
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F
    .param p2, "distancThresholdRatio"    # F

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "result":Z
    const v1, 0x3df5c28f    # 0.12f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {p0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkGrayScaleWithSV([FFF)Z

    move-result v3

    .line 724
    .local v3, "isGrayScaleA":Z
    invoke-static {p1, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkGrayScaleWithSV([FFF)Z

    move-result v1

    .line 725
    .local v1, "isGrayScaleB":Z
    if-ne v3, v1, :cond_1

    .line 726
    const/4 v2, 0x3

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    .line 728
    .local v4, "clusterCalcWeightColor":[F
    const v5, 0x3fddb3d7

    mul-float/2addr v5, p2

    .line 729
    .local v5, "squaredThresholdDistanceColor":F
    mul-float/2addr v5, v5

    .line 731
    new-array v2, v2, [F

    fill-array-data v2, :array_1

    .line 733
    .local v2, "clusterCalcWeightMono":[F
    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, p2

    .line 734
    .local v6, "squaredThresholdDistanceMono":F
    mul-float/2addr v6, v6

    .line 738
    if-eqz v3, :cond_0

    .line 739
    move-object v7, v2

    .line 740
    .local v7, "clusterCalcWeight":[F
    move v8, v6

    .local v8, "squaredThresholdDistance":F
    goto :goto_0

    .line 742
    .end local v7    # "clusterCalcWeight":[F
    .end local v8    # "squaredThresholdDistance":F
    :cond_0
    move-object v7, v4

    .line 743
    .restart local v7    # "clusterCalcWeight":[F
    move v8, v5

    .line 747
    .restart local v8    # "squaredThresholdDistance":F
    :goto_0
    invoke-static {p0, p1, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hsv_square2([F[F[F)D

    move-result-wide v9

    float-to-double v11, v8

    cmpg-double v9, v9, v11

    if-gez v9, :cond_1

    .line 748
    const/4 v0, 0x1

    .line 751
    .end local v2    # "clusterCalcWeightMono":[F
    .end local v4    # "clusterCalcWeightColor":[F
    .end local v5    # "squaredThresholdDistanceColor":F
    .end local v6    # "squaredThresholdDistanceMono":F
    .end local v7    # "clusterCalcWeight":[F
    .end local v8    # "squaredThresholdDistance":F
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
    .param p0, "color"    # I
    .param p1, "offsetValue"    # D

    .line 549
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 550
    .local v0, "hsv":[F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 551
    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkWhite([FD)Z

    move-result v1

    return v1
.end method

.method public static blacklist checkWhite([FD)Z
    .locals 5
    .param p0, "hsv"    # [F
    .param p1, "offsetValue"    # D

    .line 555
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
    .param p0, "hsv_a"    # [F
    .param p1, "hsv_b"    # [F
    .param p2, "hsv_weight"    # [F

    .line 493
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 494
    .local v1, "hueVector_color_A":[D
    const/4 v2, 0x0

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 495
    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    .line 497
    new-array v3, v0, [D

    .line 498
    .local v3, "hueVector_color_B":[D
    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 499
    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 501
    aget-wide v6, v1, v2

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    aget-wide v8, v1, v5

    aget-wide v10, v3, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 502
    .local v6, "dot":D
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    .line 504
    .local v8, "diff_h":D
    aget v4, p1, v5

    aget v10, p0, v5

    sub-float/2addr v4, v10

    float-to-double v10, v4

    .line 505
    .local v10, "diff_s":D
    aget v4, p1, v0

    aget v12, p0, v0

    sub-float/2addr v4, v12

    float-to-double v12, v4

    .line 507
    .local v12, "diff_b":D
    aget v4, p2, v2

    aget v14, p2, v5

    add-float/2addr v4, v14

    aget v14, p2, v0

    add-float/2addr v4, v14

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v4

    float-to-double v14, v14

    .line 508
    .local v14, "invTotalLengthAdjuster":D
    aget v2, p2, v2

    move-object/from16 v16, v1

    .end local v1    # "hueVector_color_A":[D
    .local v16, "hueVector_color_A":[D
    float-to-double v0, v2

    mul-double/2addr v0, v14

    mul-double/2addr v8, v0

    .line 509
    aget v0, p2, v5

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v10, v0

    .line 510
    const/4 v0, 0x2

    aget v0, p2, v0

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v12, v0

    .line 512
    add-double v0, v8, v10

    add-double/2addr v0, v12

    .line 513
    .local v0, "hsvDistance_square2":D
    return-wide v0
.end method

.method public static blacklist colorDistanceHueFast(FF)D
    .locals 6
    .param p0, "hueA"    # F
    .param p1, "hueB"    # F

    .line 299
    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v0

    .line 300
    .local v0, "hueVectorAX":F
    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v1

    .line 301
    .local v1, "hueVectorAY":F
    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v2

    .line 302
    .local v2, "hueVectorBX":F
    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v3

    .line 304
    .local v3, "hueVectorBY":F
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
    .param p0, "hsv_a"    # [F
    .param p1, "hsv_b"    # [F
    .param p2, "hsv_weight"    # [F

    .line 517
    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hsv_square2([F[F[F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist colorDistance_hsv_square2([F[F[F)D
    .locals 17
    .param p0, "hsv_a"    # [F
    .param p1, "hsv_b"    # [F
    .param p2, "hsv_weight"    # [F

    .line 338
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 339
    .local v1, "hueVector_color_A":[D
    const/4 v2, 0x0

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 340
    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    .line 342
    new-array v3, v0, [D

    .line 343
    .local v3, "hueVector_color_B":[D
    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 344
    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 346
    aget-wide v6, v1, v2

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    aget-wide v8, v1, v5

    aget-wide v10, v3, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 347
    .local v6, "dot":D
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    .line 349
    .local v8, "diff_h":D
    aget v4, p1, v5

    aget v10, p0, v5

    sub-float/2addr v4, v10

    float-to-double v10, v4

    .line 350
    .local v10, "diff_s":D
    aget v4, p1, v0

    aget v12, p0, v0

    sub-float/2addr v4, v12

    float-to-double v12, v4

    .line 353
    .local v12, "diff_b":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 354
    .local v14, "invTotalLengthAdjuster":D
    aget v2, p2, v2

    move-object/from16 v16, v1

    .end local v1    # "hueVector_color_A":[D
    .local v16, "hueVector_color_A":[D
    float-to-double v0, v2

    mul-double/2addr v0, v14

    mul-double/2addr v8, v0

    .line 355
    aget v0, p2, v5

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v10, v0

    .line 356
    const/4 v0, 0x2

    aget v0, p2, v0

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v12, v0

    .line 358
    mul-double v0, v8, v8

    mul-double v4, v10, v10

    add-double/2addr v0, v4

    mul-double v4, v12, v12

    add-double/2addr v0, v4

    .line 359
    .local v0, "hsvDistanceSquare2":D
    return-wide v0
.end method

.method public static blacklist colorDistance_hue(FF)D
    .locals 8
    .param p0, "hueA"    # F
    .param p1, "hueB"    # F

    .line 285
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 286
    .local v1, "hueVector_color_A":[D
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 287
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const/4 v5, 0x1

    aput-wide v2, v1, v5

    .line 289
    new-array v0, v0, [D

    .line 290
    .local v0, "hueVector_color_B":[D
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 291
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    aput-wide v2, v0, v5

    .line 293
    aget-wide v2, v1, v4

    aget-wide v6, v0, v4

    mul-double/2addr v2, v6

    aget-wide v6, v1, v5

    aget-wide v4, v0, v5

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    .line 294
    .local v2, "dot":D
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public static blacklist colorDistance_hue([F[F)D
    .locals 2
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F

    .line 309
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hue(FF)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist colorDistance_rgb(II)D
    .locals 6
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .line 521
    nop

    .line 522
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 523
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 524
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 521
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist colorDistance_rgb_sqaure2(II)D
    .locals 6
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .line 528
    nop

    .line 529
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 530
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 531
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 528
    return-wide v0
.end method

.method public static blacklist colorToHSV(III[F)V
    .locals 11
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "hsv"    # [F

    .line 30
    if-ge p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    int-to-float v0, v0

    move v1, v0

    .local v1, "min":F
    int-to-float v2, p2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    int-to-float v0, p2

    .line 31
    .end local v1    # "min":F
    .local v0, "min":F
    :goto_1
    if-le p0, p1, :cond_2

    move v1, p0

    goto :goto_2

    :cond_2
    move v1, p1

    :goto_2
    int-to-float v1, v1

    move v2, v1

    .local v2, "max":F
    int-to-float v3, p2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    int-to-float v1, p2

    .line 32
    .end local v2    # "max":F
    .local v1, "max":F
    :goto_3
    sub-float v2, v1, v0

    .line 34
    .local v2, "delta":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    .line 35
    cmpl-float v4, v2, v3

    const/high16 v8, 0x437f0000    # 255.0f

    if-nez v4, :cond_4

    .line 36
    aput v3, p3, v7

    .line 37
    aput v3, p3, v6

    .line 38
    div-float v3, v1, v8

    aput v3, p3, v5

    .line 39
    return-void

    .line 42
    :cond_4
    div-float v4, v2, v1

    .line 44
    .local v4, "s":F
    int-to-float v9, p0

    cmpl-float v9, v9, v1

    if-nez v9, :cond_5

    .line 45
    sub-int v9, p1, p2

    int-to-float v9, v9

    div-float/2addr v9, v2

    .local v9, "h":F
    goto :goto_4

    .line 46
    .end local v9    # "h":F
    :cond_5
    int-to-float v9, p1

    cmpl-float v9, v9, v1

    if-nez v9, :cond_6

    .line 47
    const/high16 v9, 0x40000000    # 2.0f

    sub-int v10, p2, p0

    int-to-float v10, v10

    div-float/2addr v10, v2

    add-float/2addr v9, v10

    .restart local v9    # "h":F
    goto :goto_4

    .line 49
    .end local v9    # "h":F
    :cond_6
    const/high16 v9, 0x40800000    # 4.0f

    sub-int v10, p0, p1

    int-to-float v10, v10

    div-float/2addr v10, v2

    add-float/2addr v9, v10

    .line 52
    .restart local v9    # "h":F
    :goto_4
    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v9, v10

    .line 54
    cmpg-float v3, v9, v3

    if-gez v3, :cond_7

    .line 55
    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v9, v3

    .line 58
    :cond_7
    div-float v3, v1, v8

    .local v3, "v":F
    goto :goto_5

    .line 62
    .end local v3    # "v":F
    .end local v4    # "s":F
    .end local v9    # "h":F
    :cond_8
    const/4 v9, 0x0

    .line 63
    .restart local v9    # "h":F
    const/4 v4, 0x0

    .line 64
    .restart local v4    # "s":F
    const/4 v3, 0x0

    .line 66
    .restart local v3    # "v":F
    :goto_5
    aput v9, p3, v7

    .line 67
    aput v4, p3, v6

    .line 68
    aput v3, p3, v5

    .line 69
    return-void
.end method

.method public static blacklist colorToHSV(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    .line 24
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(III[F)V

    .line 25
    return-void
.end method

.method public static blacklist combinAlphaIntoIntColor(II)I
    .locals 2
    .param p0, "alpha"    # I
    .param p1, "color"    # I

    .line 661
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
    .param p0, "dp"    # F

    .line 655
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 656
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p0

    .line 657
    .local v1, "px":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static blacklist convertHsv2CornSpace([FF[F)V
    .locals 7
    .param p0, "hsv"    # [F
    .param p1, "weight"    # F
    .param p2, "dst"    # [F

    .line 370
    const/4 v0, 0x2

    aget v1, p0, v0

    .line 371
    .local v1, "v":F
    const/4 v2, 0x0

    aget v3, p0, v2

    .line 372
    .local v3, "degree":F
    const/4 v4, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v1

    mul-float/2addr v5, p1

    .line 373
    .local v5, "diameterValue":F
    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v6

    mul-float/2addr v6, v5

    aput v6, p2, v2

    .line 374
    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v2

    mul-float/2addr v2, v5

    aput v2, p2, v4

    .line 375
    aput v1, p2, v0

    .line 376
    return-void
.end method

.method public static blacklist convertPixelsToDp(F)F
    .locals 3
    .param p0, "px"    # F

    .line 649
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 650
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    div-float v1, p0, v1

    .line 651
    .local v1, "dp":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

.method public static blacklist copyHSVToHSV([F[F)V
    .locals 2
    .param p0, "dst"    # [F
    .param p1, "src"    # [F

    .line 72
    array-length v0, p1

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public static blacklist getAlphaRatio(I)F
    .locals 2
    .param p0, "color"    # I

    .line 780
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist getAverageColor([I)I
    .locals 18
    .param p0, "pixels"    # [I

    .line 216
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 217
    return v1

    .line 219
    :cond_0
    const/high16 v2, -0x1000000

    .line 220
    .local v2, "A_MASK":I
    const/high16 v3, 0xff0000

    .line 221
    .local v3, "R_MASK":I
    const v4, 0xff00

    .line 222
    .local v4, "G_MASK":I
    const/16 v5, 0xff

    .line 223
    .local v5, "B_MASK":I
    array-length v6, v0

    .line 224
    .local v6, "pixelNum":I
    const-wide/16 v7, 0x0

    .local v7, "r":J
    const-wide/16 v9, 0x0

    .local v9, "g":J
    const-wide/16 v11, 0x0

    .line 226
    .local v11, "b":J
    array-length v13, v0

    :goto_0
    const/high16 v15, 0xff0000

    if-ge v1, v13, :cond_1

    aget v14, v0, v1

    .line 227
    .local v14, "pixel":I
    and-int/2addr v15, v14

    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "A_MASK":I
    .end local v3    # "R_MASK":I
    .local v16, "A_MASK":I
    .local v17, "R_MASK":I
    int-to-long v2, v15

    add-long/2addr v7, v2

    .line 228
    const v2, 0xff00

    and-int/2addr v2, v14

    int-to-long v2, v2

    add-long/2addr v9, v2

    .line 229
    and-int/lit16 v2, v14, 0xff

    int-to-long v2, v2

    add-long/2addr v11, v2

    .line 226
    .end local v14    # "pixel":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_0

    .line 231
    .end local v16    # "A_MASK":I
    .end local v17    # "R_MASK":I
    .restart local v2    # "A_MASK":I
    .restart local v3    # "R_MASK":I
    :cond_1
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "A_MASK":I
    .end local v3    # "R_MASK":I
    .restart local v16    # "A_MASK":I
    .restart local v17    # "R_MASK":I
    int-to-long v1, v6

    div-long v1, v7, v1

    long-to-int v1, v1

    and-int/2addr v1, v15

    .line 232
    .local v1, "avgR":I
    int-to-long v2, v6

    div-long v2, v9, v2

    long-to-int v2, v2

    const v3, 0xff00

    and-int/2addr v2, v3

    .line 233
    .local v2, "avgG":I
    int-to-long v13, v6

    div-long v13, v11, v13

    long-to-int v3, v13

    and-int/lit16 v3, v3, 0xff

    .line 234
    .local v3, "avgB":I
    const/high16 v13, -0x1000000

    or-int/2addr v13, v1

    or-int/2addr v13, v2

    or-int/2addr v13, v3

    return v13
.end method

.method public static blacklist getAverageHSV([I)[F
    .locals 2
    .param p0, "pixels"    # [I

    .line 278
    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageColor([I)I

    move-result v0

    .line 279
    .local v0, "avgColor":I
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 280
    .local v1, "avgHSV":[F
    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    .line 281
    return-object v1
.end method

.method public static blacklist getAvgHSVFromTwoHSV([F[F)[F
    .locals 6
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F

    .line 238
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 239
    .local v0, "hsvResult":[F
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 240
    .local v2, "avgHue":F
    aget v4, p0, v1

    aget v5, p1, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 241
    add-float/2addr v2, v5

    .line 242
    const/high16 v4, 0x43b40000    # 360.0f

    cmpl-float v5, v2, v4

    if-ltz v5, :cond_0

    .line 243
    sub-float/2addr v2, v4

    .line 246
    :cond_0
    aput v2, v0, v1

    .line 247
    const/4 v1, 0x1

    aget v4, p0, v1

    aget v5, p1, v1

    add-float/2addr v4, v5

    mul-float/2addr v4, v3

    aput v4, v0, v1

    .line 248
    const/4 v1, 0x2

    aget v4, p0, v1

    aget v5, p1, v1

    add-float/2addr v4, v5

    mul-float/2addr v4, v3

    aput v4, v0, v1

    .line 249
    return-object v0
.end method

.method public static blacklist getBlueRatio(I)F
    .locals 2
    .param p0, "color"    # I

    .line 776
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist getColorFromChannelValue(I)I
    .locals 1
    .param p0, "aChannel"    # I

    .line 789
    invoke-static {p0, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static blacklist getColorFromLuminance(F)I
    .locals 2
    .param p0, "luminance"    # F

    .line 784
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 785
    .local v0, "iLuma":I
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    return v1
.end method

.method public static blacklist getCopiedHSV([F)[F
    .locals 3
    .param p0, "srcHSV"    # [F

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    aget v2, p0, v1

    aput v2, v0, v1

    return-object v0
.end method

.method public static blacklist getGammaCorrectedValue(F)F
    .locals 4
    .param p0, "value"    # F

    .line 628
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

    move p0, v0

    return v0
.end method

.method public static blacklist getGammaCorrectionFromValue(D)D
    .locals 4
    .param p0, "val"    # D

    .line 632
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
    .param p0, "color"    # I

    .line 772
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist getHSVFromColor(I)[F
    .locals 1
    .param p0, "color"    # I

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 97
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 98
    return-object v0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpace([F[F)F
    .locals 4
    .param p0, "hsvPositionA"    # [F
    .param p1, "hsvPositionB"    # [F

    .line 379
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
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F
    .param p2, "d"    # F

    .line 363
    invoke-static {p0, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object v0

    .line 364
    .local v0, "hsvPositionA":[F
    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object v1

    .line 365
    .local v1, "hsvPositionB":[F
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
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F
    .param p2, "d"    # F
    .param p3, "bufferA"    # [F
    .param p4, "bufferB"    # [F

    .line 399
    const/4 v0, 0x2

    aget v1, p0, v0

    .line 400
    .local v1, "v":F
    const/4 v2, 0x0

    aget v3, p0, v2

    .line 401
    .local v3, "hRadian":F
    const/4 v4, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v1

    mul-float v5, v5, p2

    .line 402
    .local v5, "diameterValue":F
    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v6

    mul-float/2addr v6, v5

    .line 403
    .local v6, "hA":F
    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v7

    mul-float/2addr v7, v5

    .line 404
    .local v7, "sA":F
    move v8, v1

    .line 406
    .local v8, "vA":F
    aget v0, p1, v0

    .line 407
    .end local v1    # "v":F
    .local v0, "v":F
    aget v1, p1, v2

    .line 408
    .local v1, "hRadianB":F
    aget v2, p1, v4

    mul-float/2addr v2, v0

    mul-float v2, v2, p2

    .line 409
    .local v2, "diameterValueB":F
    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v4

    mul-float/2addr v4, v2

    .line 410
    .local v4, "hB":F
    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v9

    mul-float/2addr v9, v2

    .line 411
    .local v9, "sB":F
    move v10, v0

    .line 412
    .local v10, "vB":F
    sub-float v11, v6, v4

    sub-float v12, v7, v9

    sub-float v13, v8, v10

    invoke-static {v11, v12, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result v11

    return v11
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpaceDouble([F[FF)D
    .locals 6
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F
    .param p2, "d"    # F

    .line 431
    invoke-static {p0, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object v0

    .line 432
    .local v0, "hsvPositionA":[F
    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object v1

    .line 433
    .local v1, "hsvPositionB":[F
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
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F
    .param p2, "d"    # F
    .param p3, "bufferA"    # [F
    .param p4, "bufferB"    # [F

    .line 438
    invoke-static {p0, p2, p3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpace([FF[F)V

    .line 439
    invoke-static {p1, p2, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpace([FF[F)V

    .line 440
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
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F
    .param p2, "d"    # F

    .line 444
    const/4 v0, 0x2

    aget v1, p0, v0

    .line 445
    .local v1, "v":F
    const/4 v2, 0x0

    aget v3, p0, v2

    .line 446
    .local v3, "degree":F
    const/4 v4, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v1

    mul-float/2addr v5, p2

    .line 447
    .local v5, "diameterValue":F
    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v6

    mul-float/2addr v6, v5

    .line 448
    .local v6, "hA":F
    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v7

    mul-float/2addr v7, v5

    .line 449
    .local v7, "sA":F
    move v8, v1

    .line 451
    .local v8, "vA":F
    aget v0, p1, v0

    .line 452
    .end local v1    # "v":F
    .local v0, "v":F
    aget v1, p1, v2

    .line 453
    .end local v3    # "degree":F
    .local v1, "degree":F
    aget v2, p1, v4

    mul-float/2addr v2, v0

    mul-float/2addr v2, p2

    .line 454
    .end local v5    # "diameterValue":F
    .local v2, "diameterValue":F
    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v3

    mul-float/2addr v3, v2

    .line 455
    .local v3, "hB":F
    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v4

    mul-float/2addr v4, v2

    .line 456
    .local v4, "sB":F
    move v5, v0

    .line 457
    .local v5, "vB":F
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
    .param p0, "hsv"    # [F
    .param p1, "sWeight"    # F

    .line 416
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 417
    .local v0, "result":[F
    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpace([FF[F)V

    .line 418
    return-object v0
.end method

.method public static blacklist getHsvPositionFromCornSpaceDouble([FD)[D
    .locals 1
    .param p0, "hsv"    # [F
    .param p1, "sWeight"    # D

    .line 461
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 462
    .local v0, "result":[D
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpaceDouble([FD[D)V

    .line 463
    return-object v0
.end method

.method public static blacklist getHumanEyeBasedHueNormalizedDistance(F)F
    .locals 8
    .param p0, "hue"    # F

    .line 701
    const/high16 v0, 0x42900000    # 72.0f

    .line 702
    .local v0, "hLime":F
    const/high16 v1, 0x43340000    # 180.0f

    .line 703
    .local v1, "hCyan":F
    const/high16 v2, 0x437c0000    # 252.0f

    .line 704
    .local v2, "hBlue":F
    sub-float v3, v1, v0

    const v4, 0x3ff33333    # 1.9f

    mul-float/2addr v3, v4

    .line 705
    .local v3, "hueScopeLength_lc":F
    sub-float v4, v2, v1

    const v5, 0x3faccccd    # 1.35f

    mul-float/2addr v4, v5

    .line 707
    .local v4, "hueScopeLength_cb":F
    cmpl-float v5, p0, v2

    if-lez v5, :cond_0

    .line 708
    sub-float v5, p0, v2

    add-float v6, v0, v3

    add-float/2addr v6, v4

    add-float/2addr v5, v6

    .local v5, "adjustedHue":F
    goto :goto_0

    .line 709
    .end local v5    # "adjustedHue":F
    :cond_0
    cmpl-float v5, p0, v1

    if-lez v5, :cond_1

    .line 710
    sub-float v5, p0, v1

    sub-float v6, v2, v1

    div-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float v6, v0, v3

    add-float/2addr v5, v6

    .restart local v5    # "adjustedHue":F
    goto :goto_0

    .line 711
    .end local v5    # "adjustedHue":F
    :cond_1
    cmpl-float v5, p0, v0

    if-lez v5, :cond_2

    .line 712
    sub-float v5, p0, v0

    sub-float v6, v1, v0

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v5, v0

    .restart local v5    # "adjustedHue":F
    goto :goto_0

    .line 714
    .end local v5    # "adjustedHue":F
    :cond_2
    move v5, p0

    .line 716
    .restart local v5    # "adjustedHue":F
    :goto_0
    const/high16 v6, 0x43b40000    # 360.0f

    sub-float/2addr v6, v2

    add-float v7, v0, v3

    add-float/2addr v7, v4

    add-float/2addr v6, v7

    .line 717
    .local v6, "maxHue":F
    div-float/2addr v5, v6

    .line 718
    return v5
.end method

.method public static blacklist getInterpolatedColorHSVBased([F[FF)I
    .locals 2
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F
    .param p2, "value"    # F

    .line 665
    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getInterpolatedHSV([F[FF)[F

    move-result-object v0

    .line 666
    .local v0, "resultHSV":[F
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static blacklist getInterpolatedHSV([F[FF)[F
    .locals 16
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F
    .param p2, "value"    # F

    .line 670
    move/from16 v0, p2

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 671
    .local v1, "resultHSV":[F
    const/4 v2, 0x0

    aget v3, p0, v2

    aget v4, p1, v2

    cmpl-float v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 672
    aget v3, p0, v2

    aput v3, v1, v2

    goto/16 :goto_1

    .line 674
    :cond_0
    new-array v3, v4, [D

    .line 675
    .local v3, "hueVector_color_A":[D
    aget v6, p0, v2

    invoke-static {v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v3, v2

    .line 676
    aget v6, p0, v2

    invoke-static {v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v3, v5

    .line 677
    new-array v6, v4, [D

    .line 678
    .local v6, "hueVector_color_B":[D
    aget v7, p1, v2

    invoke-static {v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v6, v2

    .line 679
    aget v7, p1, v2

    invoke-static {v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v6, v5

    .line 680
    aget v7, p0, v2

    const/high16 v8, 0x42b40000    # 90.0f

    add-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    .line 681
    .local v7, "shiftedAngleA":F
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

    .line 682
    .local v9, "cw":Z
    :goto_0
    aget-wide v10, v3, v2

    aget-wide v12, v6, v2

    mul-double/2addr v10, v12

    aget-wide v12, v3, v5

    aget-wide v14, v6, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 683
    .local v10, "dot":D
    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    float-to-double v14, v0

    mul-double/2addr v12, v14

    .line 684
    .local v12, "hDiff":D
    if-eqz v9, :cond_2

    .line 685
    aget v14, p0, v2

    float-to-double v14, v14

    add-double/2addr v14, v12

    double-to-float v14, v14

    aput v14, v1, v2

    .line 686
    aget v14, v1, v2

    cmpl-float v14, v14, v8

    if-lez v14, :cond_3

    .line 687
    aget v14, v1, v2

    sub-float/2addr v14, v8

    aput v14, v1, v2

    goto :goto_1

    .line 689
    :cond_2
    aget v14, p0, v2

    float-to-double v14, v14

    sub-double/2addr v14, v12

    double-to-float v14, v14

    aput v14, v1, v2

    .line 690
    aget v14, v1, v2

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    .line 691
    aget v14, v1, v2

    add-float/2addr v14, v8

    aput v14, v1, v2

    .line 694
    .end local v3    # "hueVector_color_A":[D
    .end local v6    # "hueVector_color_B":[D
    .end local v7    # "shiftedAngleA":F
    .end local v9    # "cw":Z
    .end local v10    # "dot":D
    .end local v12    # "hDiff":D
    :cond_3
    :goto_1
    aget v2, p0, v5

    aget v3, p1, v5

    invoke-static {v0, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v5

    .line 695
    aget v2, p0, v4

    aget v3, p1, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v4

    .line 696
    return-object v1
.end method

.method public static blacklist getInverseHSV([F)[F
    .locals 4
    .param p0, "hsv"    # [F

    .line 793
    const/4 v0, 0x0

    aget v1, p0, v0

    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    rem-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    .line 796
    .local v1, "inverseHue":F
    const/4 v2, 0x3

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x1

    aget v3, p0, v0

    aput v3, v2, v0

    const/4 v0, 0x2

    aget v3, p0, v0

    aput v3, v2, v0

    return-object v2
.end method

.method public static blacklist getRGBFromColor(I)[I
    .locals 3
    .param p0, "color"    # I

    .line 755
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public static blacklist getRedRatio(I)F
    .locals 2
    .param p0, "color"    # I

    .line 768
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method

.method public static blacklist hsvDistanceSquare2([F[F[F)D
    .locals 17
    .param p0, "hsv_a"    # [F
    .param p1, "hsv_b"    # [F
    .param p2, "hsv_weight"    # [F

    .line 313
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 314
    .local v1, "hueVector_color_A":[D
    const/4 v2, 0x0

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 315
    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    .line 317
    new-array v3, v0, [D

    .line 318
    .local v3, "hueVector_color_B":[D
    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 319
    aget v4, p1, v2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 321
    aget-wide v6, v1, v2

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    aget-wide v8, v1, v5

    aget-wide v10, v3, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 322
    .local v6, "dot":D
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    .line 324
    .local v8, "diff_h":D
    aget v4, p1, v5

    aget v10, p0, v5

    sub-float/2addr v4, v10

    float-to-double v10, v4

    .line 325
    .local v10, "diff_s":D
    aget v4, p1, v0

    aget v12, p0, v0

    sub-float/2addr v4, v12

    float-to-double v12, v4

    .line 328
    .local v12, "diff_b":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 329
    .local v14, "invTotalLengthAdjuster":D
    aget v2, p2, v2

    move-object/from16 v16, v1

    .end local v1    # "hueVector_color_A":[D
    .local v16, "hueVector_color_A":[D
    float-to-double v0, v2

    mul-double/2addr v0, v14

    mul-double/2addr v8, v0

    .line 330
    aget v0, p2, v5

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v10, v0

    .line 331
    const/4 v0, 0x2

    aget v0, p2, v0

    float-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v12, v0

    .line 333
    mul-double v0, v8, v8

    mul-double v4, v10, v10

    add-double/2addr v0, v4

    mul-double v4, v12, v12

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static blacklist interpolateHSV([F[FF)[F
    .locals 8
    .param p0, "hsvA"    # [F
    .param p1, "hsvB"    # [F
    .param p2, "value"    # F

    .line 253
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 254
    .local v0, "hsvResult":[F
    const/4 v1, 0x0

    .line 255
    .local v1, "avgHue":F
    const/4 v2, 0x0

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 256
    .local v3, "angleDiff":F
    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 257
    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v5, v4, v3

    mul-float/2addr v5, p2

    .line 258
    .local v5, "invAngleDiff":F
    aget v6, p0, v2

    aget v7, p1, v2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 259
    aget v6, p0, v2

    sub-float/2addr v6, v5

    .line 260
    .end local v1    # "avgHue":F
    .local v6, "avgHue":F
    const/4 v1, 0x0

    cmpg-float v1, v6, v1

    if-gez v1, :cond_1

    .line 261
    add-float/2addr v6, v4

    goto :goto_0

    .line 263
    .end local v6    # "avgHue":F
    .restart local v1    # "avgHue":F
    :cond_0
    aget v6, p0, v2

    add-float/2addr v6, v5

    .line 264
    .end local v1    # "avgHue":F
    .restart local v6    # "avgHue":F
    cmpl-float v1, v6, v4

    if-ltz v1, :cond_1

    .line 265
    sub-float/2addr v6, v4

    .line 268
    .end local v5    # "invAngleDiff":F
    :cond_1
    :goto_0
    goto :goto_1

    .line 269
    .end local v6    # "avgHue":F
    .restart local v1    # "avgHue":F
    :cond_2
    aget v4, p0, v2

    aget v5, p1, v2

    aget v6, p0, v2

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    add-float v6, v4, v5

    .line 271
    .end local v1    # "avgHue":F
    .restart local v6    # "avgHue":F
    :goto_1
    aput v6, v0, v2

    .line 272
    const/4 v1, 0x1

    aget v2, p0, v1

    aget v4, p1, v1

    aget v5, p0, v1

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    aput v2, v0, v1

    .line 273
    const/4 v1, 0x2

    aget v2, p0, v1

    aget v4, p1, v1

    aget v5, p0, v1

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    aput v2, v0, v1

    .line 274
    return-object v0
.end method

.method public static blacklist multipleColorValue(IF)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "value"    # F

    .line 759
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 760
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
    .param p0, "dst"    # [F

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 77
    const/4 v0, 0x1

    aput v1, p0, v0

    .line 78
    const/4 v0, 0x2

    aput v1, p0, v0

    .line 79
    return-void
.end method

.method public static blacklist rgb(III)I
    .locals 1
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 171
    const/16 v0, 0xff

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static blacklist setHSV([FFFF)V
    .locals 1
    .param p0, "dst"    # [F
    .param p1, "hue"    # F
    .param p2, "saturation"    # F
    .param p3, "brightness"    # F

    .line 82
    const/4 v0, 0x0

    aput p1, p0, v0

    .line 83
    const/4 v0, 0x1

    aput p2, p0, v0

    .line 84
    const/4 v0, 0x2

    aput p3, p0, v0

    .line 85
    return-void
.end method


# virtual methods
.method blacklist getGradation(IIIIF)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "colorA"    # I
    .param p2, "colorB"    # I
    .param p3, "gradient_width"    # I
    .param p4, "gradient_hegith"    # I
    .param p5, "angle"    # F

    .line 800
    new-instance v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p5

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;-><init>(Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;IIIFI)V

    .line 820
    .local v0, "sf":Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 821
    .local v1, "gradationDrawable":Landroid/graphics/drawable/PaintDrawable;
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 822
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 824
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 825
    .local v2, "gradientBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 826
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/PaintDrawable;->setBounds(IIII)V

    .line 827
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/PaintDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 829
    return-object v2
.end method
