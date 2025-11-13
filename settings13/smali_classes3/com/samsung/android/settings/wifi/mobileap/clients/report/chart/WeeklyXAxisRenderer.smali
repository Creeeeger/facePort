.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;
.source "WeeklyXAxisRenderer.java"


# instance fields
.field mLabelBgRadius:F

.field mLabelBgYOffset:I

.field private mLabelMargin:F

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mSelectedInfoLoaded:Z

.field private mSelectedLabel:I

.field private mSelectedLabelBgPaint:Landroid/graphics/Paint;

.field private mSelectedLabelPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;-><init>(Landroid/content/Context;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$color;->dw_data_index_selected_text_color_dark:I

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$dimen;->dw_data_index_selected_text_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 36
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    .line 39
    sget v0, Lcom/android/settings/R$color;->wifi_ap_secondary_text_color:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->dw_data_index_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 42
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->dashboard_chart_x_label_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelMargin:F

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->dw_marker_bg_line_color:I

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->dashboard_chart_selected_label_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelBgRadius:F

    .line 52
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->dashboard_chart_selected_label_y_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelBgYOffset:I

    return-void
.end method


# virtual methods
.method protected drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 9

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 67
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelMargin:F

    add-float/2addr p2, v0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    array-length v0, v0

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v0, :cond_2

    .line 70
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    aget v4, v1, v8

    .line 71
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v5, v8, 0x2

    aget v3, v3, v5

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getAxisLabel(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v3

    .line 73
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabel:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v8, v1, :cond_0

    float-to-int v1, p2

    .line 74
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelBgYOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelBgRadius:F

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabelBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto :goto_1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 80
    :goto_1
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mLabelRotatingAngleDegrees:F

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    :cond_1
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSelectedDayLoaded(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    return-void
.end method

.method public setSelectedLabel(F)V
    .locals 0

    float-to-int p1, p1

    .line 60
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabel:I

    return-void
.end method
