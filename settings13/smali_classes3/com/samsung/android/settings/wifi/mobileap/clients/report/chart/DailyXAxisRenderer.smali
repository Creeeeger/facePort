.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;
.source "DailyXAxisRenderer.java"


# instance fields
.field private mBackground:Landroid/graphics/Paint;

.field private mDaylightSavingHour:I

.field private mLabelMarginTop:F

.field private mOffsetLabelPosition:F

.field private mTimeZoneHour:I

.field private mTimeZoneLine:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;-><init>(Landroid/content/Context;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mBackground:Landroid/graphics/Paint;

    .line 32
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->dw_graph_bg_section_color:I

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    .line 32
    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->daily_chart_x_label_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mOffsetLabelPosition:F

    .line 35
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->app_detail_daily_chart_x_label_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mLabelMarginTop:F

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneHour:I

    .line 38
    new-instance p2, Landroid/graphics/DashPathEffect;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 39
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneLine:Landroid/graphics/Paint;

    .line 40
    iget-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/settings/R$color;->dw_graph_line_limit_color_no_theme:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 40
    invoke-virtual {p4, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneLine:Landroid/graphics/Paint;

    const/16 p4, 0x80

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneLine:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneLine:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 45
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneLine:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$dimen;->chart_dash_line_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneLine:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mDaylightSavingHour:I

    return-void

    :array_0
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
    .end array-data
.end method

.method private getSectionStartIndex(I)I
    .locals 0

    .line 117
    div-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private getTimeZoneLineXOffset(F)F
    .locals 6

    const/high16 v0, 0x41c00000    # 24.0f

    div-float v0, p1, v0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->isNeedAdjustSpacing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneHour:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->getSectionStartIndex(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    .line 93
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneHour:I

    sub-int v3, v2, v1

    .line 94
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mDaylightSavingHour:I

    if-ge p0, v2, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    const/high16 p0, 0x41a00000    # 20.0f

    div-float p0, p1, p0

    add-float v2, p0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 102
    rem-int/lit8 v4, v3, 0x6

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    const/high16 p0, 0x40800000    # 4.0f

    div-float/2addr p1, p0

    sub-float v2, p1, v2

    goto :goto_0

    :cond_2
    int-to-float p1, v3

    mul-float v2, p0, p1

    :goto_0
    int-to-float p0, v1

    mul-float/2addr v0, p0

    add-float/2addr v0, v2

    return v0

    .line 112
    :cond_3
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneHour:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method private isNeedAdjustSpacing()Z
    .locals 3

    .line 121
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mDaylightSavingHour:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    rem-int/lit8 v2, v0, 0x6

    if-nez v2, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->getSectionStartIndex(I)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneHour:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->getSectionStartIndex(I)I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method protected drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 9

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    array-length v7, v0

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_2

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    aget v0, v0, v8

    .line 136
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v4, v8, 0x2

    aget v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getAxisLabel(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v7, -0x2

    if-ne v8, v1, :cond_0

    .line 140
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mOffsetLabelPosition:F

    add-float v3, v0, v1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mLabelMarginTop:F

    add-float v4, p2, v0

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mLabelRotatingAngleDegrees:F

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    goto :goto_1

    .line 142
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mOffsetLabelPosition:F

    sub-float v3, v0, v1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mLabelMarginTop:F

    add-float v4, p2, v0

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mLabelRotatingAngleDegrees:F

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public renderGridLines(Landroid/graphics/Canvas;)V
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawGridLinesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 70
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 71
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 72
    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mBackground:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 74
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 75
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v5, v0, 0x3

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 76
    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mBackground:Landroid/graphics/Paint;

    .line 73
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 79
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneHour:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-float v0, v0

    .line 80
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->getTimeZoneLineXOffset(F)F

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    add-float v3, v1, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 82
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    add-float v5, v1, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyXAxisRenderer;->mTimeZoneLine:Landroid/graphics/Paint;

    move-object v2, p1

    .line 81
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
