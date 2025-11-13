.class public final Lcom/github/mikephil/charting/components/YAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field public final mDrawBottomYLabelEntry:Z

.field public final mDrawTopYLabelEntry:Z

.field public mMaxWidth:F

.field public mMinWidth:F

.field public final mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field public final mSpacePercentBottom:F

.field public mSpacePercentTop:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    return-void
.end method


# virtual methods
.method public final calculate(FF)V
    .locals 5

    cmpl-float v0, p1, p2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    if-eqz v0, :cond_3

    cmpg-float p1, p2, v1

    if-gez p1, :cond_1

    mul-float/2addr v3, p2

    move p1, v3

    goto :goto_0

    :cond_1
    mul-float/2addr v2, p2

    move p1, v2

    :cond_2
    :goto_0
    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    if-eqz v0, :cond_2

    cmpg-float p2, p1, v1

    if-gez p2, :cond_4

    mul-float/2addr v2, p1

    goto :goto_1

    :cond_4
    mul-float v2, p1, v3

    :goto_1
    move p2, p1

    move p1, v2

    :goto_2
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    sub-float/2addr p2, v0

    :cond_5
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_6

    iget p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    goto :goto_3

    :cond_6
    div-float v1, v0, v2

    iget v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    mul-float/2addr v1, v3

    sub-float/2addr p2, v1

    :goto_3
    iput p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    if-eqz v1, :cond_7

    iget p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    goto :goto_4

    :cond_7
    div-float/2addr v0, v2

    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    :goto_4
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public final getRequiredWidthSpace(Landroid/graphics/Paint;)F
    .locals 5

    iget v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/AxisBase;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iget v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    :cond_0
    cmpl-float v1, p0, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p0

    :cond_1
    float-to-double v1, p0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method
