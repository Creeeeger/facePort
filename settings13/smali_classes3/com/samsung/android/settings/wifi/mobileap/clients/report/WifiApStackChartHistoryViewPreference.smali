.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;
.super Landroidx/preference/Preference;
.source "WifiApStackChartHistoryViewPreference.java"


# static fields
.field public static final OTHERS_COLOR:I

.field public static final PIE_COLORS:[I

.field private static final PREFERENCE_LAYOUT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

.field barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

.field barData:Lcom/github/mikephil/charting/data/BarData;

.field barDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

.field chartGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

.field chartGestureListenerMonthly:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

.field chartValueSelected:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field chartValueSelectedMonthly:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field private mAverageSummaryText:Ljava/lang/String;

.field mAverageTextView:Landroid/widget/TextView;

.field mAvgValue:F

.field mAvgValueMonthly:F

.field protected mBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

.field protected mBarRendererMonthly:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

.field private mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

.field mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mColorsMonthly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field mDateEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mDateEntriesMonthly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDayChangeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDayInMillis:Ljava/lang/Long;

.field mDeviceDataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mEndIndex:I

.field mIndexOfBarChartToBeHighlight:F

.field mIndexOfBarChartToBeHighlightMonthly:F

.field private mListDate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMapDateEntriesMonthly:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMapDateEntriesWeekly:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMarker:Lcom/github/mikephil/charting/components/MarkerView;

.field protected mMarkerMonthly:Lcom/github/mikephil/charting/components/MarkerView;

.field mMonthDataValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

.field mSingleTapEnable:Z

.field mStartIndex:I

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mThisPreference:Landroidx/preference/Preference;

.field private mUsageSummaryText:Ljava/lang/String;

.field mUsageSummaryTextView:Landroid/widget/TextView;

.field protected mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

.field protected mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

.field mXDragIndexEnd:F

.field mXDragIndexStart:F

.field mXLabelFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

.field mbarDataMonthly:Lcom/github/mikephil/charting/data/BarData;

.field mbarDataSetMonthly:Lcom/github/mikephil/charting/data/BarDataSet;

.field mbarEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field mbarEntriesMonthly:Ljava/util/ArrayList;

.field private mchartParent:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

.field mdataSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            ">;"
        }
    .end annotation
.end field

.field mholder:Landroidx/preference/PreferenceViewHolder;

.field mshiftLeftRight:I

.field mshiftLeftRightMonthly:I

.field mxAxisLabel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mxAxisLabelMonthly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mxRightVisibleIndex:F

.field mxRightVisibleIndexMonthly:F

