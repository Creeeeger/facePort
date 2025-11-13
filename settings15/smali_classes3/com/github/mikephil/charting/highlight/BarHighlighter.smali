.class public final Lcom/github/mikephil/charting/highlight/BarHighlighter;
.super Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast p0, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast p0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast p0, Lcom/github/mikephil/charting/data/BarData;

    return-object p0
.end method

.method public final getDistance(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public final getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iget-object v4, v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v4

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual {v3, v5, v6, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    iget-object v0, v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object v3, v0

    check-cast v3, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    iget v5, v1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarDataSet;

    iget v5, v3, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    iget-wide v7, v4, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v5, v7

    iget-wide v7, v4, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v4, v7

    sget-object v7, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {v3, v5, v4, v7}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    move-object v1, v2

    goto/16 :goto_4

    :cond_2
    iget-object v7, v5, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-nez v7, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v7, v5, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    array-length v8, v7

    if-lez v8, :cond_1

    array-length v2, v7

    const/4 v8, 0x0

    if-nez v2, :cond_5

    :cond_4
    :goto_1
    move v15, v8

    goto :goto_3

    :cond_5
    array-length v2, v7

    move v9, v8

    move v10, v9

    :goto_2
    if-ge v9, v2, :cond_7

    aget-object v11, v7, v9

    iget v12, v11, Lcom/github/mikephil/charting/highlight/Range;->from:F

    cmpl-float v12, v4, v12

    if-lez v12, :cond_6

    iget v11, v11, Lcom/github/mikephil/charting/highlight/Range;->to:F

    cmpg-float v11, v4, v11

    if-gtz v11, :cond_6

    move v15, v10

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    array-length v2, v7

    sub-int/2addr v2, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget-object v6, v7, v2

    iget v6, v6, Lcom/github/mikephil/charting/highlight/Range;->to:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    move v8, v2

    goto :goto_1

    :goto_3
    iget-object v2, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    aget-object v2, v7, v15

    iget v2, v2, Lcom/github/mikephil/charting/highlight/Range;->to:F

    iget v3, v1, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    invoke-virtual {v0, v3, v2}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    new-instance v2, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v10, v5, Lcom/github/mikephil/charting/data/Entry;->x:F

    iget v11, v5, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    iget-wide v3, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v12, v3

    iget-wide v3, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v13, v3

    iget v14, v1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    iget-object v1, v1, Lcom/github/mikephil/charting/highlight/Highlight;->axis:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-object v9, v2

    move-object/from16 v16, v1

    invoke-direct/range {v9 .. v16}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    goto :goto_0

    :goto_4
    return-object v1

    :cond_8
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    return-object v1
.end method
