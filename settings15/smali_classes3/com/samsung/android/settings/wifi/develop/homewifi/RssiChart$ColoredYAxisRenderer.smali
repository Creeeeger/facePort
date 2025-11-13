.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$ColoredYAxisRenderer;
.super Lcom/github/mikephil/charting/renderer/YAxisRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBackgroundPaint:Landroid/graphics/Paint;

.field public final mDefaultLabelColor:I

.field public final mWeakSignalLabelColor:I


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$ColoredYAxisRenderer;->mDefaultLabelColor:I

    const-string p1, "#d93e36"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$ColoredYAxisRenderer;->mWeakSignalLabelColor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$ColoredYAxisRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    const-string p0, "#a4ffffff"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final drawYLabels(Landroid/graphics/Canvas;F[FF)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v1, v0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    xor-int/lit8 v1, v1, 0x1

    iget-boolean v2, v0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/16 v5, -0x46

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$ColoredYAxisRenderer;->mWeakSignalLabelColor:I

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$ColoredYAxisRenderer;->mDefaultLabelColor:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p3, v4

    add-float/2addr v4, p4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, p2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    if-eqz v2, :cond_6

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mRenderLimitLinesBuffer:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v5, v3, v6

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mRenderLimitLines:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    move v8, v4

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/components/LimitLine;

    iget-boolean v10, v9, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-nez v10, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v13, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget v13, v9, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    neg-float v13, v13

    invoke-virtual {v11, v5, v13}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget v13, v9, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget v13, v9, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget-object v13, v9, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget v11, v9, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    aput v11, v3, v6

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v11, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    iget-object v11, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    aget v13, v3, v6

    invoke-virtual {v7, v11, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v11, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    aget v13, v3, v6

    invoke-virtual {v7, v11, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v11, v9, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    if-eqz v11, :cond_5

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget-object v14, v9, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget v14, v9, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget-object v14, v9, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget v14, v9, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v13, v11}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v14}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v15

    iget v5, v9, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    add-float/2addr v15, v5

    iget v5, v9, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    add-float/2addr v5, v13

    iget v14, v9, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    add-float/2addr v5, v14

    iget-object v9, v9, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    sget-object v14, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v9, v14, :cond_2

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v9, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v15

    aget v12, v3, v6

    sub-float/2addr v12, v5

    add-float/2addr v12, v13

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v9, v12, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_2
    sget-object v14, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v9, v14, :cond_3

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v11, v4, v14, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v13, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v15

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v13, v13

    aget v14, v3, v6

    add-float/2addr v14, v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v14, v4

    float-to-int v4, v14

    invoke-virtual {v9, v13, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v4, v9, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v13}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v14

    sub-float/2addr v4, v14

    float-to-int v4, v4

    iput v4, v9, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-static {v13}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v13

    add-float/2addr v13, v4

    float-to-int v4, v13

    iput v4, v9, Landroid/graphics/Rect;->right:I

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v13}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v13

    add-float/2addr v13, v4

    float-to-int v4, v13

    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v13

    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v9

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$ColoredYAxisRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v13, v9, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v15

    aget v9, v3, v6

    add-float/2addr v9, v5

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v4, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v9, v4, :cond_4

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v15

    aget v9, v3, v6

    sub-float/2addr v9, v5

    add-float/2addr v9, v13

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v4, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v15

    aget v9, v3, v6

    add-float/2addr v9, v5

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v4, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method
