.class public Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;
.super Ljava/lang/Object;
.source "ElasticEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist amplitude:F

.field private blacklist period:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 0
    .param p1, "amplitude"    # F
    .param p2, "period"    # F

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->amplitude:F

    .line 46
    iput p2, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->period:F

    .line 47
    return-void
.end method

.method private blacklist inout(FFF)F
    .locals 16
    .param p1, "t"    # F
    .param p2, "a"    # F
    .param p3, "p"    # F

    .line 55
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 56
    return v0

    .line 58
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 59
    return v1

    .line 61
    :cond_1
    cmpl-float v2, p3, v0

    if-nez v2, :cond_2

    .line 62
    const v2, 0x3ee66667    # 0.45000002f

    .end local p3    # "p":F
    .local v2, "p":F
    goto :goto_0

    .line 61
    .end local v2    # "p":F
    .restart local p3    # "p":F
    :cond_2
    move/from16 v2, p3

    .line 65
    .end local p3    # "p":F
    .restart local v2    # "p":F
    :goto_0
    cmpl-float v0, p2, v0

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v0, :cond_4

    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    goto :goto_1

    .line 69
    :cond_3
    float-to-double v5, v2

    div-double/2addr v5, v3

    div-float v0, v1, p2

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v0, v5

    move v5, v0

    move/from16 v0, p2

    .local v0, "s":F
    goto :goto_2

    .line 66
    .end local v0    # "s":F
    :cond_4
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    .end local p2    # "a":F
    .local v0, "a":F
    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v2, v5

    .line 71
    .local v5, "s":F
    :goto_2
    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, p1

    .line 72
    .end local p1    # "t":F
    .local v6, "t":F
    cmpg-float v7, v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-gez v7, :cond_5

    .line 73
    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    float-to-double v12, v0

    const/high16 v7, 0x41200000    # 10.0f

    sub-float v1, v6, v1

    move v6, v1

    mul-float/2addr v1, v7

    float-to-double v14, v1

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v12, v7

    sub-float v1, v6, v5

    float-to-double v7, v1

    mul-double/2addr v7, v3

    float-to-double v3, v2

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v12, v3

    mul-double/2addr v12, v10

    double-to-float v1, v12

    return v1

    .line 75
    :cond_5
    float-to-double v10, v0

    const/high16 v7, -0x3ee00000    # -10.0f

    sub-float v1, v6, v1

    move v6, v1

    mul-float/2addr v1, v7

    float-to-double v12, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v10, v7

    sub-float v1, v6, v5

    float-to-double v7, v1

    mul-double/2addr v7, v3

    float-to-double v3, v2

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v10, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v3

    double-to-float v1, v10

    return v1
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .line 51
    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->amplitude:F

    iget v1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->period:F

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->inout(FFF)F

    move-result v0

    return v0
.end method
