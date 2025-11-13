.class public final Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public max:I

.field public min:I

.field public range:I

.field public final synthetic this$0:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->this$0:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    return-void
.end method


# virtual methods
.method public final set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/data/LineDataSet;)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->this$0:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result p1

    sget-object v2, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p2, v1, v3, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p2, p1, v3, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v3, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    iget p1, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    return-void
.end method
