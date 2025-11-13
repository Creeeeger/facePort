.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# static fields
.field static blacklist TAG:Ljava/lang/String;

.field static blacklist mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field static blacklist mCompressQuality:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    const-string v0, "BitmapHelper"

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createCroppedImageKeepingRatio(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    if-lez v3, :cond_0

    int-to-float v3, v1

    div-float v5, v2, p1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    invoke-static {p0, v4, v5, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_0
    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    int-to-float v3, v0

    div-float v5, p1, v2

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int v5, v0, v3

    div-int/lit8 v5, v5, 0x2

    invoke-static {p0, v5, v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public static blacklist fineScaleOptionValueBySquareRootSize(III)I
    .locals 5

    mul-int v0, p0, p1

    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    int-to-double v3, p2

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    return v1
.end method

.method public static blacklist fineScaleValueBySquareRootSize(III)F
    .locals 5

    mul-int v0, p0, p1

    int-to-double v1, p2

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public static blacklist getAverageColor([I)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageColor([I)I

    move-result v0

    return v0
.end method

.method public static blacklist getAverageColorFromBitmap(Landroid/graphics/Bitmap;)I
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageColor([I)I

    move-result v1

    return v1
.end method

.method public static blacklist getAverageHSV([I)[F
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageHSV([I)[F

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getAverageHSVFromBitmap(Landroid/graphics/Bitmap;)[F
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageHSV([I)[F

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static blacklist getBitmapRectForCenterCrop(Landroid/graphics/Bitmap;F)Landroid/graphics/Rect;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    cmpl-float v3, v2, p1

    const/high16 v4, 0x3f000000    # 0.5f

    if-lez v3, :cond_0

    mul-float v3, v1, p1

    new-instance v5, Landroid/graphics/Rect;

    mul-float v6, v0, v4

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    float-to-int v6, v6

    mul-float v7, v1, v4

    mul-float v8, v1, v4

    sub-float/2addr v7, v8

    float-to-int v7, v7

    mul-float v8, v0, v4

    mul-float v9, v3, v4

    add-float/2addr v8, v9

    float-to-int v8, v8

    mul-float v9, v1, v4

    mul-float/2addr v4, v1

    add-float/2addr v9, v4

    float-to-int v4, v9

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v5

    goto :goto_0

    :cond_0
    cmpg-float v3, v2, p1

    if-gez v3, :cond_1

    move v3, v0

    div-float v5, v0, p1

    new-instance v6, Landroid/graphics/Rect;

    mul-float v7, v0, v4

    mul-float v8, v3, v4

    sub-float/2addr v7, v8

    float-to-int v7, v7

    mul-float v8, v1, v4

    mul-float v9, v5, v4

    sub-float/2addr v8, v9

    float-to-int v8, v8

    mul-float v9, v0, v4

    mul-float v10, v3, v4

    add-float/2addr v9, v10

    float-to-int v9, v9

    mul-float v10, v1, v4

    mul-float/2addr v4, v5

    add-float/2addr v10, v4

    float-to-int v4, v10

    invoke-direct {v6, v7, v8, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v6

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v0

    float-to-int v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v3
.end method

.method public static blacklist getBoarderPixels(Landroid/graphics/Bitmap;I)[I
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getBoarderPixels([III)[I

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getBoarderPixels(Ljava/nio/IntBuffer;II)[I
    .locals 11

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    div-int v1, v0, p1

    if-ge p1, p2, :cond_1

    move p2, p1

    :cond_1
    if-ge v1, p2, :cond_2

    move p2, v1

    :cond_2
    add-int v2, p2, p2

    sub-int v2, p1, v2

    add-int v3, p2, p2

    sub-int v3, v1, v3

    mul-int/2addr v2, v3

    sub-int v2, v0, v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, p2

    move v6, p1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_3

    add-int/lit8 v9, v4, 0x1

    mul-int v10, v7, p1

    add-int/2addr v10, v8

    invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    aput v10, v3, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    sub-int v5, v1, p2

    move v6, p2

    move v7, p2

    :goto_2
    if-ge v7, v5, :cond_6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_5

    add-int/lit8 v9, v4, 0x1

    mul-int v10, v7, p1

    add-int/2addr v10, v8

    invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    aput v10, v3, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    sub-int v5, v1, p2

    move v6, p1

    move v7, p2

    :goto_4
    if-ge v7, v5, :cond_8

    sub-int v8, p1, p2

    :goto_5
    if-ge v8, v6, :cond_7

    add-int/lit8 v9, v4, 0x1

    mul-int v10, v7, p1

    add-int/2addr v10, v8

    invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    aput v10, v3, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    move v5, v1

    move v6, p1

    sub-int v7, v1, p2

    :goto_6
    if-ge v7, v5, :cond_a

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_9

    add-int/lit8 v9, v4, 0x1

    mul-int v10, v7, p1

    add-int/2addr v10, v8

    invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    aput v10, v3, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_7

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    return-object v3

    :cond_b
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getBoarderPixels([III)[I
    .locals 9

    if-eqz p0, :cond_b

    array-length v0, p0

    if-gtz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    array-length v0, p0

    div-int/2addr v0, p1

    if-ge p1, p2, :cond_1

    move p2, p1

    :cond_1
    if-ge v0, p2, :cond_2

    move p2, v0

    :cond_2
    array-length v1, p0

    add-int v2, p2, p2

    sub-int v2, p1, v2

    add-int v3, p2, p2

    sub-int v3, v0, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p1, :cond_3

    add-int/lit8 v7, v3, 0x1

    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v2, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    sub-int v4, v0, p2

    move v5, p2

    :goto_2
    if-ge v5, v4, :cond_6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, p2, :cond_5

    add-int/lit8 v7, v3, 0x1

    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v2, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v5, p2

    :goto_4
    sub-int v6, v0, p2

    if-ge v5, v6, :cond_8

    sub-int v6, p1, p2

    :goto_5
    if-ge v6, p1, :cond_7

    add-int/lit8 v7, v3, 0x1

    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v2, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    sub-int v5, v0, p2

    :goto_6
    if-ge v5, v0, :cond_a

    const/4 v6, 0x0

    :goto_7
    if-ge v6, p1, :cond_9

    add-int/lit8 v7, v3, 0x1

    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v2, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    return-object v2

    :cond_b
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getCompressedFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static blacklist getCompressedQuality()I
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    return v0
.end method

.method public static blacklist getImageSizeFromFile(Ljava/lang/String;)[I
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    filled-new-array {v2, v1}, [I

    move-result-object v3

    return-object v3
.end method

.method public static blacklist getImageSizeFromResource(Landroid/content/res/Resources;I)[I
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    filled-new-array {v2, v1}, [I

    move-result-object v3

    return-object v3
.end method

.method public static blacklist saveBitmapAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_1
    :goto_3
    nop

    :goto_4
    throw v4
.end method

.method public static blacklist saveBitmapAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->saveBitmapAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist setCompressedFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public static blacklist setCompressedQuality(I)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    return-void
.end method
