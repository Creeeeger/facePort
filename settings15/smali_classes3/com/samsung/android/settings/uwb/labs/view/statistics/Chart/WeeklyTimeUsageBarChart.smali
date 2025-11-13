.class public Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TIME_BAR_COLORS:[I

.field public static final USAGE_BAR_COLORS:[I

.field public static final USAGE_BAR_COLORS_DARK:[I


# instance fields
.field public callbackListener:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$ChartValueSelectedListener;

.field public final chartValueSelected:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$1;

.field public mBarGraphTap:I

.field public final mContext:Landroid/content/Context;

.field public mMaxYValue:I

.field public mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

.field public mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

.field public final mWeeklyIBarDataSet:Ljava/util/ArrayList;

.field public mXAxisRendererMonthly:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "#FFe4e4e4"

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FF2ab5e2"

    invoke-static {v1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->TIME_BAR_COLORS:[I

    const-string v0, "#FFecd4f7"

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFd194eb"

    invoke-static {v1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#FFab3eda"

    invoke-static {v2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->USAGE_BAR_COLORS:[I

    const-string v0, "#FFe6f0ff"

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FF99c2ff"

    invoke-static {v1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#FF4d94ff"

    invoke-static {v2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->USAGE_BAR_COLORS_DARK:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mBarGraphTap:I

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$1;-><init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;)V

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->chartValueSelected:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$1;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyRoundedBarChartRenderer;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object p3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {p1, p0, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyRoundedBarChartRenderer;->mRadius:F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    return-void
.end method

.method public static convertToColorRGB(Ljava/lang/String;)I
    .locals 2

    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p0, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    return-object p0
.end method

.method public final initialize()V
    .locals 8

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHovered(Z)V

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iput-boolean v1, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->chartValueSelected:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$1;

    iput-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-boolean v1, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060b7b

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0714a9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    const v5, 0x7f060b7d

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0714aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0714a8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mLabelMargin:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060b7c

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mLabelBgRadius:F

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mLabelBgYOffset:I

    iput-object v3, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;

    iput-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    const/high16 v0, 0x41d00000    # 26.0f

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setExtraOffsets(FF)V

    return-void
.end method

.method public final showWeeklyBarChart()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueTextSize:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawIcons:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    iget-object v4, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueColors:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueColors:Ljava/util/List;

    const v4, 0x7f0606f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v4, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity()V

    iput-boolean v3, v0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v4, v0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    new-instance v4, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyChartXLabelFormatter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    sget-object v5, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/DayOfWeek;->getValue()I

    move-result v7

    const/4 v8, 0x7

    rem-int/2addr v7, v8

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_1

    add-int v10, v7, v9

    rem-int/2addr v10, v8

    add-int/2addr v10, v1

    invoke-static {v10}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v5, v11}, Ljava/time/DayOfWeek;->getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v4, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v4, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iput-boolean v3, v4, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput-boolean v3, v4, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iput-boolean v1, v4, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity()V

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    iput-boolean v3, v4, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060b7e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v4, Lcom/github/mikephil/charting/components/AxisBase;->mGridColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    iput v2, v4, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    const/high16 v2, 0x42300000    # 44.0f

    iput v2, v4, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    iput v2, v4, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0606df

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v4, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    iget v0, v4, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    iget-object v2, v4, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0, v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mContext:Landroid/content/Context;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mBarGraphTap:I

    const-string v3, ""

    const-string v5, "m"

    const-string v6, "h"

    const-string v7, " "

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mContext:Landroid/content/Context;

    const v8, 0x7f14315b

    invoke-static {v7, v8, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iput-object v3, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    goto :goto_4

    :cond_3
    :goto_2
    iput-object v2, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mContext:Landroid/content/Context;

    const v8, 0x7f143159

    invoke-static {v7, v8, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    iput-object v3, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    goto :goto_4

    :cond_6
    :goto_3
    iput-object v2, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    :goto_4
    iget v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mMaxYValue:I

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    iput-object v0, v4, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;

    iput-boolean v1, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    sget v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportData;->mSelectedDay:I

    int-to-float v1, v1

    float-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedLabel:I

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->animateY()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
