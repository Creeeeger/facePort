.class public Lcom/samsung/android/settings/wifi/develop/utils/ChartView;
.super Lcom/github/mikephil/charting/charts/LineChart;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mGraphColors:[I

.field public mGraphLabels:[Ljava/lang/String;

.field public mMaxY:I

.field public mMinY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMinY:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMaxY:I

    const-string v0, "#a2e6ae"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphColors:[I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMinY:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMaxY:I

    const-string p2, "#a2e6ae"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphColors:[I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMinY:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMaxY:I

    const-string p2, "#a2e6ae"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphColors:[I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphLabels:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    return-object p0
.end method

.method public final update([Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "data is null. item="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChartView"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphLabels:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineDataSet;

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    aget-object v4, p1, v2

    const/16 v5, -0x7f

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMinY:I

    add-int/lit8 v4, v4, -0x5

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMaxY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMinY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_2
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    iget-object v6, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    int-to-float v4, v4

    invoke-direct {v5, v6, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v5, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->addEntry(Lcom/github/mikephil/charting/data/Entry;I)V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->calcMinMax()V

    iget-object v3, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_5

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iput-boolean v1, v3, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/high16 p1, 0x41f00000    # 30.0f

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMinimum(F)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->moveViewToX(F)V

    return-void
.end method
