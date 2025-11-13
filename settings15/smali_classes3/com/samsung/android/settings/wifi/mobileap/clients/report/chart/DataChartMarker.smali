.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

.field public mMarkerXLabelText:Landroid/widget/TextView;

.field public mMarkerYValueText:Landroid/widget/TextView;


# virtual methods
.method public final refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 4

    iget p2, p2, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mDrawMarker:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result p2

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mDrawMarker:Z

    iget p1, p1, Lcom/github/mikephil/charting/data/Entry;->x:F

    float-to-int p1, p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mDateInMillis:J

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->NUMBER_OF_DAYS_IN_WEEK:Ljava/lang/Integer;

    const v3, 0x18012

    invoke-static {p2, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mTotalUsed:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;->mMarkerXLabelText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;->mMarkerYValueText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    return-void
.end method
