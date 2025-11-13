.class public abstract Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;
.super Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.source "AbsXAxisRenderer.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mLabelRotatingAngleDegrees:F

.field mPositions:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2, p3, p4}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 2

    .line 29
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/XAxis;->getLabelRotationAngle()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mLabelRotatingAngleDegrees:F

    .line 30
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/AxisBase;->isCenterAxisLabelsEnabled()Z

    move-result p1

    .line 31
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget p2, p2, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    const/4 p2, 0x0

    .line 33
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    array-length v0, p3

    if-ge p2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    div-int/lit8 v1, p2, 0x2

    aget v0, v0, v1

    aput v0, p3, p2

    goto :goto_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v1, p2, 0x2

    aget v0, v0, v1

    aput v0, p3, p2

    :goto_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    return-void
.end method
