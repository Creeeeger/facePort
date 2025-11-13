.class public Landroid/graphics/BaseRecordingCanvas;
.super Landroid/graphics/Canvas;
.source "BaseRecordingCanvas.java"


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0
    .param p1, "nativeCanvas"    # J

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/graphics/Canvas;-><init>(J)V

    .line 55
    return-void
.end method

.method private static native blacklist nDrawArc(JFFFFFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(JJFFFFFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(JJFFJIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(J[IIIFFIIZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmapMatrix(JJJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmapMesh(JJII[FI[IIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawCircle(JFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawColor(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawColor(JJJI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawGlyphs(J[I[FIIIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawLine(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawLines(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawNinePatch(JJJFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawOval(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPaint(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPath(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPoint(JFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPoints(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRect(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRegion(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRoundRect(JFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawText(JLjava/lang/String;IIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawText(J[CIIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextOnPath(J[CIIJFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextRun(J[CIIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawVertices(JII[FI[FI[II[SIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nPunchHole(JFFFFFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final whitelist drawARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 73
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->drawColor(I)V

    .line 74
    return-void
.end method

.method public final whitelist drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 60
    move-object v0, p0

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 61
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 60
    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawArc(JFFFFFFZJ)V

    .line 62
    return-void
.end method

.method public final whitelist drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 67
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseRecordingCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 69
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 80
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 81
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    move-wide v6, v4

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    iget v9, p0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 80
    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFJIII)V

    .line 83
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 88
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    .line 89
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    .line 88
    :goto_0
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmapMatrix(JJJJ)V

    .line 90
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 24
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_2

    .line 98
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 99
    if-nez p4, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide/from16 v17, v3

    .line 102
    .local v17, "nativePaint":J
    if-nez v1, :cond_1

    .line 103
    const/4 v3, 0x0

    move v4, v3

    .line 104
    .local v3, "left":I
    .local v4, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 105
    .local v5, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move v15, v5

    move v14, v6

    .local v6, "bottom":I
    goto :goto_1

    .line 107
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 108
    .restart local v3    # "left":I
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 109
    .restart local v5    # "right":I
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 110
    .restart local v4    # "top":I
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    move v15, v5

    move v14, v6

    .line 113
    .end local v5    # "right":I
    .local v14, "bottom":I
    .local v15, "right":I
    :goto_1
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    int-to-float v9, v3

    int-to-float v10, v4

    int-to-float v11, v15

    int-to-float v12, v14

    iget v13, v2, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    move/from16 v21, v3

    .end local v3    # "left":I
    .local v21, "left":I
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move/from16 v22, v4

    .end local v4    # "top":I
    .local v22, "top":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v2, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    move-object/from16 v0, p1

    move/from16 v19, v2

    iget v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v23, v14

    .end local v14    # "bottom":I
    .local v23, "bottom":I
    move v14, v1

    move v1, v15

    .end local v15    # "right":I
    .local v1, "right":I
    move v15, v3

    move/from16 v16, v4

    move/from16 v20, v2

    invoke-static/range {v5 .. v20}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 116
    return-void

    .line 96
    .end local v1    # "right":I
    .end local v17    # "nativePaint":J
    .end local v21    # "left":I
    .end local v22    # "top":I
    .end local v23    # "bottom":I
    :cond_2
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 23
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 125
    if-nez p4, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide/from16 v17, v3

    .line 128
    .local v17, "nativePaint":J
    if-nez v1, :cond_1

    .line 129
    const/4 v3, 0x0

    move v4, v3

    .line 130
    .local v3, "left":F
    .local v4, "top":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 131
    .local v5, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v21, v5

    move/from16 v22, v6

    .local v6, "bottom":F
    goto :goto_1

    .line 133
    .end local v3    # "left":F
    .end local v4    # "top":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 134
    .restart local v3    # "left":F
    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v4

    .line 135
    .restart local v5    # "right":F
    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 136
    .restart local v4    # "top":F
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    move/from16 v21, v5

    move/from16 v22, v6

    .line 139
    .end local v5    # "right":F
    .local v21, "right":F
    .local v22, "bottom":F
    :goto_1
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    iget v13, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->top:F

    iget v15, v2, Landroid/graphics/RectF;->right:F

    iget v12, v2, Landroid/graphics/RectF;->bottom:F

    iget v11, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    move-object/from16 v10, p1

    iget v9, v10, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v20, v9

    move v9, v3

    move v10, v4

    move/from16 v19, v11

    move/from16 v11, v21

    move/from16 v16, v12

    move/from16 v12, v22

    invoke-static/range {v5 .. v20}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 142
    return-void

    .line 122
    .end local v3    # "left":F
    .end local v4    # "top":F
    .end local v17    # "nativePaint":J
    .end local v21    # "right":F
    .end local v22    # "bottom":F
    :cond_2
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
.end method

.method public final whitelist drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    move/from16 v12, p6

    if-ltz v12, :cond_6

    .line 153
    if-ltz p7, :cond_5

    .line 156
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v12, :cond_4

    .line 159
    add-int/lit8 v0, p7, -0x1

    mul-int v0, v0, p3

    add-int v13, p2, v0

    .line 160
    .local v13, "lastScanline":I
    move-object/from16 v14, p1

    array-length v15, v14

    .line 161
    .local v15, "length":I
    if-ltz p2, :cond_3

    add-int v0, p2, v12

    if-gt v0, v15, :cond_3

    if-ltz v13, :cond_3

    add-int v0, v13, v12

    if-gt v0, v15, :cond_3

    .line 166
    if-eqz v12, :cond_2

    if-nez p7, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    move-object/from16 v10, p0

    iget-wide v0, v10, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 171
    if-eqz p9, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    move-wide/from16 v16, v2

    .line 170
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, v16

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 172
    return-void

    .line 167
    :cond_2
    :goto_1
    return-void

    .line 163
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 157
    .end local v13    # "lastScanline":I
    .end local v15    # "length":I
    :cond_4
    move-object/from16 v14, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_5
    move-object/from16 v14, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_6
    move-object/from16 v14, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
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

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 182
    return-void
.end method

.method public final whitelist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 18
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 188
    move/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    or-int v0, p2, p3

    or-int/2addr v0, v12

    or-int/2addr v0, v14

    if-ltz v0, :cond_4

    .line 191
    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    mul-int v15, v0, v1

    .line 196
    .local v15, "count":I
    move-object/from16 v10, p4

    array-length v0, v10

    mul-int/lit8 v1, v15, 0x2

    invoke-static {v0, v12, v1}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 197
    if-eqz v13, :cond_1

    .line 199
    array-length v0, v13

    invoke-static {v0, v14, v15}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 201
    :cond_1
    move-object/from16 v11, p0

    iget-wide v0, v11, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 203
    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    :goto_0
    move-wide/from16 v16, v4

    .line 201
    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, v16

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmapMesh(JJII[FI[IIJ)V

    .line 204
    return-void

    .line 192
    .end local v15    # "count":I
    :cond_3
    :goto_1
    return-void

    .line 189
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 208
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawCircle(JFFFJ)V

    .line 209
    return-void
.end method

.method public final whitelist drawColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 213
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 214
    return-void
.end method

.method public final whitelist drawColor(ILandroid/graphics/BlendMode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/BlendMode;

    .line 223
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 224
    return-void
.end method

.method public final whitelist drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 218
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 219
    return-void
.end method

.method public final whitelist drawColor(JLandroid/graphics/BlendMode;)V
    .locals 8
    .param p1, "color"    # J
    .param p3, "mode"    # Landroid/graphics/BlendMode;

    .line 228
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 229
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    .line 230
    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v5

    iget v7, v5, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 229
    move-wide v5, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JJJI)V

    .line 231
    return-void
.end method

.method public final whitelist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 19
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRx"    # F
    .param p3, "outerRy"    # F
    .param p4, "inner"    # Landroid/graphics/RectF;
    .param p5, "innerRx"    # F
    .param p6, "innerRy"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 406
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    iget-wide v3, v2, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    .line 409
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v17

    .line 406
    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-static/range {v3 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V

    .line 410
    return-void
.end method

.method public final whitelist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 17
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRadii"    # [F
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "innerRadii"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 415
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-wide v3, v2, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget v11, v1, Landroid/graphics/RectF;->top:F

    iget v12, v1, Landroid/graphics/RectF;->right:F

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    .line 418
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v15

    .line 415
    move-object/from16 v9, p2

    move-object/from16 v14, p4

    invoke-static/range {v3 .. v16}, Landroid/graphics/BaseRecordingCanvas;->nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V

    .line 419
    return-void
.end method

.method public whitelist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "glyphIds"    # [I
    .param p2, "glyphIdOffset"    # I
    .param p3, "positions"    # [F
    .param p4, "positionOffset"    # I
    .param p5, "glyphCount"    # I
    .param p6, "font"    # Landroid/graphics/fonts/Font;
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 430
    move-object/from16 v11, p1

    move-object/from16 v12, p3

    const-string v0, "glyphIds must not be null."

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v0, "positions must not be null."

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    const-string v0, "font must not be null."

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 433
    const-string/jumbo v0, "paint must not be null."

    move-object/from16 v14, p7

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 436
    const-string v0, " of elements"

    if-ltz p2, :cond_1

    add-int v1, p2, p5

    array-length v2, v11

    if-gt v1, v2, :cond_1

    .line 440
    if-ltz p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int v1, p4, v1

    array-length v2, v12

    if-gt v1, v2, :cond_0

    .line 445
    move-object/from16 v15, p0

    iget-wide v0, v15, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 446
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v7

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 445
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawGlyphs(J[I[FIIIJJ)V

    .line 447
    return-void

    .line 440
    :cond_0
    move-object/from16 v15, p0

    .line 441
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

    .line 436
    :cond_1
    move-object/from16 v15, p0

    .line 437
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

.method public final whitelist drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 236
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawLine(JFFFFJ)V

    .line 237
    return-void
.end method

.method public final whitelist drawLines([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 242
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawLines(J[FIIJ)V

    .line 243
    return-void
.end method

.method public final whitelist drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 247
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseRecordingCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 248
    return-void
.end method

.method public final whitelist drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 253
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawOval(JFFFFJ)V

    .line 254
    return-void
.end method

.method public final whitelist drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 258
    if-eqz p1, :cond_0

    .line 261
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 262
    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist drawPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 266
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseRecordingCanvas;->nDrawPaint(JJ)V

    .line 267
    return-void
.end method

.method public final whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 19
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 273
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 274
    if-nez p3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide v15, v3

    .line 275
    .local v15, "nativePaint":J
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v3, p1

    iget-wide v9, v3, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v13, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v4

    iget v4, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    .line 275
    move/from16 v17, v4

    invoke-static/range {v5 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 278
    return-void
.end method

.method public final whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 19
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 284
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 285
    if-nez p3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide v15, v3

    .line 286
    .local v15, "nativePaint":J
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v3, p1

    iget-wide v9, v3, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    .line 286
    move/from16 v17, v4

    invoke-static/range {v5 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 289
    return-void
.end method

.method public final whitelist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 293
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    .line 294
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v3, v0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawRegion(JJJ)V

    goto :goto_0

    .line 296
    :cond_0
    iget-wide v7, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v9

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Landroid/graphics/BaseRecordingCanvas;->nDrawPath(JJJ)V

    .line 298
    :goto_0
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 303
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    move-result v0

    .line 304
    .local v0, "restoreCount":I
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 305
    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->restoreToCount(I)V

    .line 306
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .line 310
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    .line 311
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->translate(FF)V

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 313
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 314
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 313
    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->scale(FF)V

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 317
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->restore()V

    .line 318
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .line 322
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    .line 323
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->translate(FF)V

    .line 324
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->scale(FF)V

    .line 327
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 328
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->restore()V

    .line 329
    return-void
.end method

.method public final whitelist drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 333
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->nDrawPoint(JFFJ)V

    .line 334
    return-void
.end method

.method public final whitelist drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 339
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawPoints(J[FIIJ)V

    .line 340
    return-void
.end method

.method public final whitelist drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 344
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseRecordingCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 345
    return-void
.end method

.method public final whitelist drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 367
    return-void
.end method

.method public final whitelist drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    if-ltz p2, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 357
    add-int v3, p2, v0

    const/4 v4, 0x1

    mul-int/lit8 v1, v0, 0x2

    aget v5, p4, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawRGB(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 388
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->drawColor(I)V

    .line 389
    return-void
.end method

.method public final whitelist drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 372
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 373
    return-void
.end method

.method public final whitelist drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 377
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

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseRecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 378
    return-void
.end method

.method public final whitelist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 382
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 383
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 382
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 384
    return-void
.end method

.method public final whitelist drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 394
    move-object v0, p0

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 395
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 394
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 396
    return-void
.end method

.method public final whitelist drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 400
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 401
    return-void
.end method

.method public final whitelist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 26
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 466
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

    .line 470
    invoke-virtual {v13, v13}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 472
    instance-of v0, v8, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannedString;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    instance-of v0, v8, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 477
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

    .line 480
    :cond_1
    sub-int v0, v14, v15

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 481
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {v8, v15, v14, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 482
    iget-wide v1, v7, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    const/16 v19, 0x0

    sub-int v20, v14, v15

    iget v3, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 483
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v24

    .line 482
    move-wide/from16 v16, v1

    move-object/from16 v18, v0

    move/from16 v21, p4

    move/from16 v22, p5

    move/from16 v23, v3

    invoke-static/range {v16 .. v25}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(J[CIIFFIJ)V

    .line 484
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 474
    .end local v0    # "buf":[C
    :cond_2
    :goto_0
    iget-wide v9, v7, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget v0, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 475
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v17

    .line 474
    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, v0

    invoke-static/range {v9 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 486
    :goto_1
    return-void

    .line 467
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 491
    invoke-virtual {p4, p4}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 493
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, p4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 494
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 493
    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 495
    return-void
.end method

.method public final whitelist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 500
    move-object/from16 v10, p6

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 504
    invoke-virtual {v10, v10}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 506
    move-object v11, p0

    iget-wide v0, v11, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v7, v10, Landroid/graphics/Paint;->mBidiFlags:I

    .line 507
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 506
    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 508
    return-void

    .line 501
    :cond_0
    move-object v11, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 452
    move-object/from16 v10, p6

    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    move-object v11, p1

    array-length v1, v11

    sub-int/2addr v1, p2

    sub-int v1, v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 457
    invoke-virtual {v10, v10}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 459
    move-object v12, p0

    iget-wide v0, v12, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v7, v10, Landroid/graphics/Paint;->mBidiFlags:I

    .line 460
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 459
    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(J[CIIFFIJ)V

    .line 461
    return-void

    .line 454
    :cond_0
    move-object v12, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 527
    move-object/from16 v0, p5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 529
    invoke-virtual {v0, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 531
    move-object v1, p0

    iget-wide v2, v1, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 532
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 531
    move-object v4, p1

    move v7, p3

    move/from16 v8, p4

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    goto :goto_0

    .line 527
    :cond_0
    move-object v1, p0

    .line 534
    :goto_0
    return-void
.end method

.method public final whitelist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 15
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 513
    move-object/from16 v12, p7

    if-ltz p2, :cond_1

    add-int v0, p2, p3

    move-object/from16 v13, p1

    array-length v1, v13

    if-gt v0, v1, :cond_0

    .line 517
    invoke-virtual {v12, v12}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 519
    move-object v14, p0

    iget-wide v0, v14, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 520
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    iget v9, v12, Landroid/graphics/Paint;->mBidiFlags:I

    .line 521
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 519
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    .line 522
    return-void

    .line 513
    :cond_0
    move-object v14, p0

    goto :goto_0

    :cond_1
    move-object v14, p0

    move-object/from16 v13, p1

    .line 514
    :goto_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .locals 15
    .param p1, "measuredText"    # Landroid/graphics/text/MeasuredText;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 617
    move-object v0, p0

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v3

    sub-int v5, p3, p2

    sub-int v7, p5, p4

    .line 618
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v13

    .line 617
    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 620
    return-void
.end method

.method public final whitelist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 34
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 563
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v9, p9

    if-eqz v11, :cond_7

    .line 566
    if-eqz v9, :cond_6

    .line 569
    or-int v0, v15, v14

    or-int/2addr v0, v12

    or-int/2addr v0, v13

    sub-int v1, v15, v12

    or-int/2addr v0, v1

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    sub-int v1, v13, v14

    or-int/2addr v0, v1

    .line 570
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v13

    or-int/2addr v0, v1

    if-ltz v0, :cond_5

    .line 575
    invoke-virtual {v9, v9}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 578
    instance-of v0, v11, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, v11, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, v11, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 582
    :cond_0
    instance-of v0, v11, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 583
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

    .line 586
    :cond_1
    instance-of v0, v11, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_3

    .line 587
    move-object v9, v11

    check-cast v9, Landroid/text/PrecomputedText;

    .line 588
    .local v9, "pt":Landroid/text/PrecomputedText;
    invoke-virtual {v9, v15}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v8

    .line 589
    .local v8, "paraIndex":I
    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v0

    if-gt v14, v0, :cond_2

    .line 590
    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v16

    .line 591
    .local v16, "paraStart":I
    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v17

    .line 593
    .local v17, "mp":Landroid/text/MeasuredParagraph;
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

    .end local v8    # "paraIndex":I
    .local v18, "paraIndex":I
    move/from16 v8, p8

    move-object/from16 v19, v9

    .end local v9    # "pt":Landroid/text/PrecomputedText;
    .local v19, "pt":Landroid/text/PrecomputedText;
    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 599
    return-void

    .line 589
    .end local v16    # "paraStart":I
    .end local v17    # "mp":Landroid/text/MeasuredParagraph;
    .end local v18    # "paraIndex":I
    .end local v19    # "pt":Landroid/text/PrecomputedText;
    .restart local v8    # "paraIndex":I
    .restart local v9    # "pt":Landroid/text/PrecomputedText;
    :cond_2
    move/from16 v18, v8

    move-object/from16 v19, v9

    .line 602
    .end local v8    # "paraIndex":I
    .end local v9    # "pt":Landroid/text/PrecomputedText;
    :cond_3
    sub-int v0, v13, v12

    .line 603
    .local v0, "contextLen":I
    sub-int v1, v14, v15

    .line 604
    .local v1, "len":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 605
    .local v2, "buf":[C
    const/4 v3, 0x0

    invoke-static {v11, v12, v13, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 606
    iget-wide v3, v10, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    sub-int v23, v15, v12

    const/16 v25, 0x0

    .line 607
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    .line 606
    move-wide/from16 v20, v3

    move-object/from16 v22, v2

    move/from16 v24, v1

    move/from16 v26, v0

    move/from16 v27, p6

    move/from16 v28, p7

    move/from16 v29, p8

    invoke-static/range {v20 .. v33}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 609
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 580
    .end local v0    # "contextLen":I
    .end local v1    # "len":I
    .end local v2    # "buf":[C
    :cond_4
    :goto_0
    iget-wide v0, v10, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v22

    .line 580
    move-wide v12, v0

    move-object v14, v2

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    invoke-static/range {v12 .. v23}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    .line 611
    :goto_1
    return-void

    .line 571
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 567
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 540
    move-object/from16 v14, p1

    move-object/from16 v15, p9

    if-eqz v14, :cond_2

    .line 543
    if-eqz v15, :cond_1

    .line 547
    invoke-virtual {v15, v15}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 549
    or-int v0, p2, p3

    or-int v0, v0, p4

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    add-int v1, p4, p5

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    array-length v1, v14

    add-int v2, p4, p5

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 555
    move-object/from16 v12, p0

    iget-wide v0, v12, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 556
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    const-wide/16 v16, 0x0

    .line 555
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v12, v16

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 557
    return-void

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 544
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 18
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .line 627
    move/from16 v15, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p7

    move-object/from16 v12, p9

    move-object/from16 v11, p3

    array-length v0, v11

    move/from16 v10, p4

    invoke-static {v0, v10, v15}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 628
    if-eqz v13, :cond_0

    .line 629
    array-length v0, v13

    move/from16 v9, p6

    invoke-static {v0, v9, v15}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_0

    .line 628
    :cond_0
    move/from16 v9, p6

    .line 631
    :goto_0
    if-eqz v14, :cond_1

    .line 632
    array-length v0, v14

    div-int/lit8 v1, v15, 0x2

    move/from16 v8, p8

    invoke-static {v0, v8, v1}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_1

    .line 631
    :cond_1
    move/from16 v8, p8

    .line 634
    :goto_1
    if-eqz v12, :cond_2

    .line 635
    array-length v0, v12

    move/from16 v7, p10

    move/from16 v6, p11

    invoke-static {v0, v7, v6}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_2

    .line 634
    :cond_2
    move/from16 v7, p10

    move/from16 v6, p11

    .line 637
    :goto_2
    move-object/from16 v5, p0

    iget-wide v0, v5, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v4, p1

    iget v2, v4, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 639
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 637
    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, v16

    invoke-static/range {v0 .. v14}, Landroid/graphics/BaseRecordingCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 640
    return-void
.end method

.method public blacklist punchHole(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F

    .line 647
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nPunchHole(JFFFFFF)V

    .line 648
    return-void
.end method
