.class abstract Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;
.super Lcom/github/mikephil/charting/components/MarkerView;
.source "AbsChartMarker.java"


# instance fields
.field mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

.field mChart:Lcom/github/mikephil/charting/charts/BarChart;

.field mContext:Landroid/content/Context;

.field mDiffDay:I

.field mDrawMarker:Z

.field mIsRTL:Z

.field mLinePaint:Landroid/graphics/Paint;

.field mMarkerEndBound:F

.field mMarkerHeight:F

.field mMarkerStartBound:F

.field mMissingIndex:I

.field mOffset:Lcom/github/mikephil/charting/utils/MPPointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p5}, Lcom/github/mikephil/charting/components/MarkerView;-><init>(Landroid/content/Context;I)V

    .line 37
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result p5

    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mIsRTL:Z

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    .line 45
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 46
    iput p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mDiffDay:I

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mLinePaint:Landroid/graphics/Paint;

    .line 49
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mLinePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->dw_marker_bg_line_color:I

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mLinePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->app_detail_chart_marker_line_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->app_detail_chart_marker_offset_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerStartBound:F

    .line 55
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->app_detail_chart_marker_offset_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerEndBound:F

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->app_detail_chart_marker_offset_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerStartBound:F

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->app_detail_chart_marker_offset_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerEndBound:F

    :goto_0
    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMissingIndex:I

    return-void
.end method


# virtual methods
.method public calculateLeftIndex(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 12

    .line 129
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->getOffsetForDrawingAtPoint(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 133
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMissingIndex:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v2, :cond_3

    .line 134
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DRIVING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-eq v4, v5, :cond_1

    .line 135
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getRenderer()Lcom/github/mikephil/charting/renderer/DataRenderer;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SingleBarRenderer;

    .line 136
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SingleBarRenderer;->getAdjustedBuffer()[F

    move-result-object v2

    float-to-int v4, p2

    .line 138
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getEntryByTouchPoint(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 140
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->calculateLeftIndex(I)I

    move-result v4

    .line 142
    :cond_0
    aget v5, v2, v4

    add-int/lit8 v4, v4, 0x2

    .line 143
    aget v2, v2, v4

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getRenderer()Lcom/github/mikephil/charting/renderer/DataRenderer;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;

    .line 147
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;->getAdjustedBuffer()[F

    move-result-object v2

    float-to-int v4, p2

    .line 149
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getEntryByTouchPoint(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 151
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->calculateLeftIndex(I)I

    move-result v4

    .line 153
    :cond_2
    aget v5, v2, v4

    add-int/lit8 v4, v4, 0x2

    .line 154
    aget v2, v2, v4

    :goto_0
    add-float/2addr v5, v2

    div-float/2addr v5, v3

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, p2

    .line 159
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mDrawMarker:Z

    if-eqz v2, :cond_4

    .line 160
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerHeight:F

    div-float v8, v2, v3

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mLinePaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v9

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 162
    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr p2, v2

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 166
    :cond_4
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOffset()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    neg-float v2, v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    .line 94
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v0

    .line 95
    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    neg-float v1, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    return-object p0
.end method

.method public getOffsetForDrawingAtPoint(FF)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 5

    .line 102
    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->getOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v1

    .line 105
    iget v2, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 106
    iget v1, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 108
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 110
    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v3, p1, v2

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerStartBound:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    neg-float p1, p1

    add-float/2addr p1, v4

    .line 111
    iput p1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    goto :goto_0

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v3, :cond_1

    add-float v4, p1, v1

    add-float/2addr v4, v2

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerEndBound:F

    add-float/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    sub-float/2addr v2, v1

    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerEndBound:F

    sub-float/2addr v2, p1

    iput v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 116
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz p0, :cond_2

    neg-float p0, p2

    .line 117
    iput p0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    :cond_2
    return-object v0
.end method

.method public setMissingIndex(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMissingIndex:I

    return-void
.end method