.field yAxisLabelTextValue:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$LTF5gxhS4CI0VWlJwiJIGhcATec(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->lambda$new$0(Ljava/lang/Long;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDayInMillis(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDayInMillis:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabLayout(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmchartParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mchartParent:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitAndDrawMonthlyChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->initAndDrawMonthlyChart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitAndDrawWeeklyChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->initAndDrawWeeklyChart(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRenderer(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->updateRenderer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRendererMonthly(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->updateRendererMonthly()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 81
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    .line 82
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_connected_device_stack_chart:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->PREFERENCE_LAYOUT:I

    const-string v0, "#FFC0C9D8"

    .line 116
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->OTHERS_COLOR:I

    const/16 v1, 0xe

    new-array v1, v1, [I

    const-string v2, "#FF42A0FE"

    .line 118
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "#FF154050"

    .line 119
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "#FF0FBE7A"

    .line 120
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

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->PIE_COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mdataSets:Ljava/util/ArrayList;

    .line 95
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarEntries:Ljava/util/ArrayList;

    .line 97
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mxAxisLabel:Ljava/util/ArrayList;

    .line 99
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntries:Ljava/util/List;

    .line 100
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntriesMonthly:Ljava/util/List;

    .line 101
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMapDateEntriesMonthly:Ljava/util/HashMap;

    const/4 p2, 0x0

    .line 107
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValue:F

    .line 108
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValueMonthly:F

    .line 109
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDataEntries:Ljava/util/List;

    .line 110
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDeviceDataEntries:Ljava/util/List;

    .line 111
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mColors:Ljava/util/List;

    .line 112
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mColorsMonthly:Ljava/util/List;

    const/4 p3, 0x0

    .line 136
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 143
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMapDateEntriesWeekly:Ljava/util/HashMap;

    .line 144
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mListDate:Ljava/util/List;

    .line 146
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXDragIndexStart:F

    .line 147
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXDragIndexEnd:F

    const/4 p2, 0x0

    .line 150
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mSingleTapEnable:Z

    const-string p2, "0 MB / day"

    .line 177
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mUsageSummaryText:Ljava/lang/String;

    const-string p2, "Avg. 0 MB"

    .line 178
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAverageSummaryText:Ljava/lang/String;

    .line 187
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDayChangeObserver:Landroidx/lifecycle/Observer;

    .line 534
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->chartValueSelected:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .line 557
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->chartGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .line 724
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMonthDataValues:Ljava/util/List;

    .line 725
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mxAxisLabelMonthly:Ljava/util/ArrayList;

    .line 726
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRendererMonthly:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 762
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->chartValueSelectedMonthly:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .line 785
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->chartGestureListenerMonthly:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mContext:Landroid/content/Context;

    .line 155
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mThisPreference:Landroidx/preference/Preference;

    .line 156
    sget p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private basicBarChart()V
    .locals 12

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getEntries()V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 387
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barData:Lcom/github/mikephil/charting/data/BarData;

    if-eqz v0, :cond_1

    .line 390
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barData:Lcom/github/mikephil/charting/data/BarData;

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mdataSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v0, :cond_2

    .line 394
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 396
    :cond_2
    new-instance v0, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarEntries:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 397
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mColors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColors(Ljava/util/List;)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mdataSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mdataSets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barData:Lcom/github/mikephil/charting/data/BarData;

    .line 403
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barData:Lcom/github/mikephil/charting/data/BarData;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextSize(F)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawIcons(Z)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setHovered(Z)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDoubleTapToZoomEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragEnabled(Z)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->moveViewToX(F)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->chartValueSelected:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->chartGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setAutoScaleMinMaxEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 430
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v0

    .line 434
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v3

    .line 435
    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Visible index"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 439
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 441
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 442
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v4

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v5

    add-float/2addr v4, v5

    const/4 v5, 0x4

    .line 443
    invoke-virtual {v3, v5, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 444
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 445
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    const/4 v4, 0x0

    .line 448
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 449
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationFrictionCoef(F)V

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 457
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    const/4 v10, 0x1

    const/4 v11, -0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->setChartRenderers(Landroid/content/Context;Lcom/github/mikephil/charting/charts/BarChart;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;ZI)V

    .line 458
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXLabelFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v5, 0x1f4

    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;-><init>()V

    invoke-virtual {v0, v5, v6}, Lcom/github/mikephil/charting/charts/Chart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V

    .line 461
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/charts/Chart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    .line 464
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v0, v4, v4, v4, v5}, Lcom/github/mikephil/charting/charts/Chart;->setExtraOffsets(FFFF)V

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->setXaxisLabel()V

    .line 467
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/android/settings/R$color;->wifi_ap_secondary_text_color:I

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 468
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    .line 469
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->setChartMarker(Landroid/content/Context;)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mIndexOfBarChartToBeHighlight:F

    .line 471
    new-instance v3, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    int-to-float v5, v4

    sub-float v5, v0, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    int-to-float v4, v4

    sub-float/2addr v0, v4

    sub-float/2addr v0, v6

    invoke-direct {v3, v5, v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    .line 472
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    new-array v2, v2, [Lcom/github/mikephil/charting/highlight/Highlight;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 473
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private createBarChart(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mholder:Landroidx/preference/PreferenceViewHolder;

    .line 373
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->createBarColor()V

    const/4 p1, 0x0

    .line 374
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    .line 375
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p0

    .line 376
    sget-object p1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    return-void
.end method

.method private createBarColor()V
    .locals 3

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_0

    .line 649
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mColors:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->PIE_COLORS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getEntries()V
    .locals 13

    .line 678
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mxAxisLabel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 679
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sesl_wakeup:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 680
    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mStartIndex:I

    .line 681
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDataEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mEndIndex:I

    const/4 v2, 0x0

    .line 684
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValue:F

    .line 685
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v1

    move v4, v2

    .line 686
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDataEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 687
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDataEntries:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 688
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarEntries:Ljava/util/ArrayList;

    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v4

    const/4 v9, 0x4

    new-array v9, v9, [F

    const/4 v10, 0x3

    .line 690
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v9, v1

    const/4 v11, 0x2

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v9, v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v9, v11

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v9, v10

    invoke-direct {v7, v8, v9, v0}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[FLjava/lang/Object;)V

    .line 688
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValue:F

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v7, v8

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v7, v8

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValue:F

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v3

    goto/16 :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    new-instance v1, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mxAxisLabel:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 695
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValue:F

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getValidWeeklyCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValue:F

    .line 697
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Entry Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDataEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": BarEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " End Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mEndIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ShiftLeftRight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getEntriesMonthly()V
    .locals 14

    .line 982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarEntriesMonthly:Ljava/util/ArrayList;

    .line 984
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientsForEachMonth(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 985
    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValueMonthly:F

    .line 986
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMapDateEntriesMonthly:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 987
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 988
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    .line 989
    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getStackedProgressBarEntries()Ljava/util/List;

    move-result-object v5

    .line 990
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 992
    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extra Entries"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " At Index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    :cond_0
    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_1

    .line 997
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    .line 998
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarEntriesMonthly:Ljava/util/ArrayList;

    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v3

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v13

    invoke-direct {v11, v12, v13}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMonthDataValues:Ljava/util/List;

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    iget v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValueMonthly:F

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v9

    add-float/2addr v10, v9

    iput v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValueMonthly:F

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v8, v7, :cond_2

    .line 1003
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarEntriesMonthly:Ljava/util/ArrayList;

    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v3

    invoke-direct {v6, v9, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMonthDataValues:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1006
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntriesMonthly:Ljava/util/List;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMapDateEntriesMonthly:Ljava/util/HashMap;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getMonth(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1010
    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValueMonthly:F

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getValidMonthlyCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValueMonthly:F

    return-void
.end method

.method private getMonthNumber(J)I
    .locals 0

    .line 958
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 960
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 961
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p0

    return p0
.end method

.method private getMonthToMonthNumber(J)Ljava/lang/String;
    .locals 0

    .line 965
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getMonthNumber(J)I

    move-result p0

    .line 966
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initAndDrawMonthlyChart()V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->showBarChartMonthly()V

    return-void
.end method

.method private initAndDrawWeeklyChart(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDayInMillis:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getInitialGraphEntries(J)V

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getDataForWeekly()V

    .line 264
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->createBarChart(Landroidx/preference/PreferenceViewHolder;)V

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->basicBarChart()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Long;)V
    .locals 3

    .line 188
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    const-string v1, "mDayChangeObserver called "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDayInMillis:Ljava/lang/Long;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setSelectedDateText(J)V

    .line 192
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setButtonVisibility(Ljava/lang/Long;)V

    return-void
.end method

.method private showBarChartMonthly()V
    .locals 12

    .line 862
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRendererMonthly:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 863
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRendererMonthly:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataMonthly:Lcom/github/mikephil/charting/data/BarData;

    if-eqz v0, :cond_1

    .line 866
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataMonthly:Lcom/github/mikephil/charting/data/BarData;

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mdataSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 869
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataSetMonthly:Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v0, :cond_2

    .line 870
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataSetMonthly:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 873
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getEntriesMonthly()V

    .line 875
    new-instance v0, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarEntriesMonthly:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataSetMonthly:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 876
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mColorsMonthly:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->PIE_COLORS:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataSetMonthly:Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mColorsMonthly:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColors(Ljava/util/List;)V

    .line 878
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    const/4 v1, 0x1

    new-array v3, v1, [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataSetMonthly:Lcom/github/mikephil/charting/data/BarDataSet;

    aput-object v4, v3, v2

    invoke-direct {v0, v3}, Lcom/github/mikephil/charting/data/BarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataMonthly:Lcom/github/mikephil/charting/data/BarData;

    .line 880
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 881
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataMonthly:Lcom/github/mikephil/charting/data/BarData;

    const v3, 0x3ed70a3d    # 0.42f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 886
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataSetMonthly:Lcom/github/mikephil/charting/data/BarDataSet;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextSize(F)V

    .line 889
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataSetMonthly:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawIcons(Z)V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataSetMonthly:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 892
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleEnabled(Z)V

    .line 893
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDoubleTapToZoomEnabled(Z)V

    .line 894
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragEnabled(Z)V

    .line 896
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 897
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    .line 898
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataMonthly:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->moveViewToX(F)V

    .line 899
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 900
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->chartValueSelectedMonthly:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 901
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->chartGestureListenerMonthly:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V

    .line 902
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setAutoScaleMinMaxEnabled(Z)V

    .line 904
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 906
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 907
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 908
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 910
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 911
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setHovered(Z)V

    .line 913
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v0

    .line 914
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v3

    .line 915
    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Visible index"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->xAxisFormatter()V

    .line 918
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 919
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 921
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 922
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v4

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v5

    add-float/2addr v4, v5

    const/4 v5, 0x4

    .line 923
    invoke-virtual {v3, v5, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 924
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/settings/R$color;->wifi_ap_secondary_text_color:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 925
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    .line 926
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const/4 v4, 0x0

    .line 928
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 929
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 931
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationEnabled(Z)V

    .line 932
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationFrictionCoef(F)V

    .line 933
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA_MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    const/4 v10, 0x1

    const/4 v11, -0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->setChartRenderersMonthly(Landroid/content/Context;Lcom/github/mikephil/charting/charts/BarChart;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;ZI)V

    .line 934
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 935
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRendererMonthly:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/Chart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    .line 936
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v3, 0x1f4

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;

    invoke-direct {v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;-><init>()V

    invoke-virtual {v0, v3, v5}, Lcom/github/mikephil/charting/charts/Chart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V

    .line 942
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    .line 943
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->setChartMarkerMonthly(Landroid/content/Context;)V

    .line 944
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v4, v4, v4, v3}, Lcom/github/mikephil/charting/charts/Chart;->setExtraOffsets(FFFF)V

    .line 946
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mbarDataMonthly:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mIndexOfBarChartToBeHighlightMonthly:F

    .line 947
    new-instance v3, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    int-to-float v5, v4

    sub-float v5, v0, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    int-to-float v4, v4

    sub-float/2addr v0, v4

    sub-float/2addr v0, v6

    invoke-direct {v3, v5, v0, v2}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    .line 948
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    new-array v1, v1, [Lcom/github/mikephil/charting/highlight/Highlight;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 949
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->updateRendererMonthly()V

    .line 950
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private startObserveData()V
    .locals 2

    .line 181
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    const-string v1, "startObserveData called "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->getSelectedDay()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mchartParent:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDayChangeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private updateRenderer()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->setSelectedDayLoaded(Z)V

    .line 381
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mEndIndex:I

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->setSelectedLabel(F)V

    return-void
.end method

.method private updateRendererMonthly()V
    .locals 6

    .line 738
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->setSelectedDayLoaded(Z)V

    .line 739
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    rsub-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->setSelectedLabel(F)V

    .line 740
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMonthDataValues:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    rsub-int/lit8 v1, v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 741
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 742
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mUsageSummaryText:Ljava/lang/String;

    .line 743
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mUsageSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValueMonthly:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 746
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avg. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / Month"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAverageSummaryText:Ljava/lang/String;

    .line 748
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAverageTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private xAxisFormatter()V
    .locals 4

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mxAxisLabelMonthly:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 971
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntriesMonthly:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mxAxisLabelMonthly:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntriesMonthly:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getMonthToMonthNumber(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 976
    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 977
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->wifi_ap_secondary_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 978
    new-instance v1, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mxAxisLabelMonthly:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    return-void
.end method


# virtual methods
.method deviceDisplay(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 6

    .line 233
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDataEntries:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDeviceDataEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    .line 236
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    int-to-float v1, v1

    .line 237
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    .line 239
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 241
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mUsageSummaryText:Ljava/lang/String;

    .line 242
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAvgValue:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avg. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / day"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAverageSummaryText:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAverageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mUsageSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mUsageSummaryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mchartParent:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->updateListPreference(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method getDataForWeekly()V
    .locals 6

    .line 510
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDayInMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setButtonVisibility(Ljava/lang/Long;)V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getDataEntries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDataEntries:Ljava/util/List;

    .line 513
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getDateEntries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntries:Ljava/util/List;

    .line 514
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getDayInMonth(J)I

    move-result v1

    .line 516
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getMonthNumber(J)I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 518
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 520
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getDayInMonth(J)I

    move-result v4

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getMonthNumber(J)I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 521
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 527
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getLabelMarkerString()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMapDateEntriesWeekly:Ljava/util/HashMap;

    .line 528
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getLabelDateString()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mListDate:Ljava/util/List;

    .line 529
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getDeviceNameList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDeviceDataEntries:Ljava/util/List;

    .line 530
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Entry Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDataEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDateEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->basicBarChart()V

    return-void
.end method

.method public getDayInMonth(J)I
    .locals 0

    .line 503
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 505
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 506
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    return p0
.end method

.method public getMonth(J)Ljava/lang/String;
    .locals 2

    .line 1015
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 1017
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 1018
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object p0

    .line 1019
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

.method public getMonthlyIndexData()Ljava/lang/String;
    .locals 4

    .line 252
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mIndexOfBarChartToBeHighlightMonthly:F

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    int-to-float v2, v1

    sub-float v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-ltz v2, :cond_1

    const/16 v3, 0xd

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMapDateEntriesMonthly:Ljava/util/HashMap;

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "OutofRange"

    return-object p0
.end method

.method public leftButton(I)V
    .locals 2

    .line 485
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDayInMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getInitialGraphEntries(J)V

    .line 486
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getDataForWeekly()V

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->updateRenderer()V

    .line 488
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mholder:Landroidx/preference/PreferenceViewHolder;

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mEndIndex:I

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->deviceDisplay(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public leftMonthlyButton(I)V
    .locals 4

    .line 1026
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    const/4 v1, 0x5

    if-le p1, v1, :cond_0

    sub-int/2addr p1, v0

    .line 1028
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    return-void

    .line 1032
    :cond_0
    new-instance v1, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mIndexOfBarChartToBeHighlightMonthly:F

    int-to-float v3, p1

    sub-float v3, v2, v3

    float-to-int v3, v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float p1, p1

    sub-float/2addr v2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    const/4 p1, 0x0

    invoke-direct {v1, v3, v2, p1}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    .line 1033
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    new-array v0, v0, [Lcom/github/mikephil/charting/highlight/Highlight;

    aput-object v1, v0, p1

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 1035
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->updateRendererMonthly()V

    .line 1036
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 272
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 273
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    const-string v1, "Stack Chart Created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget v1, Lcom/android/settings/R$id;->tab_selected_usage:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mUsageSummaryTextView:Landroid/widget/TextView;

    .line 275
    sget v1, Lcom/android/settings/R$id;->tab_selected_average:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mAverageTextView:Landroid/widget/TextView;

    .line 276
    sget v1, Lcom/android/settings/R$id;->textYAxisLabelhistory:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->yAxisLabelTextValue:Landroid/widget/TextView;

    .line 277
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mchartParent:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->getSelectedDayView()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    .line 278
    sget v1, Lcom/android/settings/R$id;->data_monitor_tab_layout:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 279
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    .line 280
    sget v1, Lcom/android/settings/R$id;->data_date_picker_layout:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    .line 281
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    if-eqz v1, :cond_0

    const-string v1, " mSharedModel not null "

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "mSharedModel null "

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->initConfig(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->startObserveData()V

    .line 290
    sget v0, Lcom/android/settings/R$id;->weekly_stackcharthistory:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    .line 291
    sget v0, Lcom/android/settings/R$id;->monthly_stackcharthistory:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 360
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setMontlyIndex(I)V

    .line 361
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 363
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 364
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public rightButton(I)V
    .locals 2

    .line 493
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mDayInMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getInitialGraphEntries(J)V

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getDataForWeekly()V

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->updateRenderer()V

    .line 496
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mholder:Landroidx/preference/PreferenceViewHolder;

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mEndIndex:I

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->deviceDisplay(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public rightMonthlyButton(I)V
    .locals 4

    .line 1041
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    .line 1043
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    return-void

    .line 1047
    :cond_0
    new-instance v1, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mIndexOfBarChartToBeHighlightMonthly:F

    int-to-float v3, p1

    sub-float v3, v2, v3

    float-to-int v3, v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float p1, p1

    sub-float/2addr v2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    const/4 p1, 0x0

    invoke-direct {v1, v3, v2, p1}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    .line 1048
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    new-array v0, v0, [Lcom/github/mikephil/charting/highlight/Highlight;

    aput-object v1, v0, p1

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 1050
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->updateRendererMonthly()V

    .line 1051
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mChartDateRangeSelector:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    return-void
.end method

.method setChartMarker(Landroid/content/Context;)V
    .locals 6

    .line 654
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v3, :cond_0

    .line 655
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMapDateEntriesWeekly:Ljava/util/HashMap;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getMarker(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ILjava/util/HashMap;)Lcom/github/mikephil/charting/components/MarkerView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMarker:Lcom/github/mikephil/charting/components/MarkerView;

    if-eqz p1, :cond_0

    .line 657
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    :cond_0
    return-void
.end method

.method setChartMarkerMonthly(Landroid/content/Context;)V
    .locals 6

    .line 663
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v3, :cond_0

    .line 664
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMapDateEntriesMonthly:Ljava/util/HashMap;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getMarker(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ILjava/util/HashMap;)Lcom/github/mikephil/charting/components/MarkerView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mMarkerMonthly:Lcom/github/mikephil/charting/components/MarkerView;

    if-eqz p1, :cond_0

    .line 666
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    :cond_0
    return-void
.end method

.method setChartRenderers(Landroid/content/Context;Lcom/github/mikephil/charting/charts/BarChart;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;ZI)V
    .locals 6

    .line 711
    invoke-static {p1, p3, p4, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 712
    invoke-static {p1, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXLabelFormatter(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;)Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXLabelFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-object v0, p1

    move-object v1, p4

    move-object v2, p2

    move v3, p5

    move-object v4, p3

    move v5, p6

    .line 714
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getBarChartRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ZLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;I)Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    return-void
.end method

.method setChartRenderersMonthly(Landroid/content/Context;Lcom/github/mikephil/charting/charts/BarChart;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;ZI)V
    .locals 6

    .line 756
    invoke-static {p1, p3, p4, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXAxisRendererMonthly:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    move-object v0, p1

    move-object v1, p4

    move-object v2, p2

    move v3, p5

    move-object v4, p3

    move v5, p6

    .line 758
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getBarChartRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ZLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;I)Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mBarRendererMonthly:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    return-void
.end method

.method setParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mchartParent:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    .line 198
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    .line 199
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->TAG:Ljava/lang/String;

    const-string p1, "Stack Chart setParent XYZ"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setXaxisLabel()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 479
    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 480
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->wifi_ap_secondary_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 481
    new-instance v1, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mListDate:Ljava/util/List;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    return-void
.end method
