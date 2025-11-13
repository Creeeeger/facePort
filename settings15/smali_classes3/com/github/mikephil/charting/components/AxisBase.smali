.class public abstract Lcom/github/mikephil/charting/components/AxisBase;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAxisLineColor:I

.field public final mAxisLineWidth:F

.field public final mAxisMaxLabels:I

.field public mAxisMaximum:F

.field public final mAxisMinLabels:I

.field public mAxisMinimum:F

.field public mAxisRange:F

.field public mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

.field public mCustomAxisMax:Z

.field public mCustomAxisMin:Z

.field public mDecimals:I

.field public mDrawAxisLine:Z

.field public mDrawGridLines:Z

.field public final mDrawGridLinesBehindData:Z

.field public mDrawLabels:Z

.field public mEntries:[F

.field public mEntryCount:I

.field public mForceLabels:Z

.field public mGranularity:F

.field public mGranularityEnabled:Z

.field public mGridColor:I

.field public mGridLineWidth:F

.field public mLabelCount:I

.field public final mLimitLines:Ljava/util/List;

.field public mSpaceMax:F

.field public mSpaceMin:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineColor:I

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineWidth:F

    const/4 v0, 0x0

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    const/4 v2, 0x6

    iput v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLabelCount:I

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinLabels:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaxLabels:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public calculate(FF)V
    .locals 2

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    sub-float/2addr p1, v0

    :goto_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    add-float/2addr p2, v0

    :goto_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    :cond_2
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iput p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public final getFormattedLabel(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aget p0, p0, p1

    invoke-interface {v0, p0}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public final getLongestLabel()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    iget v0, v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;->digits:I

    iget v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    iget v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    :cond_1
    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    return-object p0
.end method

.method public final setAxisMaximum(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public final setAxisMinimum(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public final setGranularity()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return-void
.end method

.method public final setLabelCount(I)V
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaxLabels:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinLabels:I

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLabelCount:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    return-void
.end method
