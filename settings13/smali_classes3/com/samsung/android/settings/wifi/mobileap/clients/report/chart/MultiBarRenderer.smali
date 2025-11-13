.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;
.source "MultiBarRenderer.java"


# instance fields
.field private mBackground:Landroid/graphics/Paint;

.field private mBackgroundBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;


# direct methods
.method private drawBackgroundDataSet(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x7

    .line 90
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v2, v2, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 91
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    add-int/lit8 v4, v0, 0x2

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v3, v3, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v2, v2, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    add-int/lit8 v3, v0, 0x4

    aget v3, v2, v3

    add-int/lit8 v4, v0, 0x5

    .line 100
    aget v12, v2, v4

    add-int/lit8 v4, v0, 0x6

    .line 101
    aget v13, v2, v4

    .line 102
    aget v1, v2, v1

    cmpl-float v2, v12, v1

    if-eqz v2, :cond_2

    .line 105
    iget v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;->mBackground:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v6, v12

    move v7, v13

    move v8, v1

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 106
    iget v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 90
    :cond_2
    :goto_1
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private drawBufferDataSet(Landroid/graphics/Canvas;[FI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x3

    .line 61
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 62
    iget v4, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/lit8 v4, v4, -0x4

    add-int/2addr v4, v2

    .line 63
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    add-int/lit8 v6, v2, 0x2

    aget v7, v1, v6

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v7, v1, v2

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 71
    :cond_1
    aget v5, v1, v2

    add-int/lit8 v7, v2, 0x1

    .line 72
    aget v15, v1, v7

    .line 73
    aget v6, v1, v6

    .line 74
    aget v3, v1, v3

    .line 76
    iget v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    div-int/2addr v4, v7

    iget v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    if-eq v4, v7, :cond_3

    if-nez p3, :cond_2

    .line 78
    iget v13, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;->mBackground:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v5

    move v9, v15

    move v10, v6

    move v11, v3

    move v12, v13

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    cmpl-float v4, v15, v3

    if-eqz v4, :cond_3

    .line 80
    iget v13, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v5

    move v9, v15

    move v10, v6

    move v11, v3

    move v12, v13

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 83
    :cond_2
    iget v13, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v5

    move v9, v15

    move v10, v6

    move v11, v3

    move v12, v13

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 61
    :cond_3
    :goto_1
    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private drawFrontDataSet(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x7

    .line 112
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;->mBackgroundBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v3, v3, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    array-length v4, v3

    if-ge v2, v4, :cond_4

    add-int/lit8 v4, v1, 0x4

    .line 114
    aget v4, v3, v4

    add-int/lit8 v5, v1, 0x5

    .line 115
    aget v7, v3, v5

    add-int/lit8 v5, v1, 0x6

    .line 116
    aget v8, v3, v5

    .line 117
    aget v9, v3, v2

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 121
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    iget v11, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v6, v4

    move v10, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 122
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move v2, v0

    :goto_1
    add-int/lit8 v5, v2, 0x7

    .line 123
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v6, v6, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    array-length v7, v6

    if-ge v5, v7, :cond_3

    add-int/lit8 v7, v2, 0x4

    .line 124
    aget v7, v6, v7

    .line 125
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    add-int/lit8 v9, v2, 0x2

    aget v6, v6, v9

    invoke-virtual {v8, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v6

    if-eqz v6, :cond_2

    cmpl-float v6, v4, v7

    if-eqz v6, :cond_0

    goto :goto_2

    .line 130
    :cond_0
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v8, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    aget v8, v8, v2

    invoke-virtual {v6, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 134
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v6, v6, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    add-int/lit8 v8, v2, 0x5

    aget v8, v6, v8

    add-int/lit8 v9, v2, 0x6

    .line 135
    aget v9, v6, v9

    .line 136
    aget v10, v6, v5

    .line 138
    iget v11, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 123
    :cond_2
    :goto_2
    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/2addr v2, v5

    goto :goto_1

    .line 140
    :cond_3
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 2

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V

    .line 39
    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_0

    .line 42
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;->mBackgroundBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;->drawBackgroundDataSet(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;->drawFrontDataSet(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->isSectionIsValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 51
    invoke-virtual {v0}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    move-result v0

    if-lt v0, p2, :cond_2

    .line 52
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->initAdjustedBuffer(I)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;->drawBufferDataSet(Landroid/graphics/Canvas;[FI)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object p2, p2, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MultiBarRenderer;->drawBufferDataSet(Landroid/graphics/Canvas;[FI)V

    :goto_0
    return-void
.end method

.method public bridge synthetic drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    return-void
.end method

.method public bridge synthetic drawValues(Landroid/graphics/Canvas;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->drawValues(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAdjustedBuffer()[F
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->getAdjustedBuffer()[F

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setEntrySize(I)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->setEntrySize(I)V

    return-void
.end method
