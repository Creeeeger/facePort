.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "WifiApClientsWeeklyBarChart.java"


# static fields
.field public static final OTHERS_COLOR:I

.field public static final STACKED_BAR_COLORS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field chartGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

.field chartValueSelected:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field private final mContext:Landroid/content/Context;

.field mEndIndex:I

.field mIndexOfBarChartToBeHighlight:F

.field mSelectedBarDeviceNameEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mSelectedBarEntriesDataInMB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field mShiftIndexFromRightToLeft:I

.field mSingleTapEnable:Z

.field mStartIndex:I

.field mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

.field mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

.field mWeeklyBarEntryArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mWeeklyBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

.field mWeeklyIBarDataSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mWeeklyMarkerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mXLabelFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

.field private mXLabelMonthNumberEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mXValueDragEndPoint:F

.field mXValueDragStartPoint:F

.field mxAxisLabel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mupdateRendererXAxisBarForBubbleWeekly(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->updateRendererXAxisBarForBubbleWeekly()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 47
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->TAG:Ljava/lang/String;

    const-string v0, "#FFC0C9D8"

    .line 71
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->OTHERS_COLOR:I

    const/16 v1, 0xe

    new-array v1, v1, [I

    const-string v2, "#FF42A0FE"

    .line 73
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "#FF154050"

    .line 74
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "#FF0FBE7A"

    .line 75
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

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mxAxisLabel:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mStartIndex:I

    const/4 p3, 0x6

    .line 51
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mEndIndex:I

    .line 53
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarDeviceNameEntries:Ljava/util/List;

    .line 54
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarEntriesDataInMB:Ljava/util/List;

    .line 57
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyIBarDataSets:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 59
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 60
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyMarkerHashMap:Ljava/util/HashMap;

    .line 62
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXLabelMonthNumberEntries:Ljava/util/List;

    const/4 p3, 0x0

    .line 64
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXValueDragStartPoint:F

    .line 65
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXValueDragEndPoint:F

    .line 66
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSingleTapEnable:Z

    .line 70
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    .line 101
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->chartValueSelected:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .line 124
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->chartGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .line 90
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getEntries()V
    .locals 12

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mxAxisLabel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mStartIndex:I

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarEntriesDataInMB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mEndIndex:I

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    move v3, v1

    .line 219
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarEntriesDataInMB:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarEntriesDataInMB:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 221
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v7, v3

    const/4 v8, 0x4

    new-array v8, v8, [F

    const/4 v9, 0x3

    .line 223
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v8, v0

    const/4 v10, 0x2

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v8, v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v8, v10

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    .line 221
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v2

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    new-instance v1, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mxAxisLabel:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    return-void
.end method

.method private getMonthNumber(J)I
    .locals 0

    .line 393
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 395
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 396
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p0

    return p0
.end method

.method private showBarChartWeekly(JJ)V
    .locals 9

    .line 230
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 231
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    if-eqz p1, :cond_1

    .line 234
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyIBarDataSets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz p1, :cond_2

    .line 238
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->getEntries()V

    .line 242
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x3

    :goto_0
    if-ltz p2, :cond_3

    .line 244
    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    aget p3, p3, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 246
    :cond_3
    new-instance p2, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    const-string p4, ""

    invoke-direct {p2, p3, p4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 247
    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColors(Ljava/util/List;)V

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyIBarDataSets:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance p1, Lcom/github/mikephil/charting/data/BarData;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyIBarDataSets:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    .line 253
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/high16 p2, 0x41300000    # 11.0f

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextSize(F)V

    .line 258
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 259
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawIcons(Z)V

    .line 260
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 262
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 263
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setHovered(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 267
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleEnabled(Z)V

    .line 268
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDoubleTapToZoomEnabled(Z)V

    .line 269
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragEnabled(Z)V

    const/high16 p1, 0x40e00000    # 7.0f

    .line 270
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    .line 271
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->moveViewToX(F)V

    .line 272
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 273
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->chartValueSelected:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 274
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->chartGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V

    .line 275
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setAutoScaleMinMaxEnabled(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    .line 281
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    const/4 p4, 0x0

    .line 282
    invoke-virtual {p1, p4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 283
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x4

    .line 285
    invoke-virtual {p1, v1, p3}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    float-to-int v0, v0

    int-to-float v0, v0

    .line 286
    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 287
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    .line 288
    invoke-virtual {p1, p4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 291
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationEnabled(Z)V

    .line 292
    invoke-virtual {p0, p4}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationFrictionCoef(F)V

    .line 293
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    invoke-static {v0, v7, v8, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXLabelFormatter(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;)Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXLabelFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    .line 296
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v6, -0x1

    move-object v2, v8

    move-object v3, p0

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getBarChartRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ZLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;I)Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 298
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXLabelFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 299
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    const/16 v0, 0x1f4

    .line 300
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 302
    invoke-virtual {p0, p4, p4, p4, v0}, Lcom/github/mikephil/charting/charts/Chart;->setExtraOffsets(FFFF)V

    .line 304
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p4

    .line 305
    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p4, v0}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 306
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->wifi_ap_secondary_text_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 307
    new-instance v0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXLabelMonthNumberEntries:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p4, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 308
    iget-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    invoke-static {p4, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 309
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    .line 311
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyMarkerHashMap:Ljava/util/HashMap;

    move-object v2, v7

    move-object v3, v8

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getMarker(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ILjava/util/HashMap;)Lcom/github/mikephil/charting/components/MarkerView;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    if-eqz p1, :cond_4

    .line 313
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 315
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mIndexOfBarChartToBeHighlight:F

    .line 316
    new-instance p4, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mShiftIndexFromRightToLeft:I

    int-to-float v1, v0

    sub-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    sub-float/2addr p1, v2

    invoke-direct {p4, v1, p1, p2}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    new-array p1, p3, [Lcom/github/mikephil/charting/highlight/Highlight;

    aput-object p4, p1, p2

    .line 317
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->updateRendererXAxisBarForBubbleWeekly()V

    .line 319
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private updateRendererXAxisBarForBubbleWeekly()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->setSelectedDayLoaded(Z)V

    .line 323
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mEndIndex:I

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mShiftIndexFromRightToLeft:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->setSelectedLabel(F)V

    return-void
.end method


# virtual methods
.method public createGraphEntries(JJ)V
    .locals 11

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarEntriesDataInMB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXLabelMonthNumberEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyMarkerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarDeviceNameEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->getDayInMonth(J)I

    move-result v1

    .line 332
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->getMonthNumber(J)I

    move-result v0

    .line 333
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mEndIndex:I

    .line 334
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientsForEachDay(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 335
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_4

    .line 336
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    .line 337
    invoke-virtual {p4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getStackedProgressBarEntries()Ljava/util/List;

    move-result-object v3

    .line 338
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 340
    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extra Entries"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " At Index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 343
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 344
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, p2

    :goto_1
    if-ge v8, v4, :cond_1

    .line 348
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    .line 349
    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v8, v5, :cond_2

    const/4 v3, 0x0

    .line 353
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    .line 354
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 357
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarEntriesDataInMB:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {p4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->getDayInMonth(J)I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->getMonthNumber(J)I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 359
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mShiftIndexFromRightToLeft:I

    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 362
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyMarkerHashMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->getDayMonthDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXLabelMonthNumberEntries:Ljava/util/List;

    invoke-virtual {p4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->getStringDayInMonth(J)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarDeviceNameEntries:Ljava/util/List;

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 366
    :cond_4
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Data Entry Updated:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarEntriesDataInMB:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDayInMonth(J)I
    .locals 0

    .line 385
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 387
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    return p0
.end method

.method public getDayMonthDate(J)Ljava/lang/String;
    .locals 4

    .line 401
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 403
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 404
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p1

    .line 405
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object p2

    .line 406
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/time/Month;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/time/Month;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringDayInMonth(J)Ljava/lang/String;
    .locals 0

    .line 375
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 377
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 378
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    .line 379
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateBarGraph(JJ)V
    .locals 0

    .line 369
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->createGraphEntries(JJ)V

    .line 370
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->showBarChartWeekly(JJ)V

    return-void
.end method
