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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nCreate()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    return-void
.end method

.method private static blacklist clamp(FFF)F
    .locals 1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static blacklist destroyContext()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nDestroyContext()V

    return-void
.end method

.method private blacklist getParam(I)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nGetParam(II)F

    move-result v0

    return v0
.end method

.method private static native blacklist nApplyMeshGradient(III[I[Landroid/graphics/PointF;)V
.end method

.method private static native blacklist nApplyToBitmap(I[I[III)V
.end method

.method private static native blacklist nCreate()I
.end method

.method private static native blacklist nDestroy(I)V
.end method

.method private static native blacklist nDestroyContext()V
.end method

.method private static native blacklist nGetParam(II)F
.end method

.method private static native blacklist nSetIndexedColor(III)V
.end method

.method private static native blacklist nSetIndexedPoint(IIFF)V
.end method

.method private static native blacklist nSetMeshHandles(IIFFFF)V
.end method

.method private static native blacklist nSetParam(IIF)V
.end method

.method private blacklist setParam(IF)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nSetParam(IIF)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public greylist applyMeshGradient(II[ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    array-length v0, p3

    mul-int v1, p1, p2

    if-ne v0, v1, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    mul-int v1, p1, p2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/PointF;

    invoke-interface {p4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/PointF;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nApplyMeshGradient(III[I[Landroid/graphics/PointF;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Points list must have exactly width * height elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors array must have exactly width * height elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public blacklist applyToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    mul-int v2, v0, v1

    new-array v10, v2, [I

    array-length v2, v10

    new-array v11, v2, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, v10

    move v5, v0

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v2, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-static {v2, v10, v11, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nApplyToBitmap(I[I[III)V

    move-object v2, p2

    move-object v3, v11

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Height of srcBitmap and dstBitmap should be same"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Width of srcBitmap and dstBitmap should be same"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstBitmap config should be ARGB_8888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcBitmap config should be ARGB_8888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    const-string v1, "SemGfxImageFilter"

    if-nez v0, :cond_0

    const-string v0, "Can\'t draw SemGfxImageFilter. Should be attached to View!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const-string v0, "Can\'t draw SemGfxImageFilter. LayerType must be \'LAYER_TYPE_HARDWARE\'!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    if-nez v0, :cond_2

    const-string v0, "Can\'t draw SemGfxImageFilter. Canvas should be instance of \'RecordingCanvas\'!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    iget v1, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-virtual {v0, v1}, Landroid/graphics/RecordingCanvas;->drawWebViewFunctor(I)V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-static {v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nDestroy(I)V

    return-void
.end method

.method public final blacklist onAttachToView(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const-string v0, "SemGfxImageFilter"

    const-string v3, "Will set View.LayerType to View.LAYER_TYPE_HARDWARE!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final blacklist onDetachedFromView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->attachedToView:Landroid/view/View;

    return-void
.end method

.method public final whitelist setBlurPreset(I)V
    .locals 4

    invoke-static {p1}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object v0

    const-string v1, "SemGfxImageFilter"

    if-nez v0, :cond_0

    const-string v2, "BlurPresetAttrs was null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    array-length v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const-string v2, "BlurPreset size is a mismatch with SemGfxImageFilter!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    const/4 v1, 0x6

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    return-void
.end method

.method public final whitelist setBlurQuality(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method

.method public whitelist setBlurRadius(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method

.method public whitelist setCurveLevel(F)V
    .locals 2

    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method

.method public whitelist setCurveMaxX(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method

.method public whitelist setCurveMaxY(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method

.method public whitelist setCurveMinX(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method

.method public whitelist setCurveMinY(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    const/16 v0, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method

.method public greylist setIndexedColor(II)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nSetIndexedColor(III)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be greater than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setIndexedMeshHandles(ILandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nSetMeshHandles(IIFFFF)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be greater than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setIndexedPoint(ILandroid/graphics/PointF;)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/SemGfxImageFilter;->nativeFunctor:I

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->nSetIndexedPoint(IIFF)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be greater than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setProportionalSaturation(F)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method

.method public whitelist setSaturation(F)V
    .locals 2

    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method

.method public whitelist setVibrance(F)V
    .locals 2

    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setParam(IF)V

    return-void
.end method
