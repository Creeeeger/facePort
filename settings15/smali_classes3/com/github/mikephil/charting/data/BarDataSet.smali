.class public final Lcom/github/mikephil/charting/data/BarDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBarBorderColor:I

.field public final mBarShadowColor:I

.field public final mHighLightAlpha:I

.field public final mStackLabels:[Ljava/lang/String;

.field public final mStackSize:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    const/16 v0, 0xd7

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarBorderColor:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    move v1, v0

    :goto_0
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v2, v2, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-eqz v2, :cond_0

    array-length v3, v2

    iget v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    if-le v3, v4, :cond_0

    array-length v2, v2

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final calcMinMax(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz p1, :cond_5

    iget v0, p1, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-nez v0, :cond_1

    iget v0, p1, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    iget v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    :cond_0
    iget v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    neg-float v0, v0

    iget v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    :cond_2
    iget v0, p1, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    iget v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    :cond_3
    :goto_0
    iget p1, p1, Lcom/github/mikephil/charting/data/Entry;->x:F

    iget v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMin:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iput p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMin:F

    :cond_4
    iget v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    iput p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMax:F

    :cond_5
    return-void
.end method
