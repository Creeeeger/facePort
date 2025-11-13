.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;
.super Ljava/lang/Object;
.source "ChartConfigSelector.java"


# direct methods
.method public static getBarChartRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ZLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;I)Lcom/github/mikephil/charting/renderer/BarChartRenderer;
    .locals 1

    .line 132
    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/high16 p4, 0x42200000    # 40.0f

    if-eq p1, p3, :cond_1

    const/16 p3, 0x9

    if-eq p1, p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRendererMonthly;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/Chart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object p3

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v0

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRendererMonthly;-><init>(Landroid/content/Context;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const-string p0, "#FF42A0FE"

    .line 142
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRendererMonthly;->setBarColor(I)V

    .line 143
    invoke-virtual {p1, p4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRendererMonthly;->setBarRadius(F)V

    .line 144
    invoke-virtual {p1, p5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRendererMonthly;->setMissingIndex(I)V

    return-object p1

    .line 134
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRenderer;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/Chart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object p3

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v0

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRenderer;-><init>(Landroid/content/Context;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->dw_data_type_basic_color:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRenderer;->setBarColor(I)V

    .line 136
    invoke-virtual {p1, p4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRenderer;->setBarRadius(F)V

    .line 137
    invoke-virtual {p1, p5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRenderer;->setMissingIndex(I)V

    return-object p1
.end method

.method public static getChartId(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;)I
    .locals 0

    .line 52
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    .line 54
    sget p0, Lcom/android/settings/R$id;->weekly_stackcharthistory:I

    return p0
.end method

.method public static getLayoutId(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;)I
    .locals 0

    .line 41
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    .line 46
    sget p0, Lcom/android/settings/R$layout;->sec_wifi_ap_connected_device_stack_chart:I

    return p0

    .line 44
    :cond_0
    sget p0, Lcom/android/settings/R$layout;->sec_wifi_ap_connected_device_stack_chart:I

    return p0
.end method

.method public static getMarker(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ILjava/util/HashMap;)Lcom/github/mikephil/charting/components/MarkerView;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;",
            "Lcom/github/mikephil/charting/charts/BarChart;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/mikephil/charting/components/MarkerView;"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$ChartConstants$ChartType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return-object v0

    .line 168
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v1, :cond_1

    return-object v0

    .line 170
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ILjava/util/HashMap;)V

    return-object p1

    .line 161
    :cond_2
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v1, :cond_3

    return-object v0

    .line 163
    :cond_3
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ILjava/util/HashMap;)V

    return-object p1
.end method

.method public static getXAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/github/mikephil/charting/renderer/XAxisRenderer;
    .locals 2

    .line 85
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$ChartConstants$ChartType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 105
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p2

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 106
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    invoke-direct {p1, p2, v0, p3, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Landroid/content/Context;)V

    return-object p1

    .line 87
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    .line 100
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p2

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 101
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    invoke-direct {p1, p2, v0, p3, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Landroid/content/Context;)V

    return-object p1

    .line 93
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p2

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 94
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    invoke-direct {p1, p2, v0, p3, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Landroid/content/Context;)V

    return-object p1

    .line 89
    :cond_2
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p2

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 90
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;-><init>(Landroid/content/Context;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    return-object p1
.end method

.method public static getXLabelFormatter(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;)Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .locals 1

    .line 60
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$ChartConstants$ChartType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 67
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyChartXLabelFormatter;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyChartXLabelFormatter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 62
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;-><init>()V

    .line 63
    sget-object p1, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDayOfWeekString(ZLjava/time/format/TextStyle;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;->setLabels(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static getYAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/github/mikephil/charting/renderer/YAxisRenderer;
    .locals 2

    .line 116
    new-instance p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 117
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    return-object p0
.end method

.method public static getYLabelFormatter(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;
    .locals 1

    .line 72
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    .line 76
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
