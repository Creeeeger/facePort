.class public Lcom/github/mikephil/charting/data/PieData;
.super Lcom/github/mikephil/charting/data/ChartData;
.source "PieData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/ChartData<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    return-object p0
.end method

.method public bridge synthetic getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object p0

    return-object p0
.end method

.method public getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .locals 0

    if-nez p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p0

    return-object p0
.end method

.method public getYValueSum()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
