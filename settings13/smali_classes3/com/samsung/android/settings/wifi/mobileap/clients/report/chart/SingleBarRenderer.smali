.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SingleBarRenderer;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;
.source "SingleBarRenderer.java"


# direct methods
.method private drawBufferDataSet(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 40
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 41
    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/lit8 v3, v3, -0x4

    add-int/2addr v3, v2

    .line 42
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    add-int/lit8 v5, v3, 0x2

    aget v6, v1, v5

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v7, p3

    goto :goto_2

    .line 46
    :cond_0
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v6, v1, v3

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p4, :cond_2

    .line 53
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    div-int v6, v3, v6

    move-object/from16 v7, p3

    invoke-interface {v7, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    move-object/from16 v7, p3

    .line 56
    :goto_1
    aget v4, v1, v3

    add-int/lit8 v6, v3, 0x1

    .line 57
    aget v6, v1, v6

    .line 58
    aget v5, v1, v5

    add-int/lit8 v8, v3, 0x3

    .line 59
    aget v16, v1, v8

    .line 61
    iget v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    div-int/2addr v3, v8

    iget v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    if-eq v3, v8, :cond_3

    .line 62
    iget v14, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v4

    move v10, v6

    move v11, v5

    move/from16 v12, v16

    move v13, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    cmpl-float v3, v6, v16

    if-eqz v3, :cond_3

    .line 64
    iget v14, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v4

    move v10, v6

    move v11, v5

    move/from16 v12, v16

    move v13, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 40
    :cond_3
    :goto_2
    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 3

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V

    .line 27
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    mul-int/lit8 p3, p3, 0x2

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->isSectionIsValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 31
    invoke-virtual {v1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    move-result v1

    if-lt v1, p3, :cond_1

    .line 32
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->initAdjustedBuffer(I)V

    .line 33
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SingleBarRenderer;->drawBufferDataSet(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;Z)V

    goto :goto_1

    .line 35
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object p3, p3, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SingleBarRenderer;->drawBufferDataSet(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    return-void
.end method

.method public bridge synthetic drawValues(Landroid/graphics/Canvas;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->drawValues(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAdjustedBuffer()[F
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->getAdjustedBuffer()[F

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setEntrySize(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->setEntrySize(I)V

    return-void
.end method
