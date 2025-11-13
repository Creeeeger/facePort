.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final STACKED_BAR_COLORS:[I


# instance fields
.field public final chartGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

.field public final chartValueSelected:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

.field public final mContext:Landroid/content/Context;

.field public mCurrentWeekClick:Z

.field public final mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

.field public mIndexOfBarChartToBeHighlight:F

.field public mOnBarSelectedCLickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;

.field public final mSelectedBarEntriesDataInMB:Ljava/util/List;

.field public mShiftIndexFromRightToLeft:I

.field public mSingleTapEnable:Z

.field public mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

.field public mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

.field public mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

.field public final mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

.field public mWeeklyBarRenderer:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;

.field public final mWeeklyIBarDataSets:Ljava/util/ArrayList;

.field public mWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

.field public mXLabelFormatter:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;

    const-string v0, "#FFC0C9D8"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v14

    const-string v0, "#FF387AFF"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v1

    const-string v0, "#FF154050"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const-string v0, "#FF0FBE7A"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v3

    move v4, v14

    move v5, v14

    move v6, v14

    move v7, v14

    move v8, v14

    move v9, v14

    move v10, v14

    move v11, v14

    move v12, v14

    move v13, v14

    filled-new-array/range {v1 .. v14}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mCurrentWeekClick:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarEntriesDataInMB:Ljava/util/List;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyIBarDataSets:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarRenderer:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSingleTapEnable:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->chartValueSelected:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->chartGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    return-object p0
.end method

.method public final updateBarSelectedListener$1(J)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateBarSelectedListener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApClientsWeeklyBarChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-wide v3, v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mDateInMillis:J

    invoke-static {v3, v4, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsDate(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mOnBarSelectedCLickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->$r8$clinit:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Weekly OnBarSelected: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiApClientsReportBarChartPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->updateDeviceList(Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;)V

    goto :goto_0

    :cond_2
    const-string p0, "mWeeklyStackedProgressBarEntryConfig/mOnBarSelectedCLickListener is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
