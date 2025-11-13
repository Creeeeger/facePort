.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyReportChartMarker;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;
.source "WeeklyReportChartMarker.java"


# instance fields
.field protected mTimeTextView:Landroid/widget/TextView;


# virtual methods
.method public bridge synthetic calculateLeftIndex(I)I
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->calculateLeftIndex(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;FF)V
    .locals 0

    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->draw(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public bridge synthetic getOffset()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->getOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOffsetForDrawingAtPoint(FF)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->getOffsetForDrawingAtPoint(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 6

    .line 42
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 43
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 44
    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mDrawMarker:Z

    .line 46
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_DRIVING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne v4, v5, :cond_2

    .line 47
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarDataSet;

    if-nez v1, :cond_1

    .line 49
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mDrawMarker:Z

    return-void

    .line 52
    :cond_1
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyReportChartMarker;->mTimeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TimeTextUtil;->getTimeAbbreviationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyReportChartMarker;->mTimeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TimeTextUtil;->getTimeAbbreviationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/components/MarkerView;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    return-void
.end method

.method public bridge synthetic setMissingIndex(I)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->setMissingIndex(I)V

    return-void
.end method
