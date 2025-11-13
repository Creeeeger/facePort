.class public final Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IFillFormatter;


# virtual methods
.method public final getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F
    .locals 3

    move-object p0, p2

    check-cast p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    check-cast p2, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object p2, p2, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast p2, Lcom/github/mikephil/charting/data/LineData;

    iget v1, p1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMax:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move v0, v2

    :cond_1
    iget p2, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMin:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_2

    move p0, v2

    :cond_2
    iget p1, p1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    move v2, p0

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    return v2
.end method
