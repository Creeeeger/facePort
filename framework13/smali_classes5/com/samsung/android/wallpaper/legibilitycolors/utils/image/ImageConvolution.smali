.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;
.super Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;
.source "ImageConvolution.java"


# instance fields
.field public blacklist mFactor:D

.field public blacklist mOffset:D


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    .line 12
    return-void
.end method

.method public constructor blacklist <init>([IIILandroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "pixels"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;-><init>([IIILandroid/graphics/Bitmap$Config;)V

    .line 7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist computeConvolution([[D)V
    .locals 1
    .param p1, "kernel"    # [[D

    .line 19
    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mPixels:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 20
    .local v0, "pixelsBuf":[I
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->computeConvolution([[D[I)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->setPixels([I)V

    .line 22
    return-void
.end method

.method public blacklist computeConvolution([[D[I)V
    .locals 38
    .param p1, "kernel"    # [[D
    .param p2, "pixelsDst"    # [I

    .line 25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mImageWidth:I

    .line 26
    .local v2, "width":I
    iget v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mImageHeight:I

    .line 27
    .local v3, "height":I
    add-int/lit8 v4, v2, -0x1

    .line 28
    .local v4, "width_1":I
    add-int/lit8 v5, v3, -0x1

    .line 29
    .local v5, "height_1":I
    iget-object v6, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mPixels:[I

    .line 30
    .local v6, "pixelsSrc":[I
    array-length v7, v6

    .line 31
    .local v7, "pixelLength":I
    array-length v8, v1

    .line 32
    .local v8, "kernelLength":I
    mul-int v9, v8, v8

    .line 33
    .local v9, "kernelSerialLength":I
    div-int/lit8 v10, v8, 0x2

    .line 34
    .local v10, "kernelHalf":I
    iget-wide v11, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    .line 38
    .local v11, "offset":D
    iget-wide v13, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v13

    .line 48
    .local v15, "factorOffsetDivider":D
    new-array v13, v9, [D

    .line 49
    .local v13, "kernelSerial":[D
    new-array v14, v9, [I

    .line 50
    .local v14, "kernelOffsetX":[I
    new-array v0, v9, [I

    .line 53
    .local v0, "kernelOffsetY":[I
    const/16 v17, 0x0

    move/from16 v18, v3

    move/from16 v3, v17

    .local v3, "i":I
    .local v18, "height":I
    :goto_0
    if-ge v3, v9, :cond_0

    .line 54
    div-int v17, v3, v8

    .line 55
    .local v17, "ky":I
    rem-int v19, v3, v8

    .line 56
    .local v19, "kx":I
    aget-object v20, v1, v17

    aget-wide v20, v20, v19

    aput-wide v20, v13, v3

    .line 57
    sub-int v20, v19, v10

    aput v20, v14, v3

    .line 58
    sub-int v20, v17, v10

    aput v20, v0, v3

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v17    # "ky":I
    .end local v19    # "kx":I
    :cond_0
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "p":I
    :goto_1
    if-ge v1, v7, :cond_c

    .line 63
    const/16 v17, 0x0

    move/from16 v19, v17

    .local v19, "sumB":F
    move/from16 v20, v17

    .line 64
    .local v17, "sumR":F
    .local v20, "sumG":F
    rem-int v21, v1, v2

    .line 65
    .local v21, "x":I
    div-int v22, v1, v2

    .line 68
    .local v22, "y":I
    const/4 v3, 0x0

    move/from16 v35, v17

    move/from16 v17, v7

    move/from16 v7, v35

    move/from16 v36, v19

    move/from16 v19, v8

    move/from16 v8, v36

    move/from16 v37, v20

    move/from16 v20, v10

    move/from16 v10, v37

    .local v7, "sumR":F
    .local v8, "sumB":F
    .local v10, "sumG":F
    .local v17, "pixelLength":I
    .local v19, "kernelLength":I
    .local v20, "kernelHalf":I
    :goto_2
    const/16 v23, 0x0

    move/from16 v24, v1

    .end local v1    # "p":I
    .local v24, "p":I
    if-ge v3, v9, :cond_5

    .line 69
    aget v25, v14, v3

    add-int v25, v21, v25

    move/from16 v26, v25

    .local v26, "kx":I
    move/from16 v1, v26

    if-gez v25, :cond_1

    move/from16 v26, v23

    goto :goto_3

    .end local v26    # "kx":I
    .local v1, "kx":I
    :cond_1
    if-le v1, v4, :cond_2

    move/from16 v26, v4

    goto :goto_3

    :cond_2
    move/from16 v26, v1

    :goto_3
    move/from16 v1, v26

    .line 70
    aget v26, v0, v3

    add-int v26, v22, v26

    move/from16 v27, v26

    .local v27, "ky":I
    if-gez v26, :cond_3

    move-object/from16 v26, v0

    move/from16 v0, v27

    goto :goto_4

    :cond_3
    move-object/from16 v26, v0

    move/from16 v0, v27

    .end local v27    # "ky":I
    .local v0, "ky":I
    .local v26, "kernelOffsetY":[I
    if-le v0, v5, :cond_4

    move/from16 v23, v5

    goto :goto_4

    :cond_4
    move/from16 v23, v0

    :goto_4
    move/from16 v0, v23

    .line 71
    mul-int v23, v0, v2

    add-int v23, v1, v23

    move/from16 v27, v0

    .end local v0    # "ky":I
    .restart local v27    # "ky":I
    aget v0, v6, v23

    .line 72
    .local v0, "convPixel":I
    aget-wide v28, v13, v3

    .line 73
    .local v28, "kernelValue":D
    move/from16 v31, v1

    move/from16 v30, v2

    .end local v1    # "kx":I
    .end local v2    # "width":I
    .local v30, "width":I
    .local v31, "kx":I
    float-to-double v1, v7

    move/from16 v32, v4

    .end local v4    # "width_1":I
    .local v32, "width_1":I
    shr-int/lit8 v4, v0, 0x10

    move/from16 v33, v5

    const/16 v5, 0xff

    .end local v5    # "height_1":I
    .local v33, "height_1":I
    and-int/2addr v4, v5

    move-object/from16 v34, v6

    .end local v6    # "pixelsSrc":[I
    .local v34, "pixelsSrc":[I
    int-to-double v5, v4

    mul-double v5, v5, v28

    add-double/2addr v1, v5

    double-to-float v7, v1

    .line 74
    float-to-double v1, v10

    shr-int/lit8 v4, v0, 0x8

    const/16 v5, 0xff

    and-int/2addr v4, v5

    int-to-double v4, v4

    mul-double v4, v4, v28

    add-double/2addr v1, v4

    double-to-float v10, v1

    .line 75
    float-to-double v1, v8

    and-int/lit16 v4, v0, 0xff

    int-to-double v4, v4

    mul-double v4, v4, v28

    add-double/2addr v1, v4

    double-to-float v8, v1

    .line 68
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v24

    move-object/from16 v0, v26

    move/from16 v2, v30

    move/from16 v4, v32

    move/from16 v5, v33

    move-object/from16 v6, v34

    goto :goto_2

    .line 78
    .end local v26    # "kernelOffsetY":[I
    .end local v27    # "ky":I
    .end local v28    # "kernelValue":D
    .end local v30    # "width":I
    .end local v31    # "kx":I
    .end local v32    # "width_1":I
    .end local v33    # "height_1":I
    .end local v34    # "pixelsSrc":[I
    .local v0, "kernelOffsetY":[I
    .restart local v2    # "width":I
    .restart local v4    # "width_1":I
    .restart local v5    # "height_1":I
    .restart local v6    # "pixelsSrc":[I
    :cond_5
    move-object/from16 v26, v0

    move/from16 v30, v2

    move/from16 v32, v4

    move/from16 v33, v5

    move-object/from16 v34, v6

    .end local v0    # "kernelOffsetY":[I
    .end local v2    # "width":I
    .end local v4    # "width_1":I
    .end local v5    # "height_1":I
    .end local v6    # "pixelsSrc":[I
    .restart local v26    # "kernelOffsetY":[I
    .restart local v30    # "width":I
    .restart local v32    # "width_1":I
    .restart local v33    # "height_1":I
    .restart local v34    # "pixelsSrc":[I
    float-to-double v0, v7

    mul-double/2addr v0, v15

    add-double/2addr v0, v11

    double-to-int v0, v0

    move v1, v0

    .local v1, "r":I
    if-gez v0, :cond_6

    move/from16 v0, v23

    goto :goto_5

    :cond_6
    const/16 v0, 0xff

    if-le v1, v0, :cond_7

    const/16 v0, 0xff

    goto :goto_5

    :cond_7
    move v0, v1

    .line 79
    .end local v1    # "r":I
    .local v0, "r":I
    :goto_5
    float-to-double v1, v10

    mul-double/2addr v1, v15

    add-double/2addr v1, v11

    double-to-int v1, v1

    move v5, v1

    .local v5, "g":I
    if-gez v1, :cond_8

    move/from16 v1, v23

    goto :goto_6

    :cond_8
    const/16 v1, 0xff

    if-le v5, v1, :cond_9

    const/16 v1, 0xff

    goto :goto_6

    :cond_9
    move v1, v5

    .line 80
    .end local v5    # "g":I
    .local v1, "g":I
    :goto_6
    float-to-double v4, v8

    mul-double/2addr v4, v15

    add-double/2addr v4, v11

    double-to-int v2, v4

    move v4, v2

    .local v4, "b":I
    if-gez v2, :cond_a

    goto :goto_7

    :cond_a
    const/16 v2, 0xff

    if-le v4, v2, :cond_b

    move/from16 v23, v2

    goto :goto_7

    :cond_b
    move/from16 v23, v4

    :goto_7
    move/from16 v2, v23

    .line 81
    .end local v4    # "b":I
    .local v2, "b":I
    aget v4, v34, v24

    ushr-int/lit8 v4, v4, 0x18

    .line 83
    .local v4, "a":I
    shl-int/lit8 v5, v4, 0x18

    shl-int/lit8 v6, v0, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v2

    aput v5, p2, v24

    .line 61
    add-int/lit8 v5, v24, 0x1

    move v1, v5

    move/from16 v7, v17

    move/from16 v8, v19

    move/from16 v10, v20

    move-object/from16 v0, v26

    move/from16 v2, v30

    move/from16 v4, v32

    move/from16 v5, v33

    move-object/from16 v6, v34

    .end local v24    # "p":I
    .local v5, "p":I
    goto/16 :goto_1

    .line 85
    .end local v17    # "pixelLength":I
    .end local v19    # "kernelLength":I
    .end local v20    # "kernelHalf":I
    .end local v21    # "x":I
    .end local v22    # "y":I
    .end local v26    # "kernelOffsetY":[I
    .end local v30    # "width":I
    .end local v32    # "width_1":I
    .end local v33    # "height_1":I
    .end local v34    # "pixelsSrc":[I
    .local v0, "kernelOffsetY":[I
    .local v1, "p":I
    .local v2, "width":I
    .local v4, "width_1":I
    .local v5, "height_1":I
    .restart local v6    # "pixelsSrc":[I
    .local v7, "pixelLength":I
    .local v8, "kernelLength":I
    .local v10, "kernelHalf":I
    :cond_c
    return-void
.end method
