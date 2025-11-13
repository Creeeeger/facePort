.class public abstract Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDataSets:Ljava/util/List;

.field public mLeftAxisMax:F

.field public mLeftAxisMin:F

.field public mRightAxisMax:F

.field public mRightAxisMin:F

.field public mXMax:F

.field public mXMin:F

.field public mYMax:F

.field public mYMin:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMax:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMax:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->calcMinMax()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMax:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMax:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->calcMinMax()V

    return-void
.end method


# virtual methods
.method public final addEntry(Lcom/github/mikephil/charting/data/Entry;I)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_9

    if-ltz p2, :cond_9

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    iget-object v0, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->calcMinMax(Lcom/github/mikephil/charting/data/Entry;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p2, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iget v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMax:F

    iget v1, p1, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMax:F

    :cond_2
    iget v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMin:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMin:F

    :cond_3
    iget v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMax:F

    iget p1, p1, Lcom/github/mikephil/charting/data/Entry;->x:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_4

    iput p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMax:F

    :cond_4
    iget v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMin:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_5

    iput p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMin:F

    :cond_5
    sget-object p1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p2, p1, :cond_7

    iget p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    :cond_6
    iget p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_a

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    goto :goto_0

    :cond_7
    iget p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_8

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    :cond_8
    iget p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_a

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    goto :goto_0

    :cond_9
    const-string p0, "addEntry"

    const-string p1, "Cannot add Entry because dataSetIndex too high or too low."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    return-void
.end method

.method public final calcMinMax()V
    .locals 9

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, -0x800001

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMax:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMin:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMax:F

    iput v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMin:F

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    iget v5, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMax:F

    iget v6, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iput v6, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMax:F

    :cond_2
    iget v5, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMin:F

    iget v7, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    iput v7, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMin:F

    :cond_3
    iget v5, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMax:F

    iget v8, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMax:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_4

    iput v8, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMax:F

    :cond_4
    iget v5, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMin:F

    iget v8, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMin:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_5

    iput v8, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMin:F

    :cond_5
    iget-object v3, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v3, v4, :cond_7

    iget v3, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_6

    iput v6, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    :cond_6
    iget v3, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1

    iput v7, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_8

    iput v6, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    :cond_8
    iget v3, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1

    iput v7, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    goto :goto_0

    :cond_9
    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    iput v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    iput v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    iget-object v3, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v3, v4, :cond_a

    goto :goto_1

    :cond_b
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_e

    iget v0, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    iget v0, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    iget-object v3, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v3, v4, :cond_c

    iget v3, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    iget v5, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    cmpg-float v5, v3, v5

    if-gez v5, :cond_d

    iput v3, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    :cond_d
    iget v1, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    iget v3, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_c

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    iget-object v4, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v4, v3, :cond_f

    move-object v2, v1

    :cond_10
    if-eqz v2, :cond_13

    iget v0, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    iget v0, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    iget-object v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_11

    iget v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    iget v4, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_12

    iput v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    :cond_12
    iget v1, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    iget v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_11

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    goto :goto_3

    :cond_13
    return-void
.end method

.method public final getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDataSetCount()I
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getEntryCount()I
    .locals 2

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    iget-object v1, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2

    iget v0, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    iget v0, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    iget v1, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    iget p1, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    invoke-virtual {p0, v1, p1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p0

    return-object p0
.end method

.method public final getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 2

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    const v1, -0x800001

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    return p0

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMax:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMax:F

    return p0

    :cond_2
    return p1
.end method

.method public final getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 2

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    return p0

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mRightAxisMin:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mLeftAxisMin:F

    return p0

    :cond_2
    return p1
.end method
