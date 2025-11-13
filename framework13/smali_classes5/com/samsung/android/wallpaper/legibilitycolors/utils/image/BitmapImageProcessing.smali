.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;
.super Ljava/lang/Object;
.source "BitmapImageProcessing.java"


# instance fields
.field protected blacklist mConfig:Landroid/graphics/Bitmap$Config;

.field protected final blacklist mImageHeight:I

.field protected final blacklist mImageWidth:I

.field protected blacklist mPixels:[I


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 20
    mul-int v0, v6, v7

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    .line 21
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    return-void
.end method

.method public constructor blacklist <init>([IIILandroid/graphics/Bitmap$Config;)V
    .locals 3
    .param p1, "pixels"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    .line 26
    iput p3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    .line 27
    iput-object p4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 28
    array-length v0, p1

    new-array v0, v0, [I

    .line 29
    .local v0, "copiedPixels":[I
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist convertToBrightness()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToBrightness([I)V

    .line 113
    return-void
.end method

.method public blacklist convertToBrightness([I)V
    .locals 6
    .param p1, "pixelsDst"    # [I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    .line 117
    .local v0, "pixels":[I
    array-length v1, v0

    .line 119
    .local v1, "size":I
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 120
    .local v2, "hsv":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 121
    aget v4, v0, v3

    invoke-static {v4, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 122
    const/4 v4, 0x2

    aget v4, v2, v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 123
    .local v4, "grayValue":I
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, p1, v3

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "i":I
    .end local v4    # "grayValue":I
    :cond_0
    return-void
.end method

.method public blacklist convertToGoogleLuminosity()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToGoogleLuminosity([I)V

    .line 80
    return-void
.end method

.method public blacklist convertToGoogleLuminosity([I)V
    .locals 7
    .param p1, "pixelsDst"    # [I

    .line 83
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    .line 85
    .local v0, "pixels":[I
    array-length v1, v0

    .line 87
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 88
    aget v3, v0, v2

    invoke-static {v3}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 89
    .local v3, "grayValue":I
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, p1, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    .end local v3    # "grayValue":I
    :cond_0
    return-void
.end method

.method public blacklist convertToLuminosity()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToLuminosity([I)V

    .line 65
    return-void
.end method

.method public blacklist convertToLuminosity([I)V
    .locals 5
    .param p1, "pixelsDst"    # [I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    .line 69
    .local v0, "pixels":[I
    array-length v1, v0

    .line 71
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 73
    aget v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 74
    .local v3, "grayValue":I
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, p1, v2

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    .end local v3    # "grayValue":I
    :cond_0
    return-void
.end method

.method public blacklist convertToLuminosity2()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToLuminosity2([I)V

    .line 95
    return-void
.end method

.method public blacklist convertToLuminosity2([I)V
    .locals 6
    .param p1, "pixelsDst"    # [I

    .line 98
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    .line 99
    .local v0, "pixels":[I
    array-length v1, v0

    .line 100
    .local v1, "size":I
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 103
    .local v2, "hsl":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 104
    aget v4, v0, v3

    invoke-static {v4, v2}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 105
    const/4 v4, 0x2

    aget v4, v2, v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 106
    .local v4, "grayValue":I
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, p1, v3

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "i":I
    .end local v4    # "grayValue":I
    :cond_0
    return-void
.end method

.method public blacklist convertToLuminosity3()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToLuminosity3([I)V

    .line 129
    return-void
.end method

.method public blacklist convertToLuminosity3([I)V
    .locals 7
    .param p1, "pixelsDst"    # [I

    .line 132
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    .line 133
    .local v0, "pixels":[I
    array-length v1, v0

    .line 135
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 136
    aget v3, v0, v2

    invoke-static {v3}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 137
    .local v3, "grayValue":I
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, p1, v2

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "i":I
    .end local v3    # "grayValue":I
    :cond_0
    return-void
.end method

.method public blacklist createBitmapFromCurrent()Landroid/graphics/Bitmap;
    .locals 11

    .line 52
    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    .local v0, "convertedBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    iget v9, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iget v10, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move v6, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 54
    return-object v0
.end method

.method public blacklist getAverageColor()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->getAverageColor([I)I

    move-result v0

    return v0
.end method

.method public blacklist getAverageColor([I)I
    .locals 18
    .param p1, "pixels"    # [I

    .line 175
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 176
    return v1

    .line 178
    :cond_0
    const/high16 v2, -0x1000000

    .line 179
    .local v2, "A_MASK":I
    const/high16 v3, 0xff0000

    .line 180
    .local v3, "R_MASK":I
    const v4, 0xff00

    .line 181
    .local v4, "G_MASK":I
    const/16 v5, 0xff

    .line 182
    .local v5, "B_MASK":I
    array-length v6, v0

    .line 183
    .local v6, "pixelNum":I
    const-wide/16 v7, 0x0

    .local v7, "r":J
    const-wide/16 v9, 0x0

    .local v9, "g":J
    const-wide/16 v11, 0x0

    .line 185
    .local v11, "b":J
    array-length v13, v0

    :goto_0
    const/high16 v15, 0xff0000

    if-ge v1, v13, :cond_1

    aget v14, v0, v1

    .line 186
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

    .line 187
    const v2, 0xff00

    and-int/2addr v2, v14

    int-to-long v2, v2

    add-long/2addr v9, v2

    .line 188
    and-int/lit16 v2, v14, 0xff

    int-to-long v2, v2

    add-long/2addr v11, v2

    .line 185
    .end local v14    # "pixel":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_0

    .line 190
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

    .line 191
    .local v1, "avgR":I
    int-to-long v2, v6

    div-long v2, v9, v2

    long-to-int v2, v2

    const v3, 0xff00

    and-int/2addr v2, v3

    .line 192
    .local v2, "avgG":I
    int-to-long v13, v6

    div-long v13, v11, v13

    long-to-int v3, v13

    and-int/lit16 v3, v3, 0xff

    .line 193
    .local v3, "avgB":I
    const/high16 v13, -0x1000000

    or-int/2addr v13, v1

    or-int/2addr v13, v2

    or-int/2addr v13, v3

    return v13
.end method

.method public blacklist getAverageValueFromRed()F
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->getAverageValueFromRed([I)F

    move-result v0

    return v0
.end method

.method public blacklist getAverageValueFromRed([I)F
    .locals 6
    .param p1, "pixels"    # [I

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "avr":F
    array-length v1, p1

    .line 144
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 145
    int-to-float v3, v2

    mul-float/2addr v3, v0

    aget v4, p1, v2

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    div-float v0, v3, v4

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    :cond_0
    const v2, 0x3b808081

    mul-float/2addr v2, v0

    return v2
.end method

.method public blacklist getCopiedPixels()[I
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v1, v0

    new-array v1, v1, [I

    .line 47
    .local v1, "pixels":[I
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-object v1
.end method

.method public blacklist getDifferentialValueFromRed(F)F
    .locals 1
    .param p1, "referenceValue"    # F

    .line 171
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->getDifferentialValueFromRed([IF)F

    move-result v0

    return v0
.end method

.method public blacklist getDifferentialValueFromRed([IF)F
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "referenceValue"    # F

    .line 155
    move v0, p2

    .line 157
    .local v0, "avr":F
    array-length v1, p1

    .line 158
    .local v1, "size":I
    float-to-int v2, p2

    .line 159
    .local v2, "ref":I
    const/4 v3, 0x0

    .line 162
    .local v3, "sum":F
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, p1, v5

    .line 163
    .local v6, "pixel":I
    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    .line 164
    .local v7, "red":I
    if-le v7, v2, :cond_0

    sub-int v8, v7, v2

    goto :goto_1

    :cond_0
    sub-int v8, v2, v7

    :goto_1
    int-to-float v8, v8

    add-float/2addr v3, v8

    .line 162
    .end local v6    # "pixel":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    .end local v7    # "red":I
    :cond_1
    int-to-float v4, v1

    div-float v0, v3, v4

    .line 167
    const v4, 0x3b808081

    mul-float/2addr v4, v0

    return v4
.end method

.method public blacklist getImageHeight()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    return v0
.end method

.method public blacklist getImageWidth()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    return v0
.end method

.method public blacklist getPixelsReference()[I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    return-object v0
.end method

.method public blacklist setPixels([I)V
    .locals 0
    .param p1, "pixelsSrc"    # [I

    .line 60
    iput-object p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    .line 61
    return-void
.end method
