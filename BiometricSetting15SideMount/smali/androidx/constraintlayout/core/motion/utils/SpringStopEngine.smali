.class public final Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# instance fields
.field public mBoundaryMode:I

.field public mDamping:D

.field public mLastTime:F

.field public mMass:F

.field public mPos:F

.field public mStiffness:D

.field public mStopThreshold:F

.field public mTargetPos:D

.field public mV:F


# virtual methods
.method public final getInterpolation(F)F
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    .line 6
    .line 7
    sub-float v2, v1, v2

    .line 8
    .line 9
    float-to-double v2, v2

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmpg-double v4, v2, v4

    .line 13
    .line 14
    if-gtz v4, :cond_0

    .line 15
    .line 16
    move-object v4, v0

    .line 17
    move v0, v1

    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-wide v4, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    .line 21
    .line 22
    iget-wide v6, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    .line 23
    .line 24
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 25
    .line 26
    float-to-double v8, v8

    .line 27
    div-double v8, v4, v8

    .line 28
    .line 29
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    mul-double/2addr v8, v2

    .line 34
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    .line 35
    .line 36
    mul-double/2addr v8, v10

    .line 37
    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    .line 38
    .line 39
    div-double/2addr v10, v8

    .line 40
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 41
    .line 42
    add-double/2addr v10, v8

    .line 43
    double-to-int v8, v10

    .line 44
    int-to-double v9, v8

    .line 45
    div-double/2addr v2, v9

    .line 46
    const/4 v9, 0x0

    .line 47
    :goto_0
    if-ge v9, v8, :cond_3

    .line 48
    .line 49
    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 50
    .line 51
    float-to-double v11, v10

    .line 52
    iget-wide v13, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 53
    .line 54
    sub-double v15, v11, v13

    .line 55
    .line 56
    move/from16 v17, v8

    .line 57
    .line 58
    move/from16 v18, v9

    .line 59
    .line 60
    neg-double v8, v4

    .line 61
    mul-double/2addr v8, v15

    .line 62
    iget v15, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 63
    .line 64
    move-wide/from16 v19, v4

    .line 65
    .line 66
    float-to-double v4, v15

    .line 67
    mul-double v21, v6, v4

    .line 68
    .line 69
    sub-double v8, v8, v21

    .line 70
    .line 71
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 72
    .line 73
    float-to-double v0, v1

    .line 74
    div-double/2addr v8, v0

    .line 75
    mul-double/2addr v8, v2

    .line 76
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    .line 77
    .line 78
    div-double v8, v8, v21

    .line 79
    .line 80
    add-double/2addr v8, v4

    .line 81
    mul-double v23, v2, v8

    .line 82
    .line 83
    div-double v23, v23, v21

    .line 84
    .line 85
    add-double v23, v23, v11

    .line 86
    .line 87
    sub-double v11, v23, v13

    .line 88
    .line 89
    neg-double v11, v11

    .line 90
    mul-double v11, v11, v19

    .line 91
    .line 92
    mul-double/2addr v8, v6

    .line 93
    sub-double/2addr v11, v8

    .line 94
    div-double/2addr v11, v0

    .line 95
    mul-double/2addr v11, v2

    .line 96
    div-double v0, v11, v21

    .line 97
    .line 98
    add-double/2addr v0, v4

    .line 99
    double-to-float v4, v11

    .line 100
    add-float/2addr v15, v4

    .line 101
    move-object/from16 v4, p0

    .line 102
    .line 103
    iput v15, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 104
    .line 105
    mul-double/2addr v0, v2

    .line 106
    double-to-float v0, v0

    .line 107
    add-float/2addr v10, v0

    .line 108
    iput v10, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 109
    .line 110
    iget v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    .line 111
    .line 112
    if-lez v0, :cond_2

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    cmpg-float v1, v10, v1

    .line 116
    .line 117
    if-gez v1, :cond_1

    .line 118
    .line 119
    and-int/lit8 v1, v0, 0x1

    .line 120
    .line 121
    const/4 v5, 0x1

    .line 122
    if-ne v1, v5, :cond_1

    .line 123
    .line 124
    neg-float v1, v10

    .line 125
    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 126
    .line 127
    neg-float v1, v15

    .line 128
    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 129
    .line 130
    :cond_1
    iget v1, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 131
    .line 132
    const/high16 v5, 0x3f800000    # 1.0f

    .line 133
    .line 134
    cmpl-float v5, v1, v5

    .line 135
    .line 136
    if-lez v5, :cond_2

    .line 137
    .line 138
    and-int/lit8 v0, v0, 0x2

    .line 139
    .line 140
    const/4 v5, 0x2

    .line 141
    if-ne v0, v5, :cond_2

    .line 142
    .line 143
    const/high16 v0, 0x40000000    # 2.0f

    .line 144
    .line 145
    sub-float/2addr v0, v1

    .line 146
    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 147
    .line 148
    iget v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 149
    .line 150
    neg-float v0, v0

    .line 151
    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 152
    .line 153
    :cond_2
    add-int/lit8 v9, v18, 0x1

    .line 154
    .line 155
    move/from16 v1, p1

    .line 156
    .line 157
    move-object v0, v4

    .line 158
    move/from16 v8, v17

    .line 159
    .line 160
    move-wide/from16 v4, v19

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_3
    move-object v4, v0

    .line 164
    move/from16 v0, p1

    .line 165
    .line 166
    :goto_1
    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->isStopped()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    .line 174
    iget-wide v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 175
    .line 176
    double-to-float v0, v0

    .line 177
    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 178
    .line 179
    :cond_4
    iget v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 180
    .line 181
    return v0
.end method

.method public final getVelocity()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isStopped()Z
    .locals 8

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 5
    .line 6
    sub-double/2addr v0, v2

    .line 7
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    .line 8
    .line 9
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 10
    .line 11
    float-to-double v4, v4

    .line 12
    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 13
    .line 14
    float-to-double v6, v6

    .line 15
    mul-double/2addr v4, v4

    .line 16
    mul-double/2addr v4, v6

    .line 17
    mul-double v6, v2, v0

    .line 18
    .line 19
    mul-double/2addr v6, v0

    .line 20
    add-double/2addr v6, v4

    .line 21
    div-double/2addr v6, v2

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget p0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    .line 27
    .line 28
    float-to-double v2, p0

    .line 29
    cmpg-double p0, v0, v2

    .line 30
    .line 31
    if-gtz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method
