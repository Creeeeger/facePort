.class public Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TIME_BAR_COLORS:[I

.field public static final USAGE_BAR_COLORS:[I


# instance fields
.field public callbackListener:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$2;

.field public final chartValueSelected:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart$1;

.field public final mContext:Landroid/content/Context;

.field public mMaxYValue:F

.field public mShiftIndex:I

.field public mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

.field public mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

.field public mWeeklyBardata:Lcom/github/mikephil/charting/data/BarData;

.field public final mWeeklyIBarDataSet:Ljava/util/ArrayList;

.field public mXAxisRendererMonthly:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;

.field public mXLabelFormatter:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyChartXLabelFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;

    const-string v0, "#FFe4e4e4"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FF2ab5e2"

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->TIME_BAR_COLORS:[I

    const-string v0, "#FFe8ccf4"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFca84e8"

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->convertToColorRGB(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->USAGE_BAR_COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart$1;-><init>(Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->chartValueSelected:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyRoundedBarChartRenderer;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object p3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {p1, p0, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyRoundedBarChartRenderer;->mRadius:F

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

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iput-boolean v1, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->chartValueSelected:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart$1;

    iput-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-boolean v1, v3, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

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

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

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

    iput v1, v3, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mLabelMargin:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v3, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

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

    iput v0, v3, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mLabelBgRadius:F

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mLabelBgYOffset:I

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;

    iput-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    const/high16 v0, 0x41d00000    # 26.0f

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setExtraOffsets(FF)V

    return-void
.end method

.method public final updateBarGraph(I[J[J)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v7, v5

    move v8, v6

    :goto_0
    const/4 v9, 0x7

    if-ge v8, v9, :cond_4

    if-nez v1, :cond_2

    rsub-int/lit8 v9, v8, 0x6

    aget-wide v10, p2, v9

    long-to-float v10, v10

    const v11, 0x4a5bba00    # 3600000.0f

    div-float/2addr v10, v11

    aget-wide v12, p3, v9

    long-to-float v9, v12

    div-float/2addr v9, v11

    sub-float/2addr v9, v10

    int-to-float v11, v5

    add-float v12, v10, v9

    cmpg-float v11, v11, v12

    if-gez v11, :cond_0

    float-to-int v5, v12

    add-int/2addr v5, v4

    :cond_0
    const/high16 v11, 0x41c00000    # 24.0f

    cmpl-float v12, v12, v11

    if-lez v12, :cond_3

    cmpl-float v9, v10, v11

    if-lez v9, :cond_1

    move v10, v11

    :cond_1
    sub-float v9, v11, v10

    goto :goto_1

    :cond_2
    rsub-int/lit8 v9, v8, 0x6

    aget-wide v10, p2, v9

    long-to-float v10, v10

    const v11, 0x49742400    # 1000000.0f

    div-float/2addr v10, v11

    aget-wide v12, p3, v9

    long-to-float v9, v12

    div-float/2addr v9, v11

    int-to-float v11, v7

    add-float v12, v10, v9

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    float-to-int v7, v12

    :cond_3
    :goto_1
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v12, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v13, v8

    new-array v14, v3, [F

    aput v10, v14, v6

    aput v9, v14, v4

    invoke-direct {v12, v13, v14}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v4

    goto :goto_0

    :cond_4
    if-nez v1, :cond_8

    const/16 v8, 0x18

    if-le v5, v8, :cond_5

    goto :goto_3

    :cond_5
    move v8, v6

    :goto_2
    if-ge v8, v2, :cond_7

    add-int v10, v5, v8

    rem-int/lit8 v11, v10, 0x3

    if-nez v11, :cond_6

    move v8, v10

    goto :goto_3

    :cond_6
    add-int/2addr v8, v4

    goto :goto_2

    :cond_7
    move v8, v6

    :goto_3
    int-to-float v5, v8

    iput v5, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mMaxYValue:F

    :cond_8
    const/4 v5, 0x0

    if-ne v1, v4, :cond_a

    if-ge v7, v2, :cond_9

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mMaxYValue:F

    goto :goto_4

    :cond_9
    iput v5, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mMaxYValue:F

    :cond_a
    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_b

    move v7, v6

    :goto_5
    if-ge v7, v3, :cond_c

    sget-object v8, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->TIME_BAR_COLORS:[I

    aget v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v4

    goto :goto_5

    :cond_b
    move v7, v6

    :goto_6
    if-ge v7, v3, :cond_c

    sget-object v8, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->USAGE_BAR_COLORS:[I

    aget v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v4

    goto :goto_6

    :cond_c
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    iput-object v2, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyBardata:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyBardata:Lcom/github/mikephil/charting/data/BarData;

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    iget-object v2, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v7, 0x41300000    # 11.0f

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v7

    iput v7, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueTextSize:F

    goto :goto_7

    :cond_d
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    iput-boolean v4, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawIcons:Z

    iput-boolean v6, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v3, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    move v2, v4

    goto :goto_8

    :cond_e
    move v2, v6

    :goto_8
    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity()V

    iput-boolean v6, v3, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    sget-object v8, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v8, v3, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    new-instance v8, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyChartXLabelFormatter;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v8, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    sget-object v10, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v12

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/DayOfWeek;->getValue()I

    move-result v12

    rem-int/2addr v12, v9

    move v13, v6

    :goto_9
    if-ge v13, v9, :cond_f

    add-int v14, v12, v13

    rem-int/2addr v14, v9

    add-int/2addr v14, v4

    invoke-static {v14}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v10, v15}, Ljava/time/DayOfWeek;->getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v4

    goto :goto_9

    :cond_f
    iget-object v9, v8, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v8, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v8, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    iget-object v8, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iput-boolean v6, v8, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput-boolean v6, v8, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    iget-object v8, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iput-boolean v4, v8, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity()V

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    iput-boolean v6, v8, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060b7e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, v8, Lcom/github/mikephil/charting/components/AxisBase;->mGridColor:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    iput v6, v8, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    const/high16 v6, 0x42300000    # 44.0f

    iput v6, v8, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    iput v6, v8, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f060b79

    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    goto :goto_a

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f060b78

    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    :goto_a
    iget v2, v8, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    iget-object v3, v8, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2, v2, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mContext:Landroid/content/Context;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v6, "MB"

    iput-object v6, v2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_11

    const-string v1, "h"

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->setDataUsageUnit(Ljava/lang/String;)V

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mMaxYValue:F

    invoke-virtual {v8, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    goto :goto_b

    :cond_11
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mMaxYValue:F

    cmpl-float v3, v1, v5

    if-eqz v3, :cond_12

    invoke-virtual {v8, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    :cond_12
    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->setDataUsageUnit(Ljava/lang/String;)V

    :goto_b
    iput-object v2, v8, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;

    iput-boolean v4, v1, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyTimeUsageBarChart;->mShiftIndex:I

    rsub-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    float-to-int v2, v2

    iput v2, v1, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyXAxisRenderer;->mSelectedLabel:I

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->animateY()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
