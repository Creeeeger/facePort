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
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mConfig:Landroid/graphics/Bitmap$Config;

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    iget v4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iget v7, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iget v8, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method

.method public constructor blacklist <init>([IIILandroid/graphics/Bitmap$Config;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iput p3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    iput-object p4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mConfig:Landroid/graphics/Bitmap$Config;

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    return-void
.end method


# virtual methods
.method public blacklist convertToBrightness()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToBrightness([I)V

    return-void
.end method

.method public blacklist convertToBrightness([I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    invoke-static {v4, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v4, 0x2

    aget v4, v2, v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist convertToGoogleLuminosity()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToGoogleLuminosity([I)V

    return-void
.end method

.method public blacklist convertToGoogleLuminosity([I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist convertToLuminosity()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToLuminosity([I)V

    return-void
.end method

.method public blacklist convertToLuminosity([I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist convertToLuminosity2()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToLuminosity2([I)V

    return-void
.end method

.method public blacklist convertToLuminosity2([I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    invoke-static {v4, v2}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v4, 0x2

    aget v4, v2, v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist convertToLuminosity3()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToLuminosity3([I)V

    return-void
.end method

.method public blacklist convertToLuminosity3([I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist createBitmapFromCurrent()Landroid/graphics/Bitmap;
    .locals 11

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    iget v6, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iget v9, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iget v10, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method public blacklist getAverageColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->getAverageColor([I)I

    move-result v0

    return v0
.end method

.method public blacklist getAverageColor([I)I
    .locals 18

    move-object/from16 v0, p1

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

.method public blacklist getAverageValueFromRed()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->getAverageValueFromRed([I)F

    move-result v0

    return v0
.end method

.method public blacklist getAverageValueFromRed([I)F
    .locals 6

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x3b808081

    mul-float/2addr v2, v0

    return v2
.end method

.method public blacklist getCopiedPixels()[I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public blacklist getDifferentialValueFromRed(F)F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->getDifferentialValueFromRed([IF)F

    move-result v0

    return v0
.end method

.method public blacklist getDifferentialValueFromRed([IF)F
    .locals 9

    move v0, p2

    array-length v1, p1

    float-to-int v2, p2

    const/4 v3, 0x0

    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, p1, v5

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    if-le v7, v2, :cond_0

    sub-int v8, v7, v2

    goto :goto_1

    :cond_0
    sub-int v8, v2, v7

    :goto_1
    int-to-float v8, v8

    add-float/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    int-to-float v4, v1

    div-float v0, v3, v4

    const v4, 0x3b808081

    mul-float/2addr v4, v0

    return v4
.end method

.method public blacklist getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    return v0
.end method

.method public blacklist getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    return v0
.end method

.method public blacklist getPixelsReference()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    return-object v0
.end method

.method public blacklist setPixels([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    return-void
.end method
