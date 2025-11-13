.class public abstract Lcom/github/mikephil/charting/data/ChartData;
.super Ljava/lang/Object;
.source "ChartData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<",
        "+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mDataSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mLeftAxisMax:F

.field protected mLeftAxisMin:F

.field protected mRightAxisMax:F

.field protected mRightAxisMin:F

.field protected mXMax:F

.field protected mXMin:F

.field protected mYMax:F

.field protected mYMin:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    .line 25
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 30
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    .line 40
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    .line 43
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 45
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 47
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 49
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    .line 25
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 30
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    .line 40
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    .line 43
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 45
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 47
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 49
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 96
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 97
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    .line 25
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 30
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    .line 40
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    .line 43
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 45
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 47
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 49
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 69
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->arrayToList([Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    return-void
.end method

.method private arrayToList([Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 81
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 84
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, -0x800001

    .line 134
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 135
    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 136
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    .line 137
    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 140
    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    goto :goto_0

    .line 143
    :cond_1
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 144
    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 145
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 146
    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 149
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft(Ljava/util/List;)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 153
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 154
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 156
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 157
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_2

    .line 158
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 159
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 161
    :cond_3
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 162
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    goto :goto_1

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight(Ljava/util/List;)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 172
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 173
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 175
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 176
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_5

    .line 177
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 178
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 180
    :cond_6
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 181
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected calcMinMax(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 486
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 487
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 488
    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 489
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 491
    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getXMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 492
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getXMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    .line 493
    :cond_2
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getXMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 494
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getXMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    .line 496
    :cond_3
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_5

    .line 498
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 499
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 500
    :cond_4
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 501
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    goto :goto_0

    .line 503
    :cond_5
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 504
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 505
    :cond_6
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 506
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    :cond_7
    :goto_0
    return-void
.end method

.method public calcMinMaxY(FF)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 119
    invoke-interface {v1, p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->calcMinMaxY(FF)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax()V

    return-void
.end method

.method public getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataSetCount()I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 197
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getDataSets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 284
    iget-object p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    return-object p0
.end method

.method public getEntryCount()I
    .locals 2

    .line 793
    iget-object p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 794
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2

    .line 337
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 340
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p0

    return-object p0
.end method

.method protected getFirstLeft(Ljava/util/List;)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 635
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 636
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstRight(Ljava/util/List;)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 649
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 650
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 812
    iget-object p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 814
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v2

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v3

    if-le v2, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXMax()F
    .locals 0

    .line 275
    iget p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMax:F

    return p0
.end method

.method public getXMin()F
    .locals 0

    .line 266
    iget p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXMin:F

    return p0
.end method

.method public getYMax()F
    .locals 0

    .line 236
    iget p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    return p0
.end method

.method public getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 2

    .line 246
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    const v1, -0x800001

    if-ne p1, v0, :cond_1

    .line 248
    iget p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 249
    iget p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    return p0

    :cond_0
    return p1

    .line 253
    :cond_1
    iget p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    .line 254
    iget p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    return p0

    :cond_2
    return p1
.end method

.method public getYMin()F
    .locals 0

    .line 206
    iget p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    return p0
.end method

.method public getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 2

    .line 216
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-ne p1, v0, :cond_1

    .line 218
    iget p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 219
    iget p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    return p0

    :cond_0
    return p1

    .line 223
    :cond_1
    iget p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    .line 224
    iget p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    return p0

    :cond_2
    return p1
.end method

.method public notifyDataChanged()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax()V

    return-void
.end method

.method public setDrawValues(Z)V
    .locals 1

    .line 726
    iget-object p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 727
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setDrawValues(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
