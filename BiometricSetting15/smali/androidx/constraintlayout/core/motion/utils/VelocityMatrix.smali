.class public final Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mDRotate:F

.field public mDScaleX:F

.field public mDScaleY:F

.field public mDTranslateX:F

.field public mDTranslateY:F

.field public mRotate:F


# virtual methods
.method public final applyTransform(FFII[F)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p3

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aget v3, p5, v2

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    aget v5, p5, v4

    .line 9
    .line 10
    const/high16 v6, 0x3f000000    # 0.5f

    .line 11
    .line 12
    sub-float v7, p1, v6

    .line 13
    .line 14
    const/high16 v8, 0x40000000    # 2.0f

    .line 15
    .line 16
    mul-float/2addr v7, v8

    .line 17
    sub-float v6, p2, v6

    .line 18
    .line 19
    mul-float/2addr v6, v8

    .line 20
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 21
    .line 22
    add-float/2addr v3, v8

    .line 23
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 24
    .line 25
    add-float/2addr v5, v8

    .line 26
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 27
    .line 28
    mul-float/2addr v8, v7

    .line 29
    add-float/2addr v8, v3

    .line 30
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 31
    .line 32
    mul-float/2addr v3, v6

    .line 33
    add-float/2addr v3, v5

    .line 34
    iget v5, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    .line 35
    .line 36
    float-to-double v9, v5

    .line 37
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    double-to-float v5, v9

    .line 42
    iget v0, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 43
    .line 44
    float-to-double v9, v0

    .line 45
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v9

    .line 49
    double-to-float v0, v9

    .line 50
    neg-int v9, v1

    .line 51
    int-to-float v9, v9

    .line 52
    mul-float/2addr v9, v7

    .line 53
    float-to-double v9, v9

    .line 54
    float-to-double v11, v5

    .line 55
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v13

    .line 59
    mul-double/2addr v13, v9

    .line 60
    move/from16 v5, p4

    .line 61
    .line 62
    int-to-float v5, v5

    .line 63
    mul-float/2addr v5, v6

    .line 64
    float-to-double v5, v5

    .line 65
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    mul-double/2addr v9, v5

    .line 70
    sub-double/2addr v13, v9

    .line 71
    double-to-float v9, v13

    .line 72
    mul-float/2addr v9, v0

    .line 73
    add-float/2addr v9, v8

    .line 74
    int-to-float v1, v1

    .line 75
    mul-float/2addr v1, v7

    .line 76
    float-to-double v7, v1

    .line 77
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v13

    .line 81
    mul-double/2addr v13, v7

    .line 82
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v7

    .line 86
    mul-double/2addr v7, v5

    .line 87
    sub-double/2addr v13, v7

    .line 88
    double-to-float v1, v13

    .line 89
    mul-float/2addr v0, v1

    .line 90
    add-float/2addr v0, v3

    .line 91
    aput v9, p5, v2

    .line 92
    .line 93
    aput v0, p5, v4

    .line 94
    .line 95
    return-void
.end method
