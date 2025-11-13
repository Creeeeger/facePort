.class public Lcom/samsung/android/graphics/SemGfxImageFilter;
.super Ljava/lang/Object;
.source "SemGfxImageFilter.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemGfxImageFilter"

.field private static final blacklist PARAM_INDEX_BLUR_QUALITY:I = 0x0

.field private static final blacklist PARAM_INDEX_BLUR_RADIUS:I = 0x1

.field private static final blacklist PARAM_INDEX_CURVE_CHANGED:I = 0x9

.field private static final blacklist PARAM_INDEX_CURVE_LEVEL:I = 0x8

.field private static final blacklist PARAM_INDEX_CURVE_MAXX:I = 0x4

.field private static final blacklist PARAM_INDEX_CURVE_MAXY:I = 0x6

.field private static final blacklist PARAM_INDEX_CURVE_MINX:I = 0x5

.field private static final blacklist PARAM_INDEX_CURVE_MINY:I = 0x7

.field private static final blacklist PARAM_INDEX_PROSATURATION:I = 0xa

.field private static final blacklist PARAM_INDEX_SATURATION:I = 0x2

.field private static final blacklist PARAM_INDEX_VIBRANCE:I = 0x3


# instance fields
.field private blacklist attachedToView:Landroid/view/View;

.field private blacklist nativeFunctor:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    .line 35
    invoke-static {}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nCreate()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    .line 36
    return-void
.end method

.method private static blacklist clamp(FFF)F
    .locals 1
    .param p0, "val"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 335
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private blacklist getParam(I)F
    .locals 1
    .param p1, "id"    # I

    .line 331
    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nGetParam(II)F

    move-result v0

    return v0
.end method

.method private static native blacklist nApplyToBitmap(I[I[III)V
.end method

.method private static native blacklist nCreate()I
.end method

.method private static native blacklist nDestroy(I)V
.end method

.method private static native blacklist nGetParam(II)F
.end method

.method private static native blacklist nSetParam(IIF)V
.end method

.method private blacklist setParam(IF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # F

    .line 324
    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nSetParam(IIF)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    .local v0, "res":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 282
    return-object v0
.end method

.method public blacklist applyToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dstBitmap"    # Landroid/graphics/Bitmap;

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 301
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 306
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 308
    .local v1, "h":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 311
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 315
    mul-int v2, v0, v1

    new-array v10, v2, [I

    .line 316
    .local v10, "src":[I
    array-length v2, v10

    new-array v11, v2, [I

    .line 318
    .local v11, "dst":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v10

    move v5, v0

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 319
    iget v2, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-static {v2, v10, v11, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nApplyToBitmap(I[I[III)V

    .line 320
    move-object v2, p2

    move-object v3, v11

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 321
    return-void

    .line 312
    .end local v10    # "src":[I
    .end local v11    # "dst":[I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Height of srcBitmap and dstBitmap should be same"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Width of srcBitmap and dstBitmap should be same"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstBitmap config should be ARGB_8888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "srcBitmap config should be ARGB_8888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    const-string v1, "SemGfxImageFilter"

    if-nez v0, :cond_0

    .line 74
    const-string v0, "Can\'t draw SemGfxImageFilter. Should be attached to View!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 79
    const-string v0, "Can\'t draw SemGfxImageFilter. LayerType must be \'LAYER_TYPE_HARDWARE\'!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 83
    :cond_1
    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    if-nez v0, :cond_2

    .line 84
    const-string v0, "Can\'t draw SemGfxImageFilter. Canvas should be instance of \'RecordingCanvas\'!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 88
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    iget v1, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-virtual {v0, v1}, Landroid/graphics/RecordingCanvas;->drawWebViewFunctor(I)V

    .line 89
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-static {v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nDestroy(I)V

    .line 45
    return-void
.end method

.method public final blacklist onAttachToView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 57
    const-string v0, "SemGfxImageFilter"

    const-string v3, "Will set View.LayerType to View.LAYER_TYPE_HARDWARE!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 60
    :cond_1
    return-void
.end method

.method public final blacklist onDetachedFromView()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    .line 67
    return-void
.end method

.method public final whitelist setBlurPreset(I)V
    .locals 4
    .param p1, "preset"    # I

    .line 98
    const-string v0, "SemGfxImageFilter"

    const/16 v1, 0xb

    if-lt p1, v1, :cond_2

    const/16 v1, 0x10

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p1}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object v1

    .line 105
    .local v1, "presetAttrs":[F
    array-length v2, v1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 106
    const-string v2, "BlurPreset size is a mismatch with SemGfxImageFilter!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 111
    const/4 v0, 0x1

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    .line 112
    const/4 v0, 0x2

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    .line 113
    const/4 v0, 0x3

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    .line 114
    const/4 v0, 0x4

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    .line 115
    const/4 v0, 0x5

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    .line 116
    const/4 v0, 0x6

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    .line 117
    return-void

    .line 99
    .end local v1    # "presetAttrs":[F
    :cond_2
    :goto_0
    const-string v1, "BlurPreset is not valid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public final whitelist setBlurQuality(F)V
    .locals 2
    .param p1, "quality"    # F

    .line 129
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 130
    return-void
.end method

.method public whitelist setBlurRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .line 140
    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 141
    return-void
.end method

.method public whitelist setCurveLevel(F)V
    .locals 2
    .param p1, "level"    # F

    .line 264
    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 265
    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 266
    return-void
.end method

.method public whitelist setCurveMaxX(F)V
    .locals 2
    .param p1, "maxX"    # F

    .line 201
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 202
    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 203
    return-void
.end method

.method public whitelist setCurveMaxY(F)V
    .locals 2
    .param p1, "maxY"    # F

    .line 231
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 232
    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 233
    return-void
.end method

.method public whitelist setCurveMinX(F)V
    .locals 2
    .param p1, "minX"    # F

    .line 216
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 217
    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 218
    return-void
.end method

.method public whitelist setCurveMinY(F)V
    .locals 2
    .param p1, "minY"    # F

    .line 246
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 247
    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 248
    return-void
.end method

.method public whitelist setProportionalSaturation(F)V
    .locals 2
    .param p1, "saturation"    # F

    .line 187
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 188
    return-void
.end method

.method public whitelist setSaturation(F)V
    .locals 2
    .param p1, "saturation"    # F

    .line 154
    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 155
    return-void
.end method

.method public whitelist setVibrance(F)V
    .locals 2
    .param p1, "vibrance"    # F

    .line 170
    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    .line 171
    return-void
.end method
