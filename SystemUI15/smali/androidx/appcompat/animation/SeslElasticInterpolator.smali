.class public final Landroidx/appcompat/animation/SeslElasticInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final mAmplitude:F

.field public final mPeriod:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/animation/SeslElasticInterpolator;->mAmplitude:F

    iput p2, p0, Landroidx/appcompat/animation/SeslElasticInterpolator;->mPeriod:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 11

    iget v0, p0, Landroidx/appcompat/animation/SeslElasticInterpolator;->mAmplitude:F

    iget p0, p0, Landroidx/appcompat/animation/SeslElasticInterpolator;->mPeriod:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    cmpl-float v3, p0, v1

    if-nez v3, :cond_2

    const p0, 0x3e99999a    # 0.3f

    :cond_2
    cmpl-float v1, v0, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v1, :cond_4

    cmpg-float v1, v0, v2

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    float-to-double v5, p0

    div-double/2addr v5, v3

    div-float/2addr v2, v0

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    mul-double/2addr v1, v5

    double-to-float v1, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 v0, 0x40800000    # 4.0f

    div-float v1, p0, v0

    move v0, v2

    :goto_1
    float-to-double v5, v0

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p1

    float-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v5

    sub-float/2addr p1, v1

    float-to-double v0, p1

    mul-double/2addr v0, v3

    float-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    double-to-float v1, p0

    :goto_2
    return v1
.end method
