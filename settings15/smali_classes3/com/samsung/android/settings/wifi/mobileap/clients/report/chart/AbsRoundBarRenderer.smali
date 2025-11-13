.class public abstract Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAdjustedBuffer:[F

.field public mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

.field public final mEntrySize:I

.field public mMissingIndex:I

.field public mRadius:F

.field public final mSectionEntryCount:I

.field public mSectionEntrySize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const/4 p3, 0x6

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntryCount:I

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    const/4 p2, 0x4

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060150

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07045a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V
    .locals 2

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v0, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->initBuffers()V

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object p3, v0, p3

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseX:F

    iput v0, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v1, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    iget v0, v0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    iput v0, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarWidth:F

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/data/BarDataSet;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object p0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    return-void
.end method

.method public final drawValues(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-boolean v0, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValues(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final initAdjustedBuffer(I)V
    .locals 9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    array-length v1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntryCount:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntrySize:I

    if-ltz v1, :cond_1

    div-int v3, p1, v0

    mul-int/2addr v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntrySize:I

    if-ltz v1, :cond_2

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/lit8 v5, v4, -0x2

    aget v5, v1, v5

    aget v6, v1, v2

    sub-float/2addr v5, v6

    aget v6, v1, v4

    add-int/lit8 v4, v4, -0x2

    aget v1, v1, v4

    sub-float/2addr v6, v1

    add-float/2addr v6, v5

    add-int/lit8 v1, v0, -0x2

    if-lez v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float/2addr v6, v1

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    div-float/2addr v6, v0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    move v0, v3

    :goto_3
    if-ge v0, p1, :cond_5

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/lit8 v4, v1, -0x4

    add-int/2addr v4, v0

    div-int v5, v4, v1

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    if-eq v5, v7, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    add-int/lit8 v7, v1, -0x4

    add-int/2addr v7, v3

    aget v7, v5, v7

    int-to-float v8, v2

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v7, v1, -0x2

    add-int/2addr v7, v3

    aget v7, v5, v7

    add-float/2addr v7, v8

    aput v7, v5, v4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/2addr v0, v1

    goto :goto_3

    :cond_5
    return-void
.end method
