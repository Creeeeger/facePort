.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;
.super Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mLabelBgRadius:F

.field public mLabelBgYOffset:I

.field public mLabelMargin:F

.field public mLabelPaint:Landroid/graphics/Paint;

.field public mPositions:[F

.field public mSelectedInfoLoaded:Z

.field public mSelectedLabel:I

.field public mSelectedLabelBgPaint:Landroid/graphics/Paint;

.field public mSelectedLabelPaint:Landroid/graphics/Paint;


# virtual methods
.method public final drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 9

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mPositions:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mPositions:[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget-object v4, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    iget v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mLabelMargin:F

    add-float/2addr p2, v2

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mPositions:[F

    array-length v2, v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mPositions:[F

    aget v6, v3, v1

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v3

    iget-object v4, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v5

    iget-boolean v3, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedLabel:I

    mul-int/lit8 v3, v3, 0x2

    if-ne v1, v3, :cond_1

    float-to-int v3, p2

    iget v4, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mLabelBgYOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mLabelBgRadius:F

    invoke-virtual {p1, v6, v3, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    return-void
.end method
