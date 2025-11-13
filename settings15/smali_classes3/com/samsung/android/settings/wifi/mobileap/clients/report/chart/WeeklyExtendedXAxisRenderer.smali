.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mExtraLabel:Ljava/lang/String;

.field public mLabelMarginTop:F

.field public mOffsetLabelPosition:F


# virtual methods
.method public final drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 13

    move-object v6, p0

    invoke-super/range {p0 .. p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    iget-object v0, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    array-length v7, v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-le v7, v1, :cond_0

    const/4 v1, 0x2

    aget v1, v0, v1

    aget v0, v0, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iput v1, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    :cond_0
    iget-object v8, v6, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v0

    iget-object v1, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    iget v3, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, v3

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v0

    iget-object v1, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mExtraLabel:Ljava/lang/String;

    :cond_2
    move v9, v2

    :goto_1
    if-ge v9, v7, :cond_6

    iget-object v0, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    aget v10, v0, v9

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v0

    iget-object v1, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v2, v9, 0x2

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v0

    iget v12, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mLabelMarginTop:F

    if-eqz v0, :cond_4

    if-nez v9, :cond_3

    iget-object v2, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mExtraLabel:Ljava/lang/String;

    iget v0, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    sub-float v3, v10, v0

    add-float v4, p2, v12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_3
    iget v0, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    add-float v3, v10, v0

    add-float v4, p2, v12

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_2

    :cond_4
    iget v0, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    sub-float v3, v10, v0

    add-float/2addr v12, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move v4, v12

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    add-int/lit8 v0, v7, -0x2

    if-ne v9, v0, :cond_5

    iget-object v2, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mExtraLabel:Ljava/lang/String;

    iget v0, v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyExtendedXAxisRenderer;->mOffsetLabelPosition:F

    add-float v3, v10, v0

    move-object v0, p0

    move-object v1, p1

    move v4, v12

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_6
    return-void
.end method
