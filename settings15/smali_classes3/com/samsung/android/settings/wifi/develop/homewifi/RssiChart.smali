.class public Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;
.super Lcom/github/mikephil/charting/charts/LineChart;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final COLOR_PALLETS:[Ljava/lang/String;


# instance fields
.field public final mAutoScrollEnabled:Z

.field public final mColors:Ljava/util/ArrayList;

.field public final mConvertedPts:[F

.field public mInWeakAreaNow:Z

.field public mNumOfDataSets:I

.field public mWeakAreaPaint:Landroid/graphics/Paint;

.field public final mWeakAreas:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "#987fff"

    const-string v6, "#4ccbff"

    const-string v0, "#ca84e8"

    const-string v1, "#1bceb5"

    const-string v2, "#6b8ea6"

    const-string v3, "#78a2f1"

    const-string v4, "#ffbb4d"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->COLOR_PALLETS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mColors:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mWeakAreas:Ljava/util/ArrayList;

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mConvertedPts:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mAutoScrollEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mColors:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mWeakAreas:Ljava/util/ArrayList;

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mConvertedPts:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mAutoScrollEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mColors:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mWeakAreas:Ljava/util/ArrayList;

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mConvertedPts:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mAutoScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public final addEntry(Ljava/util/ArrayList;)V
    .locals 11

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mNumOfDataSets:I

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mNumOfDataSets:I

    const/16 v7, 0x3c

    if-ge v4, v6, :cond_3

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/LineDataSet;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v6, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    const/16 v9, -0x1e

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/16 v9, -0x50

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v2, v4

    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    iget-object v9, v6, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    aget v10, v2, v4

    int-to-float v10, v10

    invoke-direct {v8, v9, v10}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v8, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->addEntry(Lcom/github/mikephil/charting/data/Entry;I)V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->calcMinMax()V

    iget-object v6, v6, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iput-boolean v3, v6, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/high16 p1, 0x42700000    # 60.0f

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMinimum(F)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mAutoScrollEnabled:Z

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object p1, p1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v7, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->moveViewToX(F)V

    :cond_5
    move p1, v3

    :goto_2
    if-ge p1, v1, :cond_7

    aget v0, v2, p1

    const/16 v4, -0x46

    if-le v0, v4, :cond_6

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mInWeakAreaNow:Z

    goto :goto_4

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mInWeakAreaNow:Z

    const/4 v0, 0x1

    const-string v1, "HomeWifi.RssiChart"

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mWeakAreas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mWeakAreas:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Updated weak signal area=("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mWeakAreas:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "New weak signal area from "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mInWeakAreaNow:Z

    :goto_4
    return-void
.end method

.method public final getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    return-object p0
.end method

.method public final isThereWeakArea()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mWeakAreas:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    return v2

    :cond_1
    return v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mWeakAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mConvertedPts:[F

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mConvertedPts:[F

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v4, 0x2

    aput v1, v2, v4

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mConvertedPts:[F

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mConvertedPts:[F

    aget v6, v1, v3

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v2, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    aget v8, v1, v4

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->mWeakAreaPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
