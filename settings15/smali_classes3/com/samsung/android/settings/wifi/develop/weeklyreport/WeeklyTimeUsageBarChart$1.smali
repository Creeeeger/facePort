.class public final Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart$1;->this$0:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;

    return-void
.end method


# virtual methods
.method public final onNothingSelected()V
    .locals 0

    return-void
.end method

.method public final onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart$1;->this$0:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightValue()V

    iget p1, p1, Lcom/github/mikephil/charting/data/Entry;->x:F

    float-to-int p1, p1

    rsub-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mShiftIndex:I

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->callbackListener:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$2;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mUsageBarChart:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;

    iput p1, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mShiftIndex:I

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mTimeBarChart:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;

    iput p1, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mShiftIndex:I

    iget v0, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mTabIndexSelected:I

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mWifiOnRxData:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mWr:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyEnabledTime:[J

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->getTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mConnectedTxData:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mWr:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyConnectionTime:[J

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->getTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mDate:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mWeeklyDate:Ljava/util/List;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mTimeBarChart:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;

    iget p2, p2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mShiftIndex:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mWifiOnRxData:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mWr:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyRxBytes:[J

    aget-wide v2, v2, p1

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mConnectedTxData:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mWr:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyTxBytes:[J

    aget-wide v2, v2, p1

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mDate:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mWeeklyDate:Ljava/util/List;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mUsageBarChart:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;

    iget p2, p2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mShiftIndex:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mShiftIndex:I

    rsub-int/lit8 p0, p0, 0x6

    int-to-float p0, p0

    float-to-int p0, p0

    iput p0, p1, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mSelectedLabel:I

    return-void
.end method
