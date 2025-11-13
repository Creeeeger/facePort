.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "YLabelFormatter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCount:I

.field protected mDivisor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mDivisor:I

    .line 17
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mCount:I

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public calculateLabel(Lcom/github/mikephil/charting/charts/BarChart;I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 47
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 48
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 49
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 50
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mDivisor:I

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->calculateYLabelByUnit(Lcom/github/mikephil/charting/charts/BarChart;II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mDivisor:I

    :goto_0
    return-void
.end method

.method protected calculateYLabelByUnit(Lcom/github/mikephil/charting/charts/BarChart;II)I
    .locals 4

    .line 57
    div-int/2addr p2, p3

    const/4 p0, 0x1

    add-int/2addr p2, p0

    int-to-double v0, p2

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    move v1, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v2

    sub-int/2addr p2, p0

    .line 64
    div-int/2addr p2, v2

    mul-int/2addr p2, v2

    :goto_1
    const/4 v0, 0x3

    :goto_2
    if-le v0, p0, :cond_2

    .line 67
    rem-int v1, p2, v0

    if-nez v1, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    mul-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 69
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 70
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    add-int/2addr v0, p0

    invoke-virtual {p2, v0, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 71
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    return p3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    add-int/2addr p2, v2

    goto :goto_1
.end method

.method public getAxisLabel(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const-string v1, ""

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 26
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mCount:I

    return-object v1

    .line 28
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mDivisor:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mCount:I

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/AxisBase;->getLabelCount()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 29
    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mCount:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mCount:I

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->getFormattedString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method protected getFormattedString(F)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    float-to-int p1, p1

    .line 80
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mDivisor:I

    div-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setLabelWithFixedMaxValue(Lcom/github/mikephil/charting/charts/BarChart;II)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 38
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 39
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 40
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 41
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->mDivisor:I

    return-void
.end method
