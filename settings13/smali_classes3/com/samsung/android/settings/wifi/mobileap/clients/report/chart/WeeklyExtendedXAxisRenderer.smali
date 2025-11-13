.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;
.source "WeeklyExtendedXAxisRenderer.java"


# instance fields
.field private mExtraLabel:Ljava/lang/String;

.field private mLabelMarginTop:F

.field private mOffsetLabelPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;-><init>(Landroid/content/Context;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->weekly_chart_x_label_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->dashboard_chart_x_label_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mLabelMarginTop:F

    const-string p1, ""

    .line 25
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mExtraLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 11

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    array-length v7, v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-le v7, v2, :cond_0

    const/4 v2, 0x2

    .line 34
    aget v2, v0, v2

    aget v0, v0, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 38
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    iget v4, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3, v2}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getAxisLabel(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aget v3, v3, v1

    invoke-virtual {v0, v3, v2}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getAxisLabel(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mExtraLabel:Ljava/lang/String;

    :cond_2
    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_6

    .line 46
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    aget v9, v0, v8

    .line 47
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v3, v8, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getAxisLabel(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v10

    .line 51
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v8, :cond_3

    .line 53
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mExtraLabel:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    sub-float v3, v9, v0

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mLabelMarginTop:F

    add-float v4, p2, v0

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mLabelRotatingAngleDegrees:F

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    .line 55
    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    add-float v3, v9, v0

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mLabelMarginTop:F

    add-float v4, p2, v0

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mLabelRotatingAngleDegrees:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    goto :goto_2

    .line 57
    :cond_4
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    sub-float v3, v9, v0

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mLabelMarginTop:F

    add-float v4, p2, v0

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mLabelRotatingAngleDegrees:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    add-int/lit8 v0, v7, -0x2

    if-ne v8, v0, :cond_5

    .line 59
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mExtraLabel:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    add-float v3, v9, v0

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mLabelMarginTop:F

    add-float v4, p2, v0

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mLabelRotatingAngleDegrees:F

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_6
    return-void
.end method
