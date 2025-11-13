.class public abstract Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;
.super Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mPositions:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    invoke-direct {p0, p4, p2, p3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 2

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    array-length v0, p3

    if-ge p2, v0, :cond_0

    iget-object v0, p1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v1, p2, 0x2

    aget v0, v0, v1

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    return-void
.end method
