.class public abstract Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field public mColors:Ljava/util/List;

.field public mDrawIcons:Z

.field public mDrawValues:Z

.field public final mEntries:Ljava/util/List;

.field public mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public mFormLineWidth:F

.field public mFormSize:F

.field public mHighLightColor:I

.field public mHighlightEnabled:Z

.field public mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

.field public mLabel:Ljava/lang/String;

.field public mValueColors:Ljava/util/List;

.field public transient mValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

.field public mValueTextSize:F

.field public mVisible:Z

.field public mXMax:F

.field public mXMin:F

.field public mYMax:F

.field public mYMin:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueColors:Ljava/util/List;

    const-string v0, "DataSet"

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mLabel:Ljava/lang/String;

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighlightEnabled:Z

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mFormSize:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mFormLineWidth:F

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawIcons:Z

    new-instance v1, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-direct {v1}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    const/high16 v1, 0x41880000    # 17.0f

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueTextSize:F

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mVisible:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    const/16 v2, 0x8c

    const/16 v3, 0xea

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mLabel:Ljava/lang/String;

    const p1, -0x800001

    iput p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    iput p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMin:F

    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    if-nez p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->calcMinMax$1()V

    const/16 p1, 0xbb

    const/16 p2, 0x73

    invoke-static {v4, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    return-void
.end method


# virtual methods
.method public calcMinMax(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/github/mikephil/charting/data/Entry;->x:F

    iget v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMin:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMin:F

    :cond_1
    iget v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMax:F

    :cond_2
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->calcMinMaxY(Lcom/github/mikephil/charting/data/Entry;)V

    return-void
.end method

.method public final calcMinMax$1()V
    .locals 2

    const v0, -0x800001

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMax:F

    iput v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mXMin:F

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->calcMinMax(Lcom/github/mikephil/charting/data/Entry;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final calcMinMaxY(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    :cond_1
    return-void
.end method

.method public final getColor()I
    .locals 1

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getColor(I)I
    .locals 1

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getEntriesForXValue(F)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_3

    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    iget v4, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    cmpl-float v5, p1, v4

    if-nez v5, :cond_1

    :goto_1
    if-lez v3, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    iget v1, v1, Lcom/github/mikephil/charting/data/Entry;->x:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    iget v4, v2, Lcom/github/mikephil/charting/data/Entry;->x:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/Entry;

    return-object p0
.end method

.method public final getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryIndex(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/Entry;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEntryIndex(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I
    .locals 10

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-ge v2, v0, :cond_5

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    iget v4, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    sub-float/2addr v4, p1

    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    iget v5, v5, Lcom/github/mikephil/charting/data/Entry;->x:F

    sub-float/2addr v5, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v8, v5, v7

    if-gez v8, :cond_2

    :goto_1
    move v2, v6

    goto :goto_0

    :cond_2
    cmpg-float v5, v7, v5

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    float-to-double v4, v4

    const-wide/16 v7, 0x0

    cmpl-double v9, v4, v7

    if-ltz v9, :cond_4

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_4
    cmpg-double v3, v4, v7

    if-gez v3, :cond_1

    goto :goto_1

    :cond_5
    if-eq v0, v1, :cond_c

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    iget v1, v1, Lcom/github/mikephil/charting/data/Entry;->x:F

    sget-object v2, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p3, v2, :cond_6

    cmpg-float p1, v1, p1

    if-gez p1, :cond_7

    iget-object p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p3, v2, :cond_7

    cmpl-float p1, v1, p1

    if-lez p1, :cond_7

    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    :cond_7
    :goto_3
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_c

    :goto_4
    if-lez v0, :cond_8

    iget-object p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    add-int/lit8 p3, v0, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    iget p1, p1, Lcom/github/mikephil/charting/data/Entry;->x:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_8

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result p1

    :goto_5
    move p3, v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_a

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    iget v3, v2, Lcom/github/mikephil/charting/data/Entry;->x:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_b

    :goto_6
    move v0, p3

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_9

    move p1, p2

    goto :goto_5

    :cond_c
    :goto_7
    return v0

    :cond_d
    :goto_8
    return v1
.end method

.method public final getValueFormatter()Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-nez p0, :cond_0

    sget-object p0, Lcom/github/mikephil/charting/utils/Utils;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    :cond_0
    return-object p0
.end method

.method public final getValueTextColor(I)I
    .locals 1

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueColors:Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p1, v0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs setColors([I)V
    .locals 4

    sget v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->$r8$clinit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataSet, label: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mLabel:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", entries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
