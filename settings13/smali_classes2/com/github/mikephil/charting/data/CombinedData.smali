.class public Lcom/github/mikephil/charting/data/CombinedData;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
.source "CombinedData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet<",
        "+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mBarData:Lcom/github/mikephil/charting/data/BarData;

.field private mBubbleData:Lcom/github/mikephil/charting/data/BubbleData;

.field private mCandleData:Lcom/github/mikephil/charting/data/CandleData;

.field private mLineData:Lcom/github/mikephil/charting/data/LineData;

.field private mScatterData:Lcom/github/mikephil/charting/data/ScatterData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>()V

    return-void
.end method


# virtual methods
.method public calcMinMax()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const v0, -0x800001

    .line 63
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 64
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 65
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    .line 66
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    .line 68
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 69
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 70
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 71
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 73
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->getAllData()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/ChartData;

    .line 77
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax()V

    .line 79
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 83
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 85
    :cond_2
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 86
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 88
    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 89
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    .line 91
    :cond_4
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getXMin()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 92
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getXMin()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    .line 94
    :cond_5
    iget v2, v1, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    .line 95
    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 97
    :cond_6
    iget v2, v1, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_7

    .line 98
    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 100
    :cond_7
    iget v2, v1, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    .line 101
    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 103
    :cond_8
    iget v1, v1, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 104
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public getAllData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/github/mikephil/charting/data/CombinedData;->mLineData:Lcom/github/mikephil/charting/data/LineData;

    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    if-eqz v1, :cond_1

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/CombinedData;->mScatterData:Lcom/github/mikephil/charting/data/ScatterData;

    if-eqz v1, :cond_2

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/data/CombinedData;->mCandleData:Lcom/github/mikephil/charting/data/CandleData;

    if-eqz v1, :cond_3

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_3
    iget-object p0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBubbleData:Lcom/github/mikephil/charting/data/BubbleData;

    if-eqz p0, :cond_4

    .line 146
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    return-object p0
.end method

.method public getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBubbleData:Lcom/github/mikephil/charting/data/BubbleData;

    return-object p0
.end method

.method public getCandleData()Lcom/github/mikephil/charting/data/CandleData;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mCandleData:Lcom/github/mikephil/charting/data/CandleData;

    return-object p0
.end method

.method public getDataByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->getAllData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    return-object p0
.end method

.method public getDataSetByHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/highlight/Highlight;",
            ")",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet<",
            "+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->getAllData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/CombinedData;->getDataByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object p0

    .line 213
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-object v2

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;

    return-object p0
.end method

.method public getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;
    .locals 4

    .line 180
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->getAllData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/CombinedData;->getDataByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object p0

    .line 185
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-object v2

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p0

    .line 192
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v0

    invoke-interface {p0, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntriesForXValue(F)Ljava/util/List;

    move-result-object p0

    .line 193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 194
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    .line 195
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    return-object v0

    :cond_4
    return-object v2
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mLineData:Lcom/github/mikephil/charting/data/LineData;

    return-object p0
.end method

.method public getScatterData()Lcom/github/mikephil/charting/data/ScatterData;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mScatterData:Lcom/github/mikephil/charting/data/ScatterData;

    return-object p0
.end method

.method public notifyDataChanged()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mLineData:Lcom/github/mikephil/charting/data/LineData;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mCandleData:Lcom/github/mikephil/charting/data/CandleData;

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mScatterData:Lcom/github/mikephil/charting/data/ScatterData;

    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBubbleData:Lcom/github/mikephil/charting/data/BubbleData;

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 168
    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->calcMinMax()V

    return-void
.end method
