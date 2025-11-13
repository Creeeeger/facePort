.class public Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

.field public final mHighlightBuffer:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    iput-object p1, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    return-void
.end method

.method public static getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 4

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/highlight/Highlight;

    iget-object v3, v2, Lcom/github/mikephil/charting/highlight/Highlight;->axis:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v3, p2, :cond_0

    iget v2, v2, Lcom/github/mikephil/charting/highlight/Highlight;->mYPx:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    invoke-interface {p0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object p0

    return-object p0
.end method

.method public getDistance(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    sub-float/2addr p2, p4

    float-to-double p2, p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iget-object v4, v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v5, v6}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    iget-wide v6, v5, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v4, v6

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    iget-object v5, v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v5

    iget-object v6, v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    if-nez v5, :cond_0

    iget-object v4, v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetCount()I

    move-result v8

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v8, :cond_5

    invoke-virtual {v5, v15}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v14

    iget-boolean v9, v14, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighlightEnabled:Z

    if-nez v9, :cond_1

    move/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v8

    move/from16 v17, v15

    goto/16 :goto_3

    :cond_1
    iget-object v13, v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    sget-object v9, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntriesForXValue(F)Ljava/util/List;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    const/high16 v11, 0x7fc00000    # Float.NaN

    invoke-virtual {v14, v4, v11, v9}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    if-eqz v9, :cond_2

    iget v9, v9, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v14, v9}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntriesForXValue(F)Ljava/util/List;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    move/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v8

    move-object v1, v12

    move-object v4, v13

    move/from16 v17, v15

    goto/16 :goto_2

    :cond_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/Entry;

    iget-object v10, v14, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-object v11, v6

    check-cast v11, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v11, v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    iget v11, v9, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v7

    invoke-virtual {v10, v11, v7}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v7

    new-instance v11, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v10, v9, Lcom/github/mikephil/charting/data/Entry;->x:F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v17

    move/from16 v18, v4

    move-object/from16 v19, v5

    iget-wide v4, v7, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v4, v4

    move v5, v8

    iget-wide v7, v7, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v7, v7

    iget-object v8, v14, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-object v9, v11

    move/from16 v20, v5

    move-object v5, v11

    move/from16 v11, v17

    move-object v1, v12

    move v12, v4

    move-object v4, v13

    move v13, v7

    move-object v7, v14

    move v14, v15

    move/from16 v17, v15

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v1

    move-object v13, v4

    move-object v14, v7

    move/from16 v15, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v8, v20

    move/from16 v1, p1

    goto :goto_1

    :goto_2
    move-object v13, v4

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_3
    add-int/lit8 v15, v17, 0x1

    move/from16 v1, p1

    move/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v8, v20

    goto/16 :goto_0

    :cond_5
    iget-object v4, v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    goto :goto_8

    :cond_6
    invoke-static {v4, v2, v3}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-static {v4, v2, v7}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v8

    cmpg-float v1, v1, v8

    if-gez v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, v7

    :goto_5
    check-cast v6, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget v1, v6, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxHighlightDistance:F

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v7, v6, :cond_a

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/highlight/Highlight;

    iget-object v8, v6, Lcom/github/mikephil/charting/highlight/Highlight;->axis:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v8, v3, :cond_8

    iget v8, v6, Lcom/github/mikephil/charting/highlight/Highlight;->mYPx:F

    iget v9, v6, Lcom/github/mikephil/charting/highlight/Highlight;->mXPx:F

    move/from16 v10, p1

    invoke-virtual {v0, v10, v2, v9, v8}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getDistance(FFFF)F

    move-result v8

    cmpg-float v9, v8, v1

    if-gez v9, :cond_9

    move-object v5, v6

    move v1, v8

    goto :goto_7

    :cond_8
    move/from16 v10, p1

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    :goto_8
    return-object v5
.end method
