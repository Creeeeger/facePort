.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final STACKED_BAR_COLORS:[I


# instance fields
.field public final chartValueSelectedMonthly:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;

.field public final mContext:Landroid/content/Context;

.field public final mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

.field public mMonthlyBarChartRenderer:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;

.field public mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

.field public mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

.field public final mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

.field public final mMonthlyIBarDataSetArrayList:Ljava/util/ArrayList;

.field public mMonthlyMarkerView:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;

.field public mOnBarSelectedCLickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;

.field public mSelectedXAxisIndexInReverseOrder:I

.field public mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

.field public mWifiApMonthlyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;

.field public mXAxisRendererMonthly:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;

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

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->STACKED_BAR_COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const-wide/16 v2, 0x0

    invoke-direct {p3, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string p3, "Adding empty progress List"

    const-string v1, "WifiApDailyStackedProgressBarEntryConfig"

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Created Entry for Calendar: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", list Count: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mWifiApMonthlyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-direct {p2, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyIBarDataSetArrayList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->chartValueSelectedMonthly:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    return-object p0
.end method
