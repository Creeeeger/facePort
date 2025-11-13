.class public Landroid/view/animation/ElasticCustom;
.super Landroid/view/animation/BaseInterpolator;
.source "ElasticCustom.java"


# instance fields
.field private blacklist mAmplitude:F

.field private blacklist mPeriod:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    iput p1, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    iput p2, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    return-void
.end method

.method private blacklist out(FFF)F
    .locals 10

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    cmpl-float v2, p3, v0

    if-nez v2, :cond_2

    const p3, 0x3e99999a    # 0.3f

    :cond_2
    cmpl-float v0, p2, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v0, :cond_4

    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    float-to-double v4, p3

    div-double/2addr v4, v2

    div-float/2addr v1, p2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    double-to-float v0, v4

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p3, v0

    :goto_1
    float-to-double v4, p2

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p1

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-float v1, p1, v0

    float-to-double v6, v1

    mul-double/2addr v6, v2

    float-to-double v1, p3

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v4, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v1

    double-to-float v1, v4

    return v1
.end method


# virtual methods
.method public blacklist getAmplitude()F
    .locals 1

    iget v0, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    return v0
.end method

.method public whitelist getInterpolation(F)F
    .locals 2

    iget v0, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    iget v1, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    invoke-direct {p0, p1, v0, v1}, Landroid/view/animation/ElasticCustom;->out(FFF)F

    move-result v0

    return v0
.end method

.method public blacklist getPeriod()F
    .locals 1

    iget v0, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    return v0
.end method

.method public blacklist setAmplitude(F)V
    .locals 0

    iput p1, p0, Landroid/view/animation/ElasticCustom;->mAmplitude:F

    return-void
.end method

.method public blacklist setPeriod(F)V
    .locals 0

    iput p1, p0, Landroid/view/animation/ElasticCustom;->mPeriod:F

    return-void
.end method
