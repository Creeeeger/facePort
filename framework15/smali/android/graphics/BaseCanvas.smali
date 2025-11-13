.class public abstract Landroid/graphics/BaseCanvas;
.super Ljava/lang/Object;
.source "BaseCanvas.java"


# instance fields
.field private blacklist mAllowHwFeaturesInSwMode:Z

.field protected greylist-max-o mDensity:I

.field protected greylist mNativeCanvasWrapper:J

.field protected greylist-max-o mScreenDensity:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iput v0, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->GFW_DEBUG_DISABLE_HWRENDERING:Z

    iput-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    return-void
.end method

.method protected static final greylist-max-o checkRange(III)V
    .locals 1

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    if-gt v0, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static native greylist-max-o nDrawArc(JFFFFFFZJ)V
.end method

.method private static native blacklist nDrawBitmap(JJFFFFFFFFJII)V
.end method

.method private static native blacklist nDrawBitmap(JJFFJIII)V
.end method

.method private static native greylist-max-o nDrawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native blacklist nDrawBitmapMatrix(JJJJ)V
.end method

.method private static native blacklist nDrawBitmapMesh(JJII[FI[IIJ)V
.end method

.method private static native greylist-max-o nDrawCircle(JFFFJ)V
.end method

.method private static native greylist-max-o nDrawColor(JII)V
.end method

.method private static native blacklist nDrawColor(JJJI)V
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V
.end method

.method private static native blacklist nDrawGlyphs(J[I[FIIIJJ)V
.end method

.method private static native greylist-max-o nDrawLine(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawLines(J[FIIJ)V
.end method

.method private static native blacklist nDrawMesh(JJIJ)V
.end method

.method private static native greylist-max-o nDrawNinePatch(JJJFFFFJII)V
.end method

.method private static native greylist-max-o nDrawOval(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawPaint(JJ)V
.end method

.method private static native greylist-max-o nDrawPath(JJJ)V
.end method

.method private static native greylist-max-o nDrawPoint(JFFJ)V
.end method

.method private static native greylist-max-o nDrawPoints(J[FIIJ)V
.end method

.method private static native greylist-max-o nDrawRect(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawRegion(JJJ)V
.end method

.method private static native greylist-max-o nDrawRoundRect(JFFFFFFJ)V
.end method

.method private static native greylist-max-o nDrawText(JLjava/lang/String;IIFFIJ)V
.end method

.method private static native greylist-max-o nDrawText(J[CIIFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextOnPath(J[CIIJFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
.end method

.method private static native greylist-max-o nDrawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native greylist-max-o nDrawVertices(JII[FI[FI[II[SIIJ)V
.end method

.method private static native blacklist nPunchHole(JFFFFFFF)V
.end method

.method private blacklist throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/BitmapShader;

    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering doesn\'t support RuntimeShader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    instance-of v0, p1, Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    move-object v0, p1

    check-cast v0, Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private greylist-max-o throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering doesn\'t support hardware bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o drawARGB(IIII)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    return-void
.end method

.method public greylist-max-o drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p8

    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v12}, Landroid/graphics/BaseCanvas;->nDrawArc(JFFFFFFZJ)V

    return-void
.end method

.method public greylist-max-o drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 11

    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    move-wide v6, v4

    iget v8, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    iget v9, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFJIII)V

    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawBitmapMatrix(JJJJ)V

    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_0
    move-wide/from16 v18, v4

    if-nez v1, :cond_1

    const/4 v4, 0x0

    move v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v15, v6

    move v14, v7

    goto :goto_1

    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    move v15, v6

    move v14, v7

    :goto_1
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    int-to-float v10, v4

    int-to-float v11, v5

    int-to-float v12, v15

    int-to-float v13, v14

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move/from16 v22, v4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move/from16 v23, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v2, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v0, p1

    move/from16 v20, v2

    iget v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v24, v14

    move v14, v1

    move v1, v15

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v21, v2

    invoke-static/range {v6 .. v21}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    return-void

    :cond_2
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_0
    move-wide/from16 v18, v4

    if-nez v1, :cond_1

    const/4 v4, 0x0

    move v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move/from16 v22, v6

    move/from16 v23, v7

    goto :goto_1

    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move/from16 v22, v6

    move/from16 v23, v7

    :goto_1
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    iget v14, v2, Landroid/graphics/RectF;->left:F

    iget v15, v2, Landroid/graphics/RectF;->top:F

    iget v13, v2, Landroid/graphics/RectF;->right:F

    iget v12, v2, Landroid/graphics/RectF;->bottom:F

    iget v11, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v10, p1

    iget v0, v10, Landroid/graphics/Bitmap;->mDensity:I

    move v10, v4

    move/from16 v20, v11

    move v11, v5

    move/from16 v17, v12

    move/from16 v12, v22

    move/from16 v16, v13

    move/from16 v13, v23

    move/from16 v21, v0

    invoke-static/range {v6 .. v21}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v13, p6

    move-object/from16 v14, p9

    if-ltz v13, :cond_6

    if-ltz p7, :cond_5

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v13, :cond_4

    add-int/lit8 v1, p7, -0x1

    mul-int v1, v1, p3

    add-int v15, p2, v1

    move-object/from16 v11, p1

    array-length v12, v11

    if-ltz p2, :cond_3

    add-int v1, p2, v13

    if-gt v1, v12, :cond_3

    if-ltz v15, :cond_3

    add-int v1, v15, v13

    if-gt v1, v12, :cond_3

    invoke-direct {v0, v14}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    if-eqz v13, :cond_2

    if-nez p7, :cond_0

    move/from16 v18, v12

    goto :goto_1

    :cond_0
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    if-eqz v14, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    move-wide/from16 v16, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v18, v12

    move-wide/from16 v11, v16

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    return-void

    :cond_2
    move/from16 v18, v12

    :goto_1
    return-void

    :cond_3
    move/from16 v18, v12

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "height must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v11, p5

    int-to-float v6, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public greylist-max-o drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v11, p8

    or-int v1, p2, p3

    or-int/2addr v1, v13

    or-int/2addr v1, v15

    if-ltz v1, :cond_4

    invoke-direct {v0, v11}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v12, v1, v2

    move-object/from16 v10, p4

    array-length v1, v10

    mul-int/lit8 v2, v12, 0x2

    invoke-static {v1, v13, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    if-eqz v14, :cond_1

    array-length v1, v14

    invoke-static {v1, v15, v12}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    :cond_1
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    if-eqz v11, :cond_2

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x0

    :goto_0
    move-wide/from16 v16, v5

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v18, v12

    move-wide/from16 v11, v16

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawBitmapMesh(JJII[FI[IIJ)V

    return-void

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawCircle(JFFFJ)V

    return-void
.end method

.method public greylist-max-o drawColor(I)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public blacklist drawColor(ILandroid/graphics/BlendMode;)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public greylist-max-o drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public blacklist drawColor(JLandroid/graphics/BlendMode;)V
    .locals 8

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v5

    iget v7, v5, Landroid/graphics/Xfermode;->porterDuffMode:I

    move-wide v5, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->nDrawColor(JJJI)V

    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget v15, v1, Landroid/graphics/RectF;->left:F

    iget v14, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v12, v1, Landroid/graphics/RectF;->bottom:F

    iget v11, v2, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v18

    move v6, v15

    move v7, v14

    move/from16 v20, v8

    move v8, v13

    move/from16 v21, v9

    move v9, v12

    move/from16 v22, v10

    move/from16 v10, p2

    move/from16 v23, v11

    move/from16 v11, p3

    move/from16 v24, v12

    move/from16 v12, v23

    move/from16 v25, v13

    move/from16 v13, v22

    move/from16 v26, v14

    move/from16 v14, v21

    move/from16 v27, v15

    move/from16 v15, v20

    move/from16 v16, p5

    move/from16 v17, p6

    invoke-static/range {v4 .. v19}, Landroid/graphics/BaseCanvas;->nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V

    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    invoke-direct {v0, v12}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    if-eqz v13, :cond_0

    if-eqz v14, :cond_0

    array-length v2, v13

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    array-length v2, v14

    if-ne v2, v3, :cond_0

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    iget v9, v1, Landroid/graphics/RectF;->right:F

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget v7, v15, Landroid/graphics/RectF;->left:F

    iget v6, v15, Landroid/graphics/RectF;->top:F

    iget v5, v15, Landroid/graphics/RectF;->right:F

    iget v4, v15, Landroid/graphics/RectF;->bottom:F

    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    move/from16 v18, v4

    move v4, v11

    move/from16 v19, v5

    move v5, v10

    move/from16 v20, v6

    move v6, v9

    move/from16 v21, v7

    move v7, v8

    move/from16 v22, v8

    move-object/from16 v8, p2

    move/from16 v23, v9

    move/from16 v9, v21

    move/from16 v24, v10

    move/from16 v10, v20

    move/from16 v25, v11

    move/from16 v11, v19

    move/from16 v12, v18

    move-object/from16 v13, p4

    move-wide/from16 v14, v16

    invoke-static/range {v2 .. v15}, Landroid/graphics/BaseCanvas;->nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Both inner and outer radii arrays must contain exactly 8 values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    const-string v0, "glyphIds must not be null."

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "positions must not be null."

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "font must not be null."

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "paint must not be null."

    move-object/from16 v14, p7

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    const-string v0, " of elements"

    if-ltz p2, :cond_1

    add-int v1, p2, p5

    array-length v2, v11

    if-gt v1, v2, :cond_1

    if-ltz p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int v1, p4, v1

    array-length v2, v12

    if-gt v1, v2, :cond_0

    move-object/from16 v15, p0

    iget-wide v0, v15, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v7

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseCanvas;->nDrawGlyphs(J[I[FIIIJJ)V

    return-void

    :cond_0
    move-object/from16 v15, p0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positions must have at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p5, 0x2

    add-int v3, p4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v15, p0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glyphIds must have at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p2, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawLine(JFFFFJ)V

    return-void
.end method

.method public greylist-max-o drawLines([FIILandroid/graphics/Paint;)V
    .locals 7

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawLines(J[FIIJ)V

    return-void
.end method

.method public greylist-max-o drawLines([FLandroid/graphics/Paint;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawMesh(Landroid/graphics/Mesh;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "software rendering doesn\'t support meshes"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    sget-object p2, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    :cond_2
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Mesh;->getNativeWrapperInstance()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawMesh(JJIJ)V

    return-void
.end method

.method public greylist-max-o drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawOval(JFFFFJ)V

    return-void
.end method

.method public greylist-max-o drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawPaint(Landroid/graphics/Paint;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseCanvas;->nDrawPaint(JJ)V

    return-void
.end method

.method public greylist-max-o drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_0
    move-wide/from16 v16, v4

    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v4, p1

    iget-wide v10, v4, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v14, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v5

    iget v5, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    move/from16 v18, v5

    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public greylist-max-o drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_0
    move-wide/from16 v16, v4

    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v4, p1

    iget-wide v10, v4, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/RectF;->right:F

    iget v15, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    move/from16 v18, v5

    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public greylist-max-o drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPath(JJJ)V

    return-void
.end method

.method public greylist-max-o drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6

    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPoint(JFFJ)V

    return-void
.end method

.method public greylist-max-o drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawPoints(J[FIIJ)V

    return-void
.end method

.method public greylist-max-o drawPoints([FLandroid/graphics/Paint;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public greylist-max-o drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {p3, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public greylist-max-o drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_1

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {p5, p5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v3, p2, v0

    mul-int/lit8 v1, v0, 0x2

    aget v5, p4, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawRGB(III)V
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    return-void
.end method

.method public greylist-max-o drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public greylist-max-o drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public greylist-max-o drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public blacklist drawRegion(Landroid/graphics/Region;Landroid/graphics/Paint;)V
    .locals 6

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawRegion(JJJ)V

    return-void
.end method

.method public greylist-max-o drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p7

    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseCanvas;->nDrawRoundRect(JFFFFFFJ)V

    return-void
.end method

.method public greylist-max-o drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public greylist-max-o drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p6

    or-int v0, v15, v14

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v14

    or-int/2addr v0, v1

    if-ltz v0, :cond_3

    invoke-direct {v7, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {v13, v13}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    instance-of v0, v8, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannedString;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, v8, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    move-object v0, v8

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    sub-int v0, v14, v15

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v8, v15, v14, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget-wide v1, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sub-int v20, v14, v15

    iget v3, v13, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v24

    const/16 v19, 0x0

    move-wide/from16 v16, v1

    move-object/from16 v18, v0

    move/from16 v21, p4

    move/from16 v22, p5

    move/from16 v23, v3

    invoke-static/range {v16 .. v25}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v9, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget v0, v13, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v17

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, v0

    invoke-static/range {v9 .. v18}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 10

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {p4, p4}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, p4, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    return-void
.end method

.method public greylist-max-o drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v11, p6

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    invoke-direct {p0, v11}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {v11, v11}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v8, v11, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v11, p6

    or-int v1, p2, p3

    add-int v2, p2, p3

    or-int/2addr v1, v2

    move-object v12, p1

    array-length v2, v12

    sub-int/2addr v2, p2

    sub-int v2, v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    invoke-direct {p0, v11}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {v11, v11}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v8, v11, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {v1, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-wide v3, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v1, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    move-object v5, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v3 .. v12}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    :cond_0
    return-void
.end method

.method public greylist-max-o drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v13, p7

    if-ltz p2, :cond_0

    add-int v1, p2, p3

    move-object/from16 v14, p1

    array-length v2, v14

    if-gt v1, v2, :cond_1

    invoke-direct {p0, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {v13, v13}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v13, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    return-void

    :cond_0
    move-object/from16 v14, p1

    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public blacklist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v3

    sub-int v5, p3, p2

    sub-int v7, p5, p4

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v13

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    return-void
.end method

.method public greylist-max-o drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 34

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v9, p9

    if-eqz v11, :cond_7

    if-eqz v9, :cond_6

    or-int v0, v15, v14

    or-int/2addr v0, v12

    or-int/2addr v0, v13

    sub-int v1, v15, v12

    or-int/2addr v0, v1

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    sub-int v1, v13, v14

    or-int/2addr v0, v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v13

    or-int/2addr v0, v1

    if-ltz v0, :cond_5

    invoke-direct {v10, v9}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {v9, v9}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    instance-of v0, v11, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, v11, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, v11, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, v11, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    move-object v0, v11

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_1
    instance-of v0, v11, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_3

    move-object v9, v11

    check-cast v9, Landroid/text/PrecomputedText;

    invoke-virtual {v9, v15}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v0

    if-gt v14, v0, :cond_2

    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v16

    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v1

    sub-int v2, v15, v16

    sub-int v3, v14, v16

    sub-int v4, v12, v16

    sub-int v5, v13, v16

    move-object/from16 v0, p0

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v18, v8

    move/from16 v8, p8

    move-object/from16 v19, v9

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    return-void

    :cond_2
    move/from16 v18, v8

    move-object/from16 v19, v9

    :cond_3
    sub-int v0, v13, v12

    sub-int v1, v14, v15

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v11, v12, v13, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget-wide v3, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sub-int v23, v15, v12

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v30

    const/16 v25, 0x0

    const-wide/16 v32, 0x0

    move-wide/from16 v20, v3

    move-object/from16 v22, v2

    move/from16 v24, v1

    move/from16 v26, v0

    move/from16 v27, p6

    move/from16 v28, p7

    move/from16 v29, p8

    invoke-static/range {v20 .. v33}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-wide v0, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v22

    move-wide v12, v0

    move-object v14, v2

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    invoke-static/range {v12 .. v23}, Landroid/graphics/BaseCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    :goto_1
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p9

    if-eqz v15, :cond_2

    if-eqz v13, :cond_1

    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    array-length v2, v15

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    invoke-direct {v0, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {v13, v13}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    const-wide/16 v16, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v13, v16

    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v14, p2

    move-object/from16 v15, p5

    move-object/from16 v13, p7

    move-object/from16 v12, p9

    move-object/from16 v11, p3

    array-length v1, v11

    move/from16 v10, p4

    invoke-static {v1, v10, v14}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    if-eqz v15, :cond_0

    array-length v1, v15

    move/from16 v9, p6

    invoke-static {v1, v9, v14}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_0

    :cond_0
    move/from16 v9, p6

    :goto_0
    if-eqz v13, :cond_1

    array-length v1, v13

    div-int/lit8 v2, v14, 0x2

    move/from16 v8, p8

    invoke-static {v1, v8, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_1

    :cond_1
    move/from16 v8, p8

    :goto_1
    if-eqz v12, :cond_2

    array-length v1, v12

    move/from16 v7, p10

    move/from16 v6, p11

    invoke-static {v1, v7, v6}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_2

    :cond_2
    move/from16 v7, p10

    move/from16 v6, p11

    :goto_2
    move-object/from16 v5, p12

    invoke-direct {v0, v5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v4, p1

    iget v3, v4, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, v16

    invoke-static/range {v1 .. v15}, Landroid/graphics/BaseCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    return-void
.end method

.method public greylist-max-o isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHwFeaturesInSwModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    return v0
.end method

.method protected blacklist onHwFeatureInSwMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist punchHole(FFFFFFF)V
    .locals 10

    move-object v0, p0

    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Landroid/graphics/BaseCanvas;->nPunchHole(JFFFFFFF)V

    return-void
.end method

.method public blacklist setHwFeaturesInSwModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    return-void
.end method

.method protected greylist-max-o throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a non-premultiplied bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
