.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;
.super Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;
.source "ImageConvolution.java"


# instance fields
.field public blacklist mFactor:D

.field public blacklist mOffset:D


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    return-void
.end method

.method public constructor blacklist <init>([IIILandroid/graphics/Bitmap$Config;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;-><init>([IIILandroid/graphics/Bitmap$Config;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    return-void
.end method


# virtual methods
.method public blacklist computeConvolution([[D)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mPixels:[I

    array-length v0, v0

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->computeConvolution([[D[I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->setPixels([I)V

    return-void
.end method

.method public blacklist computeConvolution([[D[I)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mImageWidth:I

    iget v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mImageHeight:I

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v3, -0x1

    iget-object v6, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mPixels:[I

    array-length v7, v6

    array-length v8, v1

    mul-int v9, v8, v8

    div-int/lit8 v10, v8, 0x2

    iget-wide v11, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-wide v15, v11

    iget-wide v11, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    div-double/2addr v13, v11

    new-array v11, v9, [D

    new-array v12, v9, [I

    new-array v0, v9, [I

    const/16 v17, 0x0

    move/from16 v18, v3

    move/from16 v3, v17

    :goto_0
    if-ge v3, v9, :cond_0

    div-int v17, v3, v8

    rem-int v19, v3, v8

    aget-object v20, v1, v17

    aget-wide v20, v20, v19

    aput-wide v20, v11, v3

    sub-int v20, v19, v10

    aput v20, v12, v3

    sub-int v20, v17, v10

    aput v20, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    move/from16 v1, v17

    :goto_1
    if-ge v1, v7, :cond_c

    const/16 v17, 0x0

    move/from16 v19, v17

    move/from16 v20, v17

    rem-int v21, v1, v2

    div-int v22, v1, v2

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

    :goto_2
    const/16 v23, 0x0

    move/from16 v24, v1

    if-ge v3, v9, :cond_5

    aget v25, v12, v3

    add-int v25, v21, v25

    move/from16 v26, v25

    move/from16 v1, v26

    if-gez v25, :cond_1

    move/from16 v26, v23

    goto :goto_3

    :cond_1
    if-le v1, v4, :cond_2

    move/from16 v26, v4

    goto :goto_3

    :cond_2
    move/from16 v26, v1

    :goto_3
    move/from16 v1, v26

    aget v26, v0, v3

    add-int v26, v22, v26

    move/from16 v27, v26

    if-gez v26, :cond_3

    move-object/from16 v26, v0

    move/from16 v0, v27

    goto :goto_4

    :cond_3
    move-object/from16 v26, v0

    move/from16 v0, v27

    if-le v0, v5, :cond_4

    move/from16 v23, v5

    goto :goto_4

    :cond_4
    move/from16 v23, v0

    :goto_4
    move/from16 v0, v23

    mul-int v23, v0, v2

    add-int v23, v1, v23

    move/from16 v27, v0

    aget v0, v6, v23

    aget-wide v28, v11, v3

    move/from16 v31, v1

    move/from16 v30, v2

    float-to-double v1, v7

    move/from16 v32, v4

    shr-int/lit8 v4, v0, 0x10

    move/from16 v33, v5

    const/16 v5, 0xff

    and-int/2addr v4, v5

    move-object/from16 v34, v6

    int-to-double v5, v4

    mul-double v5, v5, v28

    add-double/2addr v1, v5

    double-to-float v7, v1

    float-to-double v1, v10

    shr-int/lit8 v4, v0, 0x8

    const/16 v5, 0xff

    and-int/2addr v4, v5

    int-to-double v4, v4

    mul-double v4, v4, v28

    add-double/2addr v1, v4

    double-to-float v10, v1

    float-to-double v1, v8

    and-int/lit16 v4, v0, 0xff

    int-to-double v4, v4

    mul-double v4, v4, v28

    add-double/2addr v1, v4

    double-to-float v8, v1

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v24

    move-object/from16 v0, v26

    move/from16 v2, v30

    move/from16 v4, v32

    move/from16 v5, v33

    move-object/from16 v6, v34

    goto :goto_2

    :cond_5
    move-object/from16 v26, v0

    move/from16 v30, v2

    move/from16 v32, v4

    move/from16 v33, v5

    move-object/from16 v34, v6

    float-to-double v0, v7

    mul-double/2addr v0, v13

    add-double/2addr v0, v15

    double-to-int v0, v0

    move v1, v0

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

    :goto_5
    float-to-double v1, v10

    mul-double/2addr v1, v13

    add-double/2addr v1, v15

    double-to-int v1, v1

    move v5, v1

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

    :goto_6
    float-to-double v4, v8

    mul-double/2addr v4, v13

    add-double/2addr v4, v15

    double-to-int v2, v4

    move v4, v2

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

    aget v4, v34, v24

    ushr-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v4, 0x18

    shl-int/lit8 v6, v0, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v2

    aput v5, p2, v24

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

    goto/16 :goto_1

    :cond_c
    return-void
.end method
