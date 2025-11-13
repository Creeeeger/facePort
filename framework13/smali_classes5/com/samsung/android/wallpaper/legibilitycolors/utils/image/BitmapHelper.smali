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

    .line 22
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 23
    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    .line 24
    const-string v0, "BitmapHelper"

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createCroppedImageKeepingRatio(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidthRatio"    # F

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 81
    .local v0, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 82
    .local v1, "srcHeight":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 85
    .local v2, "srcWidthRatio":F
    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 86
    int-to-float v3, v1

    div-float v5, v2, p1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 87
    .local v3, "croppedHeight":I
    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    invoke-static {p0, v4, v5, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 88
    .local v3, "croppedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    .line 89
    int-to-float v3, v0

    div-float v5, p1, v2

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 90
    .local v3, "croppedWidth":I
    sub-int v5, v0, v3

    div-int/lit8 v5, v5, 0x2

    invoke-static {p0, v5, v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 91
    .local v3, "croppedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 92
    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 94
    .restart local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3
.end method

.method public static blacklist fineScaleOptionValueBySquareRootSize(III)I
    .locals 5
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "sizeTobe"    # I

    .line 146
    mul-int v0, p0, p1

    .line 147
    .local v0, "imageAreaSize":I
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
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "sizeTobe"    # I

    .line 151
    mul-int v0, p0, p1

    .line 152
    .local v0, "imageAreaSize":I
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
    .param p0, "pixels"    # [I

    .line 270
    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageColor([I)I

    move-result v0

    return v0
.end method

.method public static blacklist getAverageColorFromBitmap(Landroid/graphics/Bitmap;)I
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 157
    .local v0, "pixels":[I
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

    .line 158
    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageColor([I)I

    move-result v1

    return v1
.end method

.method public static blacklist getAverageHSV([I)[F
    .locals 1
    .param p0, "pixels"    # [I

    .line 274
    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageHSV([I)[F

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getAverageHSVFromBitmap(Landroid/graphics/Bitmap;)[F
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 163
    .local v0, "pixels":[I
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

    .line 164
    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageHSV([I)[F

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "buffer":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 124
    return-object v0
.end method

.method public static blacklist getBitmapRectForCenterCrop(Landroid/graphics/Bitmap;F)Landroid/graphics/Rect;
    .locals 11
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "widthRatio"    # F

    .line 98
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 99
    .local v0, "srcBitmapWidth":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 100
    .local v1, "srcBitmapHeight":F
    div-float v2, v0, v1

    .line 103
    .local v2, "srcWidthRatio":F
    cmpl-float v3, v2, p1

    const/high16 v4, 0x3f000000    # 0.5f

    if-lez v3, :cond_0

    .line 104
    mul-float v3, v1, p1

    .line 105
    .local v3, "scaledWidth":F
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

    .line 106
    .local v3, "rectResult":Landroid/graphics/Rect;
    goto :goto_0

    .end local v3    # "rectResult":Landroid/graphics/Rect;
    :cond_0
    cmpg-float v3, v2, p1

    if-gez v3, :cond_1

    .line 107
    move v3, v0

    .line 108
    .local v3, "scaledWidth":F
    div-float v5, v0, p1

    .line 109
    .local v5, "scaledHeight":F
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

    .line 110
    .end local v5    # "scaledHeight":F
    .local v3, "rectResult":Landroid/graphics/Rect;
    goto :goto_0

    .line 111
    .end local v3    # "rectResult":Landroid/graphics/Rect;
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v0

    float-to-int v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .restart local v3    # "rectResult":Landroid/graphics/Rect;
    :goto_0
    return-object v3
.end method

.method public static blacklist getBoarderPixels(Landroid/graphics/Bitmap;I)[I
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "borderWidth"    # I

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 169
    .local v0, "pixels":[I
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

    .line 170
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getBoarderPixels([III)[I

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getBoarderPixels(Ljava/nio/IntBuffer;II)[I
    .locals 11
    .param p0, "intbuffer"    # Ljava/nio/IntBuffer;
    .param p1, "width"    # I
    .param p2, "borderWidth"    # I

    .line 219
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_8

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    .line 223
    .local v0, "bufferLength":I
    div-int v1, v0, p1

    .line 224
    .local v1, "height":I
    if-ge p1, p2, :cond_1

    .line 225
    move p2, p1

    .line 227
    :cond_1
    if-ge v1, p2, :cond_2

    .line 228
    move p2, v1

    .line 231
    :cond_2
    add-int v2, p2, p2

    sub-int v2, p1, v2

    add-int v3, p2, p2

    sub-int v3, v1, v3

    mul-int/2addr v2, v3

    sub-int v2, v0, v2

    .line 232
    .local v2, "borderPixelsNum":I
    new-array v3, v2, [I

    .line 233
    .local v3, "boarderPixels":[I
    const/4 v4, 0x0

    .line 234
    .local v4, "i":I
    move v5, p2

    .line 235
    .local v5, "size1":I
    move v6, p1

    .line 236
    .local v6, "size2":I
    const/4 v7, 0x0

    .local v7, "h":I
    :goto_0
    if-ge v7, v5, :cond_4

    .line 237
    const/4 v8, 0x0

    .local v8, "w":I
    :goto_1
    if-ge v8, v6, :cond_3

    .line 238
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .local v9, "i":I
    mul-int v10, v7, p1

    add-int/2addr v10, v8

    invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    aput v10, v3, v4

    .line 237
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_1

    .line 236
    .end local v8    # "w":I
    .end local v9    # "i":I
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 242
    .end local v7    # "h":I
    :cond_4
    sub-int v5, v1, p2

    .line 243
    move v6, p2

    .line 244
    move v7, p2

    .restart local v7    # "h":I
    :goto_2
    if-ge v7, v5, :cond_6

    .line 245
    const/4 v8, 0x0

    .restart local v8    # "w":I
    :goto_3
    if-ge v8, v6, :cond_5

    .line 246
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .restart local v9    # "i":I
    mul-int v10, v7, p1

    add-int/2addr v10, v8

    invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    aput v10, v3, v4

    .line 245
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_3

    .line 244
    .end local v8    # "w":I
    .end local v9    # "i":I
    .restart local v4    # "i":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 250
    .end local v7    # "h":I
    :cond_6
    sub-int v5, v1, p2

    .line 251
    move v6, p1

    .line 252
    move v7, p2

    .restart local v7    # "h":I
    :goto_4
    if-ge v7, v5, :cond_8

    .line 253
    sub-int v8, p1, p2

    .restart local v8    # "w":I
    :goto_5
    if-ge v8, v6, :cond_7

    .line 254
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .restart local v9    # "i":I
    mul-int v10, v7, p1

    add-int/2addr v10, v8

    invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    aput v10, v3, v4

    .line 253
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_5

    .line 252
    .end local v8    # "w":I
    .end local v9    # "i":I
    .restart local v4    # "i":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 258
    .end local v7    # "h":I
    :cond_8
    move v5, v1

    .line 259
    move v6, p1

    .line 260
    sub-int v7, v1, p2

    .restart local v7    # "h":I
    :goto_6
    if-ge v7, v5, :cond_a

    .line 261
    const/4 v8, 0x0

    .restart local v8    # "w":I
    :goto_7
    if-ge v8, v6, :cond_9

    .line 262
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .restart local v9    # "i":I
    mul-int v10, v7, p1

    add-int/2addr v10, v8

    invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    aput v10, v3, v4

    .line 261
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_7

    .line 260
    .end local v8    # "w":I
    .end local v9    # "i":I
    .restart local v4    # "i":I
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 265
    .end local v7    # "h":I
    :cond_a
    return-object v3

    .line 220
    .end local v0    # "bufferLength":I
    .end local v1    # "height":I
    .end local v2    # "borderPixelsNum":I
    .end local v3    # "boarderPixels":[I
    .end local v4    # "i":I
    .end local v5    # "size1":I
    .end local v6    # "size2":I
    :cond_b
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getBoarderPixels([III)[I
    .locals 9
    .param p0, "pixels"    # [I
    .param p1, "width"    # I
    .param p2, "borderWidth"    # I

    .line 174
    if-eqz p0, :cond_b

    array-length v0, p0

    if-gtz v0, :cond_0

    goto/16 :goto_8

    .line 177
    :cond_0
    array-length v0, p0

    div-int/2addr v0, p1

    .line 178
    .local v0, "height":I
    if-ge p1, p2, :cond_1

    .line 179
    move p2, p1

    .line 181
    :cond_1
    if-ge v0, p2, :cond_2

    .line 182
    move p2, v0

    .line 185
    :cond_2
    array-length v1, p0

    add-int v2, p2, p2

    sub-int v2, p1, v2

    add-int v3, p2, p2

    sub-int v3, v0, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 186
    .local v1, "borderPixelsNum":I
    new-array v2, v1, [I

    .line 187
    .local v2, "boarderPixels":[I
    const/4 v3, 0x0

    .line 189
    .local v3, "i":I
    move v4, p2

    .line 190
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "h":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 191
    const/4 v6, 0x0

    .local v6, "w":I
    :goto_1
    if-ge v6, p1, :cond_3

    .line 192
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v2, v3

    .line 191
    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_1

    .line 190
    .end local v6    # "w":I
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    .end local v5    # "h":I
    :cond_4
    sub-int v4, v0, p2

    .line 197
    move v5, p2

    .restart local v5    # "h":I
    :goto_2
    if-ge v5, v4, :cond_6

    .line 198
    const/4 v6, 0x0

    .restart local v6    # "w":I
    :goto_3
    if-ge v6, p2, :cond_5

    .line 199
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .restart local v7    # "i":I
    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v2, v3

    .line 198
    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_3

    .line 197
    .end local v6    # "w":I
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 203
    .end local v5    # "h":I
    :cond_6
    move v5, p2

    .restart local v5    # "h":I
    :goto_4
    sub-int v6, v0, p2

    if-ge v5, v6, :cond_8

    .line 204
    sub-int v6, p1, p2

    .restart local v6    # "w":I
    :goto_5
    if-ge v6, p1, :cond_7

    .line 205
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .restart local v7    # "i":I
    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v2, v3

    .line 204
    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_5

    .line 203
    .end local v6    # "w":I
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 209
    .end local v5    # "h":I
    :cond_8
    sub-int v5, v0, p2

    .restart local v5    # "h":I
    :goto_6
    if-ge v5, v0, :cond_a

    .line 210
    const/4 v6, 0x0

    .restart local v6    # "w":I
    :goto_7
    if-ge v6, p1, :cond_9

    .line 211
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .restart local v7    # "i":I
    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v2, v3

    .line 210
    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_7

    .line 209
    .end local v6    # "w":I
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 214
    .end local v5    # "h":I
    :cond_a
    return-object v2

    .line 175
    .end local v0    # "height":I
    .end local v1    # "borderPixelsNum":I
    .end local v2    # "boarderPixels":[I
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_b
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getCompressedFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static blacklist getCompressedQuality()I
    .locals 1

    .line 35
    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    return v0
.end method

.method public static blacklist getImageSizeFromFile(Ljava/lang/String;)[I
    .locals 6
    .param p0, "imagePath"    # Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 129
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 130
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 131
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 132
    .local v2, "imageHeight":I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 133
    .local v3, "imageWidth":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    aput v2, v4, v1

    return-object v4
.end method

.method public static blacklist getImageSizeFromResource(Landroid/content/res/Resources;I)[I
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 137
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 138
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 139
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 140
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 141
    .local v2, "imageHeight":I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 142
    .local v3, "imageWidth":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    aput v2, v4, v1

    return-object v4
.end method

.method public static blacklist saveBitmapAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "bResult":Z
    const/4 v1, 0x0

    .line 56
    .local v1, "out":Ljava/io/FileOutputStream;
    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 57
    .local v2, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    sget v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    .line 60
    .local v3, "compressQuality":I
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

    .line 61
    .local v4, "fullPath":Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 62
    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 63
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v0, 0x1

    .line 69
    .end local v4    # "fullPath":Ljava/lang/String;
    nop

    .line 70
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :cond_0
    :goto_0
    goto :goto_1

    .line 72
    :catch_0
    move-exception v4

    .line 73
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 65
    :catch_1
    move-exception v4

    .line 66
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 70
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 76
    :goto_1
    return v0

    .line 69
    :goto_2
    if-eqz v1, :cond_1

    .line 70
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 72
    :catch_2
    move-exception v5

    .line 73
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 74
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 75
    :goto_4
    throw v4
.end method

.method public static blacklist saveBitmapAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 46
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 47
    const/4 v2, 0x0

    return v2

    .line 50
    .end local v1    # "success":Z
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
    .param p0, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 31
    sput-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 32
    return-void
.end method

.method public static blacklist setCompressedQuality(I)V
    .locals 0
    .param p0, "quality"    # I

    .line 39
    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    .line 40
    return-void
.end method
