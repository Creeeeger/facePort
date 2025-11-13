.class public final Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyRoundedBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mRadius:F


# direct methods
.method public static RoundedRect(FFFFFF)Landroid/graphics/Path;
    .locals 4

    sub-float p0, p2, p0

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ltz v1, :cond_0

    cmpg-float v1, p5, v0

    if-gez v1, :cond_1

    :cond_0
    div-float p4, p0, v2

    move p5, p4

    :cond_1
    add-float/2addr p3, p4

    sub-float/2addr p3, p1

    div-float v1, p0, v2

    cmpl-float v3, p4, v1

    if-lez v3, :cond_2

    move p4, v1

    :cond_2
    div-float v1, p3, v2

    cmpl-float v3, p5, v1

    if-lez v3, :cond_3

    move p5, v1

    :cond_3
    mul-float v1, p4, v2

    sub-float/2addr p0, v1

    mul-float/2addr v2, p5

    sub-float/2addr p3, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    add-float/2addr p1, p5

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float p1, p5

    neg-float p2, p4

    invoke-virtual {v1, v0, p1, p2, p1}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    neg-float p1, p0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p1, p4

    invoke-virtual {v1, p1, v0, p1, p5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    invoke-virtual {v1, v0, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v1, v0, p5}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v1, p4, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v1, p4, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p0, p5

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p0, p3

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1
.end method


# virtual methods
.method public final drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V
    .locals 11

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v1, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    iget v2, p2, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    if-eqz v1, :cond_c

    aget-object p3, v1, p3

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseX:F

    iput v1, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v2, v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    iget v2, v2, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    iput v2, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarWidth:F

    iget-object v2, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const/4 v1, 0x0

    iput-boolean v1, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/data/BarDataSet;)V

    iget-object p3, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    iget-object v0, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v3, 0x1

    if-le v0, v3, :cond_9

    move v0, v1

    move v3, v0

    :goto_0
    iget-object v4, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    array-length v4, v4

    add-int/2addr v3, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v3, v3, 0x4

    array-length v0, p3

    if-eq v3, v0, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move v3, v1

    move v4, v3

    :goto_2
    iget-object v5, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    invoke-virtual {p2, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    iget-object v5, v5, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    array-length v5, v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v5, -0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    add-int/lit8 v7, v4, 0x3

    aget v7, v0, v7

    move v8, v1

    :goto_3
    if-ge v8, v5, :cond_5

    aget v9, v0, v6

    aput v9, p3, v4

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v6, 0x1

    aget v10, v0, v10

    aput v10, p3, v9

    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v6, 0x2

    aget v10, v0, v10

    aput v10, p3, v9

    add-int/lit8 v9, v4, 0x3

    aput v7, p3, v9

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v6, -0x4

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    array-length v0, p3

    if-ge v1, v0, :cond_c

    add-int/lit8 v0, v1, 0x2

    aget v3, p3, v0

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    aget v3, p3, v1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_9

    :cond_8
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v4, v1, 0x4

    invoke-virtual {p2, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    aget v5, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget v6, p3, v3

    aget v7, p3, v0

    add-int/lit8 v0, v1, 0x3

    aget v8, p3, v0

    iget v10, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyRoundedBarChartRenderer;->mRadius:F

    move v9, v10

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyRoundedBarChartRenderer;->RoundedRect(FFFFFF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v1, v1, 0x4

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getColor()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_7
    array-length p2, p3

    if-ge v1, p2, :cond_c

    add-int/lit8 p2, v1, 0x2

    aget v0, p3, p2

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    aget v0, p3, v1

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget v3, p3, v1

    add-int/lit8 v0, v1, 0x1

    aget v4, p3, v0

    aget v5, p3, p2

    add-int/lit8 p2, v1, 0x3

    aget v6, p3, p2

    iget v8, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyRoundedBarChartRenderer;->mRadius:F

    move v7, v8

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyRoundedBarChartRenderer;->RoundedRect(FFFFFF)Landroid/graphics/Path;

    move-result-object p2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_8
    add-int/lit8 v1, v1, 0x4

    goto :goto_7

    :cond_c
    :goto_9
    return-void
.end method
