.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;

    return-void
.end method


# virtual methods
.method public final onNothingSelected()V
    .locals 1

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->STACKED_BAR_COLORS:[I

    const-string p0, "WifiApClientsMonthlyBarChart"

    const-string v0, "nothing selected X is "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/github/mikephil/charting/data/Entry;->x:F

    float-to-int v0, v0

    rsub-int/lit8 v1, v0, 0x5

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mSelectedXAxisIndexInReverseOrder:I

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->STACKED_BAR_COLORS:[I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", xIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", DataSet index: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    const-string p2, "WifiApClientsMonthlyBarChart"

    invoke-static {v1, p1, p2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mSelectedXAxisIndexInReverseOrder:I

    rsub-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    float-to-int v1, v1

    iput v1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabel:I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-wide v0, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mDateInMillis:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateBarSelectedListener: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mOnBarSelectedCLickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->$r8$clinit:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Monthly OnBarSelected: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "WifiApClientsReportBarChartPreference"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportCalendarRangeSelectorPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Settings Monthly Calendar for: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiApClientsReportCalendarRangeSelectorPreference"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedMonthDateInMillis:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->updatePreference()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
