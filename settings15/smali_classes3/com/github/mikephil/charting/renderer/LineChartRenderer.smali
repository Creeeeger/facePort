.class public final Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public cubicFillPath:Landroid/graphics/Path;

.field public cubicPath:Landroid/graphics/Path;

.field public mBitmapCanvas:Landroid/graphics/Canvas;

.field public mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field public mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

.field public mCirclePaintInner:Landroid/graphics/Paint;

.field public mCirclesBuffer:[F

.field public mDrawBitmap:Ljava/lang/ref/WeakReference;

.field public mGenerateFilledPathBuffer:Landroid/graphics/Path;

.field public mHighlightLinePath:Landroid/graphics/Path;

.field public mImageCaches:Ljava/util/HashMap;

.field public mLineBuffer:[F


# virtual methods
.method public final drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V
    .locals 3

    iget-object v0, p2, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v0, p2, v1}, Lcom/github/mikephil/charting/formatter/IFillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F

    move-result v0

    iget v1, p5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget v2, p5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    iget v1, v1, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget p5, p5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    invoke-virtual {p2, p5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p5

    iget p5, p5, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {p3, p5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    invoke-virtual {p4, p3}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    iget-object p4, p2, Lcom/github/mikephil/charting/data/LineDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget p0, p2, Lcom/github/mikephil/charting/data/LineDataSet;->mFillColor:I

    iget p2, p2, Lcom/github/mikephil/charting/data/LineDataSet;->mFillAlpha:I

    shl-int/lit8 p2, p2, 0x18

    const p4, 0xffffff

    and-int/2addr p0, p4

    or-int/2addr p0, p2

    sget-object p2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    return-void
.end method

.method public final drawData(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v11, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    iget-object v15, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v0, v15, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    float-to-int v0, v0

    iget v1, v15, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    float-to-int v1, v1

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    if-nez v2, :cond_0

    move-object v2, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v4, v2

    goto :goto_3

    :cond_2
    :goto_2
    if-lez v0, :cond_2c

    if-lez v1, :cond_2c

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    goto :goto_1

    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    move-object v0, v2

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-boolean v0, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mVisible:Z

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v14, :cond_3

    goto/16 :goto_1f

    :cond_3
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    iget v8, v1, Lcom/github/mikephil/charting/data/LineDataSet;->mLineWidth:F

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->mMode:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v9, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    const/high16 v19, 0x3f800000    # 1.0f

    if-eq v8, v13, :cond_23

    if-eq v8, v11, :cond_20

    iget-object v8, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sget-object v10, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->STEPPED:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    if-ne v0, v10, :cond_4

    move/from16 v21, v14

    goto :goto_5

    :cond_4
    move/from16 v21, v3

    :goto_5
    if-eqz v21, :cond_5

    const/4 v11, 0x4

    goto :goto_6

    :cond_5
    move v11, v13

    :goto_6
    iget-object v3, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-object v12, v2

    check-cast v12, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v12, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v5, v2, v1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/data/LineDataSet;)V

    iget-boolean v9, v1, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawFilled:Z

    if-eqz v9, :cond_e

    if-lez v8, :cond_e

    iget-object v9, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mGenerateFilledPathBuffer:Landroid/graphics/Path;

    iget v12, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget v13, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    add-int/2addr v13, v12

    move-object/from16 v24, v4

    const/4 v14, 0x0

    :goto_7
    mul-int/lit16 v4, v14, 0x80

    add-int/2addr v4, v12

    move/from16 v25, v12

    add-int/lit16 v12, v4, 0x80

    if-le v12, v13, :cond_6

    move v12, v13

    :cond_6
    if-gt v4, v12, :cond_c

    move/from16 v26, v13

    iget-object v13, v1, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    invoke-interface {v13, v1, v2}, Lcom/github/mikephil/charting/formatter/IFillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F

    move-result v13

    if-ne v0, v10, :cond_7

    const/16 v27, 0x1

    goto :goto_8

    :cond_7
    const/16 v27, 0x0

    :goto_8
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    move-object/from16 v28, v0

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    move-object/from16 v29, v10

    iget v10, v0, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v9, v10, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget v10, v0, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v30

    move-object/from16 v31, v0

    mul-float v0, v30, v19

    invoke-virtual {v9, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v0, 0x1

    add-int/lit8 v10, v4, 0x1

    move-object/from16 v30, v2

    move-object/from16 v0, v31

    const/4 v2, 0x0

    :goto_9
    if-gt v10, v12, :cond_9

    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    move/from16 v31, v8

    if-eqz v27, :cond_8

    iget v8, v2, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v0

    mul-float v0, v0, v19

    invoke-virtual {v9, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_8
    iget v0, v2, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v8

    mul-float v8, v8, v19

    invoke-virtual {v9, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v0, 0x1

    add-int/2addr v10, v0

    move-object v0, v2

    move/from16 v8, v31

    goto :goto_9

    :cond_9
    move/from16 v31, v8

    if-eqz v2, :cond_a

    iget v0, v2, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v9, v0, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    invoke-virtual {v3, v9}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    iget-object v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    invoke-virtual {v6, v7, v9, v0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    :goto_a
    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    iget v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->mFillColor:I

    iget v2, v1, Lcom/github/mikephil/charting/data/LineDataSet;->mFillAlpha:I

    shl-int/lit8 v2, v2, 0x18

    const v8, 0xffffff

    and-int/2addr v0, v8

    or-int/2addr v0, v2

    sget-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_a

    :cond_c
    move-object/from16 v28, v0

    move-object/from16 v30, v2

    move/from16 v31, v8

    move-object/from16 v29, v10

    move/from16 v26, v13

    goto :goto_a

    :goto_b
    add-int/2addr v14, v0

    if-le v4, v12, :cond_d

    goto :goto_c

    :cond_d
    move/from16 v12, v25

    move/from16 v13, v26

    move-object/from16 v0, v28

    move-object/from16 v10, v29

    move-object/from16 v2, v30

    move/from16 v8, v31

    goto/16 :goto_7

    :cond_e
    move-object/from16 v30, v2

    move-object/from16 v24, v4

    move/from16 v31, v8

    move v0, v14

    :goto_c
    iget-object v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_18

    const/4 v0, 0x2

    mul-int/lit8 v13, v11, 0x2

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    array-length v0, v0

    if-gt v0, v13, :cond_f

    const/4 v0, 0x4

    mul-int/2addr v11, v0

    new-array v0, v11, [F

    iput-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    :cond_f
    iget v0, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget v2, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    add-int/2addr v2, v0

    :goto_d
    if-ge v0, v2, :cond_17

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    if-nez v4, :cond_11

    :cond_10
    :goto_e
    const/4 v4, 0x1

    goto/16 :goto_11

    :cond_11
    iget-object v8, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    iget v9, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    const/4 v10, 0x0

    aput v9, v8, v10

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v4

    mul-float v4, v4, v19

    const/4 v9, 0x1

    aput v4, v8, v9

    iget v4, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    if-ge v0, v4, :cond_14

    add-int/lit8 v14, v0, 0x1

    invoke-virtual {v1, v14}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    if-nez v4, :cond_12

    goto/16 :goto_12

    :cond_12
    if-eqz v21, :cond_13

    iget-object v8, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    iget v10, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    const/4 v11, 0x2

    aput v10, v8, v11

    aget v11, v8, v9

    const/4 v9, 0x3

    aput v11, v8, v9

    const/4 v9, 0x4

    aput v10, v8, v9

    const/4 v9, 0x5

    aput v11, v8, v9

    const/4 v9, 0x6

    aput v10, v8, v9

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v4

    mul-float v4, v4, v19

    const/4 v9, 0x7

    aput v4, v8, v9

    const/4 v8, 0x0

    const/4 v10, 0x2

    :goto_f
    const/4 v11, 0x1

    goto :goto_10

    :cond_13
    iget-object v8, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    iget v9, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    const/4 v10, 0x2

    aput v9, v8, v10

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v4

    mul-float v4, v4, v19

    const/4 v9, 0x3

    aput v4, v8, v9

    const/4 v8, 0x0

    goto :goto_f

    :cond_14
    const/4 v9, 0x3

    const/4 v10, 0x2

    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    const/4 v8, 0x0

    aget v11, v4, v8

    aput v11, v4, v10

    const/4 v11, 0x1

    aget v12, v4, v11

    aput v12, v4, v9

    :goto_10
    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    aget v9, v4, v8

    aget v8, v4, v11

    add-int/lit8 v12, v13, -0x2

    aget v10, v4, v12

    add-int/lit8 v12, v13, -0x1

    aget v11, v4, v12

    cmpl-float v12, v9, v10

    if-nez v12, :cond_15

    cmpl-float v12, v8, v11

    if-nez v12, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    invoke-virtual {v15, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_12

    :cond_16
    invoke-virtual {v15, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v9, v15, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v9, v4

    if-gtz v4, :cond_10

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    iget-object v8, v15, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v8, v4

    if-ltz v4, :cond_10

    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    iget-object v8, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9, v13, v8}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_e

    :goto_11
    add-int/2addr v0, v4

    goto/16 :goto_d

    :cond_17
    :goto_12
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v12, 0x6

    const/4 v14, 0x4

    const/16 v20, 0x5

    goto/16 :goto_17

    :cond_18
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    array-length v0, v0

    mul-int v8, v31, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    if-ge v0, v2, :cond_19

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x4

    mul-int/2addr v0, v2

    new-array v0, v0, [F

    iput-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    :cond_19
    iget v0, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v0, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    const/4 v10, 0x0

    :goto_13
    iget v2, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget v4, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v2, v4

    if-gt v0, v2, :cond_1e

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    const/4 v4, 0x0

    goto :goto_14

    :cond_1a
    add-int/lit8 v4, v0, -0x1

    :goto_14
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    if-eqz v4, :cond_1b

    if-nez v8, :cond_1c

    :cond_1b
    const/4 v12, 0x6

    const/4 v14, 0x4

    const/16 v20, 0x5

    goto :goto_16

    :cond_1c
    iget-object v9, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    add-int/lit8 v14, v10, 0x1

    iget v2, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    aput v2, v9, v10

    const/4 v2, 0x2

    add-int/lit8 v13, v10, 0x2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v2

    mul-float v2, v2, v19

    aput v2, v9, v14

    if-eqz v21, :cond_1d

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    const/4 v12, 0x3

    add-int/lit8 v9, v10, 0x3

    iget v14, v8, Lcom/github/mikephil/charting/data/Entry;->x:F

    aput v14, v2, v13

    const/4 v14, 0x4

    add-int/lit8 v13, v10, 0x4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v22

    mul-float v22, v22, v19

    aput v22, v2, v9

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    const/16 v20, 0x5

    add-int/lit8 v9, v10, 0x5

    iget v12, v8, Lcom/github/mikephil/charting/data/Entry;->x:F

    aput v12, v2, v13

    const/4 v12, 0x6

    add-int/lit8 v13, v10, 0x6

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v4

    mul-float v4, v4, v19

    aput v4, v2, v9

    goto :goto_15

    :cond_1d
    const/4 v12, 0x6

    const/4 v14, 0x4

    const/16 v20, 0x5

    :goto_15
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    const/4 v4, 0x1

    add-int/lit8 v9, v13, 0x1

    iget v4, v8, Lcom/github/mikephil/charting/data/Entry;->x:F

    aput v4, v2, v13

    const/4 v4, 0x2

    add-int/2addr v13, v4

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v4

    mul-float v4, v4, v19

    aput v4, v2, v9

    move v10, v13

    :goto_16
    const/4 v2, 0x1

    add-int/2addr v0, v2

    goto :goto_13

    :cond_1e
    const/4 v2, 0x1

    const/4 v12, 0x6

    const/4 v14, 0x4

    const/16 v20, 0x5

    if-lez v10, :cond_1f

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    iget v0, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v11

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto :goto_17

    :cond_1f
    const/4 v3, 0x0

    const/4 v8, 0x2

    :goto_17
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-object v1, v10

    move-object/from16 v10, v24

    move-object/from16 v13, v30

    :goto_18
    const/16 v17, -0x1

    :goto_19
    const/16 v18, 0x1

    goto/16 :goto_1e

    :cond_20
    move-object/from16 v30, v2

    move-object/from16 v24, v4

    move v8, v13

    const/4 v10, 0x0

    const/4 v12, 0x6

    const/4 v14, 0x4

    const/16 v20, 0x5

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-object/from16 v2, v30

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    move-object/from16 v2, v30

    invoke-virtual {v5, v2, v1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/data/LineDataSet;)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    const/4 v4, 0x1

    if-lt v0, v4, :cond_21

    iget v0, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    iget-object v11, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    iget v13, v0, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v18

    mul-float v3, v18, v19

    invoke-virtual {v11, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v3, v4

    :goto_1a
    iget v4, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget v11, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v4, v11

    if-gt v3, v4, :cond_21

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    iget v11, v0, Lcom/github/mikephil/charting/data/Entry;->x:F

    iget v13, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    sub-float/2addr v13, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v13, v13, v18

    add-float v28, v13, v11

    iget-object v11, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v0

    mul-float v27, v0, v19

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v0

    mul-float v29, v0, v19

    iget v0, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v13

    mul-float v31, v13, v19

    move-object/from16 v25, v11

    move/from16 v26, v28

    move/from16 v30, v0

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v0, 0x1

    add-int/2addr v3, v0

    move-object v0, v4

    goto :goto_1a

    :cond_21
    iget-boolean v0, v1, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawFilled:Z

    if-eqz v0, :cond_22

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object/from16 v0, p0

    move-object v11, v1

    move-object v1, v3

    move-object v13, v2

    move-object v2, v11

    const/4 v8, 0x0

    move-object v3, v4

    move-object/from16 v10, v24

    move-object v4, v9

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    goto :goto_1b

    :cond_22
    move-object v11, v1

    move-object v13, v2

    move-object v12, v10

    move-object/from16 v10, v24

    const/4 v8, 0x0

    :goto_1b
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-object v1, v12

    goto/16 :goto_18

    :cond_23
    move-object v11, v1

    move-object v13, v2

    move v8, v3

    move-object v10, v4

    const/4 v12, 0x0

    const/4 v14, 0x4

    const/16 v20, 0x5

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v11, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-object v2, v13

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    invoke-virtual {v5, v13, v11}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/data/LineDataSet;)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_27

    iget v0, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    const/16 v17, -0x1

    add-int/lit8 v1, v0, -0x1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    if-nez v0, :cond_24

    move-object v1, v12

    goto/16 :goto_19

    :cond_24
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    iget v3, v0, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v4

    mul-float v4, v4, v19

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    const/16 v18, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    move/from16 v4, v17

    move-object v2, v0

    :goto_1c
    iget v8, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget v14, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v8, v14

    if-gt v3, v8, :cond_28

    if-ne v4, v3, :cond_25

    goto :goto_1d

    :cond_25
    invoke-virtual {v11, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    :goto_1d
    add-int/lit8 v4, v3, 0x1

    iget-object v8, v11, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_26

    move v3, v4

    :cond_26
    invoke-virtual {v11, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    iget v14, v0, Lcom/github/mikephil/charting/data/Entry;->x:F

    iget v12, v1, Lcom/github/mikephil/charting/data/Entry;->x:F

    sub-float/2addr v14, v12

    iget v12, v11, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    mul-float/2addr v14, v12

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v23

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v1

    sub-float v23, v23, v1

    mul-float v23, v23, v12

    iget v1, v8, Lcom/github/mikephil/charting/data/Entry;->x:F

    move/from16 v24, v3

    iget v3, v2, Lcom/github/mikephil/charting/data/Entry;->x:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v12

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v25

    sub-float v3, v3, v25

    mul-float/2addr v3, v12

    iget-object v12, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    move/from16 v32, v4

    iget v4, v2, Lcom/github/mikephil/charting/data/Entry;->x:F

    add-float v26, v4, v14

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v4

    add-float v4, v4, v23

    mul-float v27, v4, v19

    iget v4, v0, Lcom/github/mikephil/charting/data/Entry;->x:F

    sub-float v28, v4, v1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v1

    sub-float/2addr v1, v3

    mul-float v29, v1, v19

    iget v1, v0, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v3

    mul-float v31, v3, v19

    move-object/from16 v25, v12

    move/from16 v30, v1

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v1, v2

    move/from16 v4, v24

    move/from16 v3, v32

    const/4 v12, 0x0

    const/4 v14, 0x4

    move-object v2, v0

    move-object v0, v8

    goto :goto_1c

    :cond_27
    move/from16 v18, v1

    const/16 v17, -0x1

    :cond_28
    iget-boolean v0, v11, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawFilled:Z

    if-eqz v0, :cond_29

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object/from16 v0, p0

    move-object v2, v11

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    :cond_29
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :goto_1e
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_20

    :cond_2a
    :goto_1f
    move-object v13, v2

    move-object v10, v4

    move-object v1, v5

    move/from16 v18, v14

    const/16 v17, -0x1

    const/16 v20, 0x5

    :goto_20
    move-object v5, v1

    move-object v4, v10

    move-object v2, v13

    move/from16 v14, v18

    const/4 v3, 0x0

    const/4 v11, 0x3

    const/4 v13, 0x2

    goto/16 :goto_4

    :cond_2b
    move-object v10, v4

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v7, v10, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2c
    return-void
.end method

.method public final drawExtras(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    move-object v6, v5

    check-cast v6, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v6, v6, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v6, Lcom/github/mikephil/charting/data/LineData;

    iget-object v6, v6, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    move v7, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_f

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-boolean v9, v8, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mVisible:Z

    if-eqz v9, :cond_0

    iget-boolean v9, v8, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move-object/from16 v13, p1

    move v10, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move v5, v2

    goto/16 :goto_9

    :cond_1
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    iget v10, v8, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleHoleColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v8, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-object v11, v5

    check-cast v11, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v11, v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    invoke-virtual {v11, v5, v8}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/data/LineDataSet;)V

    iget-boolean v12, v8, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    iget v13, v8, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleHoleRadius:F

    iget v14, v8, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleRadius:F

    if-eqz v12, :cond_2

    cmpg-float v12, v13, v14

    if-gez v12, :cond_2

    cmpl-float v12, v13, v3

    if-lez v12, :cond_2

    move v12, v4

    goto :goto_1

    :cond_2
    move v12, v2

    :goto_1
    if-eqz v12, :cond_3

    const v15, 0x112233

    if-ne v10, v15, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v2

    :goto_2
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;

    goto :goto_3

    :cond_4
    new-instance v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;

    invoke-direct {v15, v0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;-><init>(Lcom/github/mikephil/charting/renderer/LineChartRenderer;)V

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    invoke-virtual {v3, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v8, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iput-object v3, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_5
    array-length v4, v4

    if-eq v4, v3, :cond_8

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iput-object v3, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    :goto_4
    iget-object v3, v8, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_5
    if-ge v4, v3, :cond_8

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    float-to-double v5, v14

    const-wide v18, 0x4000cccccccccccdL    # 2.1

    mul-double v5, v5, v18

    double-to-int v5, v5

    invoke-static {v5, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    aput-object v2, v6, v4

    iget-object v2, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->this$0:Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    iget-object v6, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move/from16 v18, v3

    iget-object v3, v8, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v10, :cond_6

    iget-object v3, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v14, v14, v14, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v3, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v14, v14, v13, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v3, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    iget-object v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_6
    iget-object v3, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v14, v14, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v12, :cond_7

    iget-object v2, v2, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    invoke-virtual {v5, v14, v14, v13, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    iget v2, v11, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget v3, v11, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v2, v3

    :goto_7
    if-gt v3, v2, :cond_9

    invoke-virtual {v8, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    if-nez v4, :cond_a

    :cond_9
    move-object/from16 v13, p1

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto :goto_9

    :cond_a
    iget v5, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    const/4 v6, 0x0

    aput v5, v1, v6

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aput v4, v1, v5

    invoke-virtual {v9, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    aget v4, v1, v6

    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v13, p1

    move v10, v5

    move v5, v6

    goto :goto_9

    :cond_b
    aget v4, v1, v6

    invoke-virtual {v10, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v4

    if-eqz v4, :cond_e

    aget v4, v1, v5

    invoke-virtual {v10, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    move-object/from16 v13, p1

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto :goto_8

    :cond_d
    iget-object v4, v15, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    array-length v5, v4

    rem-int v5, v3, v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_c

    const/4 v5, 0x0

    aget v6, v1, v5

    sub-float/2addr v6, v14

    const/4 v10, 0x1

    aget v11, v1, v10

    sub-float/2addr v11, v14

    const/4 v12, 0x0

    move-object/from16 v13, p1

    invoke-virtual {v13, v4, v6, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_e
    move-object/from16 v13, p1

    move v10, v5

    const/4 v5, 0x0

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :goto_9
    add-int/lit8 v7, v7, 0x1

    move v2, v5

    move v4, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public final drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object p0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget p2, p0, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {p3, p2, v1, v2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 10

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    move-object v1, v0

    check-cast v1, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v1, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v1, Lcom/github/mikephil/charting/data/LineData;

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    iget v5, v4, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v5, :cond_3

    iget-boolean v6, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighlightEnabled:Z

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v6, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    iget v7, v4, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    iget v8, v4, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    invoke-virtual {v5, v7, v8, v6}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v7, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-object v8, v0

    check-cast v8, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    iget v8, v6, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v6

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v6, v9

    invoke-virtual {v7, v8, v6}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v6

    iget-wide v7, v6, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v7, v7

    iget-wide v8, v6, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v6, v8

    iput v7, v4, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawX:F

    iput v6, v4, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawY:F

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    iget v8, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    iget v8, v5, Lcom/github/mikephil/charting/data/LineDataSet;->mHighlightLineWidth:F

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-boolean v4, v5, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawVerticalHighlightIndicator:Z

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightLinePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightLinePath:Landroid/graphics/Path;

    iget-object v9, v8, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightLinePath:Landroid/graphics/Path;

    iget-object v9, v8, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightLinePath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    iget-boolean v4, v5, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawHorizontalHighlightIndicator:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightLinePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightLinePath:Landroid/graphics/Path;

    iget-object v5, v8, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightLinePath:Landroid/graphics/Path;

    iget-object v5, v8, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightLinePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final drawValues(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    move-object v0, v8

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    int-to-float v0, v0

    iget-object v2, v7, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v2, v2, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    const/4 v10, 0x1

    if-gez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    move-object v0, v8

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    iget-object v11, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_d

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-boolean v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mVisible:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    if-nez v0, :cond_1

    iget-boolean v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawIcons:Z

    if-eqz v0, :cond_c

    :cond_1
    iget-object v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mValuePaint:Landroid/graphics/Paint;

    iget v1, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-object v1, v8

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    const/high16 v1, 0x3fe00000    # 1.75f

    iget v2, v13, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleRadius:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iget-boolean v2, v13, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    if-nez v2, :cond_3

    div-int/lit8 v1, v1, 0x2

    :cond_3
    move v14, v1

    iget-object v15, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    invoke-virtual {v15, v8, v13}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/data/LineDataSet;)V

    iget-object v1, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v15, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget v2, v15, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v10

    mul-int/lit8 v2, v2, 0x2

    iget-object v4, v0, Lcom/github/mikephil/charting/utils/Transformer;->valuePointsForGenerateTransformedValuesLine:[F

    array-length v4, v4

    if-eq v4, v2, :cond_4

    new-array v4, v2, [F

    iput-object v4, v0, Lcom/github/mikephil/charting/utils/Transformer;->valuePointsForGenerateTransformedValuesLine:[F

    :cond_4
    iget-object v6, v0, Lcom/github/mikephil/charting/utils/Transformer;->valuePointsForGenerateTransformedValuesLine:[F

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v1

    invoke-virtual {v13, v5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v9, v5, Lcom/github/mikephil/charting/data/Entry;->x:F

    aput v9, v6, v4

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v5

    mul-float/2addr v5, v3

    aput v5, v6, v9

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    aput v5, v6, v4

    add-int/lit8 v9, v4, 0x1

    aput v5, v6, v9

    :goto_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer1:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer1:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v2, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, v0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer1:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, v0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer1:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    sget-object v1, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/github/mikephil/charting/utils/MPPointF;

    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v1, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iput v0, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/4 v5, 0x0

    :goto_4
    array-length v0, v6

    if-ge v5, v0, :cond_b

    aget v4, v6, v5

    add-int/lit8 v0, v5, 0x1

    aget v0, v6, v0

    iget-object v1, v7, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    move/from16 v18, v5

    move-object v10, v6

    goto :goto_6

    :cond_9
    div-int/lit8 v1, v5, 0x2

    iget v2, v15, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v2, v1

    invoke-virtual {v13, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v16

    iget-boolean v2, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    if-eqz v2, :cond_a

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v3

    int-to-float v10, v14

    sub-float v10, v0, v10

    invoke-virtual {v13, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getValueTextColor(I)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v5

    move v5, v10

    move-object v10, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;FFFI)V

    goto :goto_5

    :cond_a
    move/from16 v18, v5

    move-object v10, v6

    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    add-int/lit8 v5, v18, 0x2

    move-object v6, v10

    const/4 v10, 0x1

    goto :goto_4

    :cond_b
    :goto_7
    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    :cond_c
    :goto_8
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public final initBuffers()V
    .locals 0

    return-void
.end method
