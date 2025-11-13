.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "WifiApClientsMonthlyBarChart.java"


# static fields
.field public static final OTHERS_COLOR:I

.field public static final STACKED_BAR_COLORS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field chartValueSelectedMonthly:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field private final mContext:Landroid/content/Context;

.field mIndexOfBarChartToBeHighlightMonthly:F

.field protected mMonthlyBarChartRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

.field mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

.field mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

.field mMonthlyBarEntryArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field mMonthlyIBarDataSetArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            ">;"
        }
    .end annotation
.end field

.field mMonthlyMarkerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMonthlyMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

.field mMonthlyXAxisLabel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mShiftLeftRightMonthly:I

.field protected mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;


# direct methods
.method static bridge synthetic -$$Nest$mupdateRendererXAxisBarForBubbleMonthly(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->updateRendererXAxisBarForBubbleMonthly()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 43
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->TAG:Ljava/lang/String;

    const-string v0, "#FFC0C9D8"

    .line 44
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->OTHERS_COLOR:I

    const/16 v1, 0xe

    new-array v1, v1, [I

    const-string v2, "#FF42A0FE"

    .line 50
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "#FF154050"

    .line 51
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "#FF0FBE7A"

    .line 52
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    const/16 v2, 0x8

    aput v0, v1, v2

    const/16 v2, 0x9

    aput v0, v1, v2

    const/16 v2, 0xa

    aput v0, v1, v2

    const/16 v2, 0xb

    aput v0, v1, v2

    const/16 v2, 0xc

    aput v0, v1, v2

    const/16 v2, 0xd

    aput v0, v1, v2

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->STACKED_BAR_COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 67
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarChartRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 86
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyIBarDataSetArrayList:Ljava/util/ArrayList;

    .line 88
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyMarkerHashMap:Ljava/util/HashMap;

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    .line 90
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyXAxisLabel:Ljava/util/List;

    .line 235
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->chartValueSelectedMonthly:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->showBarChartMonthly()V

    return-void
.end method

.method private getMonthNumber(J)I
    .locals 0

    .line 229
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 231
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p0

    return p0
.end method

.method private getMonthToMonthNumber(J)Ljava/lang/String;
    .locals 0

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->getMonthNumber(J)I

    move-result p0

    .line 222
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showBarChartMonthly()V
    .locals 13

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarChartRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarChartRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

    if-eqz v0, :cond_1

    .line 97
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyIBarDataSetArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v0, :cond_2

    .line 101
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientsForEachMonth(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyMarkerHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 108
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_6

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    .line 110
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getStackedProgressBarEntries()Ljava/util/List;

    move-result-object v6

    .line 111
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_3

    .line 113
    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extra Entries"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " At Index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :cond_3
    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_4

    .line 118
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    .line 119
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v2

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v9

    invoke-direct {v11, v12, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v8, v5, :cond_5

    .line 122
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v2

    invoke-direct {v7, v9, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 124
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyXAxisLabel:Ljava/util/List;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyMarkerHashMap:Ljava/util/HashMap;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->getMonth(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 128
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->STACKED_BAR_COLORS:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    const-string v6, ""

    invoke-direct {v2, v3, v6}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 131
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColors(Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextSize(F)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawIcons(Z)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 136
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    new-array v2, v5, [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/github/mikephil/charting/data/BarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

    const v2, 0x3ed70a3d    # 0.42f

    .line 137
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 140
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleEnabled(Z)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDoubleTapToZoomEnabled(Z)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragEnabled(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 144
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->moveViewToX(F)V

    .line 146
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->chartValueSelectedMonthly:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 148
    invoke-virtual {p0, v5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setAutoScaleMinMaxEnabled(Z)V

    .line 149
    invoke-virtual {p0, v5}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 153
    invoke-virtual {p0, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 154
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setHovered(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 156
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 157
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->wifi_ap_secondary_text_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 159
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyXAxisLabel:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 160
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyXAxisLabel:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->getMonthToMonthNumber(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 162
    :cond_7
    new-instance v3, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    invoke-direct {v3, v2}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 163
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 165
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 166
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v3

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    const/4 v3, 0x4

    .line 168
    invoke-virtual {v0, v3, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 169
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/android/settings/R$color;->wifi_ap_secondary_text_color:I

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 170
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    .line 171
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    float-to-int v2, v2

    int-to-float v2, v2

    .line 172
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 173
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationEnabled(Z)V

    .line 174
    invoke-virtual {p0, v4}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationFrictionCoef(F)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA_MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    invoke-static {v0, v10, v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 176
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    const/4 v11, -0x1

    move-object v8, p0

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getBarChartRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ZLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;I)Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarChartRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarChartRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    const/16 v0, 0x1f4

    .line 179
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V

    .line 180
    invoke-virtual {p0, v5}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    .line 181
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyMarkerHashMap:Ljava/util/HashMap;

    move-object v9, p0

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getMarker(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ILjava/util/HashMap;)Lcom/github/mikephil/charting/components/MarkerView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    if-eqz v0, :cond_8

    .line 183
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    :cond_8
    const/high16 v0, 0x41a00000    # 20.0f

    .line 185
    invoke-virtual {p0, v4, v4, v4, v0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraOffsets(FFFF)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mIndexOfBarChartToBeHighlightMonthly:F

    .line 187
    new-instance v2, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mShiftLeftRightMonthly:I

    int-to-float v4, v3

    sub-float v4, v0, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v4, v6

    int-to-float v3, v3

    sub-float/2addr v0, v3

    sub-float/2addr v0, v6

    invoke-direct {v2, v4, v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    new-array v0, v5, [Lcom/github/mikephil/charting/highlight/Highlight;

    aput-object v2, v0, v1

    .line 188
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->updateRendererXAxisBarForBubbleMonthly()V

    .line 190
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private updateRendererXAxisBarForBubbleMonthly()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->setSelectedDayLoaded(Z)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mShiftLeftRightMonthly:I

    rsub-int/lit8 p0, p0, 0x5

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->setSelectedLabel(F)V

    return-void
.end method


# virtual methods
.method public getMonth(J)Ljava/lang/String;
    .locals 2

    .line 200
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 202
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object p0

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/Month;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/time/Month;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateBarGraph()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->showBarChartMonthly()V

    return-void
.end method
