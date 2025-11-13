.class public Lcom/github/mikephil/charting/components/YAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "YAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/YAxis$AxisDependency;,
        Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    }
.end annotation


# instance fields
.field private mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field private mDrawBottomYLabelEntry:Z

.field private mDrawTopYLabelEntry:Z

.field protected mDrawZeroLine:Z

.field protected mInverted:Z

.field protected mMaxWidth:F

.field protected mMinWidth:F

.field private mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field protected mSpacePercentBottom:F

.field protected mSpacePercentTop:F

.field private mUseAutoScaleRestrictionMax:Z

.field private mUseAutoScaleRestrictionMin:Z

.field protected mZeroLineColor:I

.field protected mZeroLineWidth:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    .line 29
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 39
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    .line 44
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mUseAutoScaleRestrictionMin:Z

    .line 49
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mUseAutoScaleRestrictionMax:Z

    const v0, -0x777778

    .line 54
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 64
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 69
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 74
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 100
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    .line 121
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 122
    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    return-void
.end method


# virtual methods
.method public calculate(FF)V
    .locals 4

    sub-float v0, p2, p1

    .line 409
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    :cond_0
    sub-float v0, p2, p1

    .line 418
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 421
    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    goto :goto_0

    :cond_1
    div-float v1, v0, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getSpaceBottom()F

    move-result v3

    mul-float/2addr v1, v3

    sub-float/2addr p1, v1

    :goto_0
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 422
    iget-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    goto :goto_1

    :cond_2
    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getSpaceTop()F

    move-result p1

    mul-float/2addr v0, p1

    add-float p1, p2, v0

    :goto_1
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 424
    iget p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object p0
.end method

.method public getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object p0
.end method

.method public getMaxWidth()F
    .locals 0

    .line 149
    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    return p0
.end method

.method public getMinWidth()F
    .locals 0

    .line 133
    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    return p0
.end method

.method public getRequiredHeightSpace(Landroid/graphics/Paint;)F
    .locals 1

    .line 351
    iget v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 353
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/AxisBase;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    add-float/2addr p1, p0

    return p1
.end method

.method public getRequiredWidthSpace(Landroid/graphics/Paint;)F
    .locals 5

    .line 324
    iget v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 326
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/AxisBase;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/ComponentBase;->getXOffset()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    .line 329
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getMinWidth()F

    move-result v0

    .line 330
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getMaxWidth()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 333
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    :cond_0
    cmpl-float v1, p0, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_1

    .line 336
    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p0

    :cond_1
    float-to-double v1, p0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move p0, p1

    .line 338
    :goto_0
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getSpaceBottom()F
    .locals 0

    .line 273
    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    return p0
.end method

.method public getSpaceTop()F
    .locals 0

    .line 255
    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    return p0
.end method

.method public getZeroLineColor()I
    .locals 0

    .line 291
    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    return p0
.end method

.method public getZeroLineWidth()F
    .locals 0

    .line 304
    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    return p0
.end method

.method public isDrawBottomYLabelEntryEnabled()Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    return p0
.end method

.method public isDrawTopYLabelEntryEnabled()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    return p0
.end method

.method public isDrawZeroLineEnabled()Z
    .locals 0

    .line 277
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    return p0
.end method

.method public isInverted()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    return p0
.end method

.method public needsOffset()Z
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLabelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object p0

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
