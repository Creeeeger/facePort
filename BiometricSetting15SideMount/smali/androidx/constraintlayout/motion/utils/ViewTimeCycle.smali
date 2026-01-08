.class public abstract Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mCache:[F

.field public mContinue:Z

.field public mCount:I

.field public mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public mLastCycle:F

.field public mLastTime:J

.field public mTimePoints:[I

.field public mType:Ljava/lang/String;

.field public mValues:[[F

.field public mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mWaveShape:I

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    new-array v2, v1, [I

    .line 10
    .line 11
    iput-object v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mTimePoints:[I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x3

    .line 18
    aput v4, v2, v3

    .line 19
    .line 20
    aput v1, v2, v0

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [[F

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mValues:[[F

    .line 31
    .line 32
    new-array v1, v4, [F

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    .line 35
    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 37
    .line 38
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastCycle:F

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final calcWave(F)F
    .locals 3

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mWaveShape:I

    .line 2
    .line 3
    const v0, 0x40c90fdb

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    mul-float/2addr p1, v0

    .line 14
    float-to-double p0, p1

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    double-to-float p0, p0

    .line 20
    return p0

    .line 21
    :pswitch_0
    const/high16 p0, 0x40800000    # 4.0f

    .line 22
    .line 23
    mul-float/2addr p1, p0

    .line 24
    rem-float/2addr p1, p0

    .line 25
    sub-float/2addr p1, v1

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    sub-float p0, v2, p0

    .line 31
    .line 32
    mul-float/2addr p0, p0

    .line 33
    sub-float/2addr v2, p0

    .line 34
    return v2

    .line 35
    :pswitch_1
    mul-float/2addr p1, v0

    .line 36
    float-to-double p0, p1

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    double-to-float p0, p0

    .line 42
    return p0

    .line 43
    :pswitch_2
    mul-float/2addr p1, v1

    .line 44
    add-float/2addr p1, v2

    .line 45
    rem-float/2addr p1, v1

    .line 46
    sub-float/2addr v2, p1

    .line 47
    return v2

    .line 48
    :pswitch_3
    mul-float/2addr p1, v1

    .line 49
    add-float/2addr p1, v2

    .line 50
    rem-float/2addr p1, v1

    .line 51
    sub-float/2addr p1, v2

    .line 52
    return p1

    .line 53
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    sub-float/2addr v2, p0

    .line 58
    return v2

    .line 59
    :pswitch_5
    mul-float/2addr p1, v0

    .line 60
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v4, p5

    .line 8
    .line 9
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 10
    .line 11
    move/from16 v6, p1

    .line 12
    .line 13
    float-to-double v6, v6

    .line 14
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    .line 15
    .line 16
    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 17
    .line 18
    .line 19
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    aget v7, v5, v6

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    cmpl-float v9, v7, v8

    .line 26
    .line 27
    const/4 v10, 0x2

    .line 28
    const/4 v11, 0x0

    .line 29
    if-nez v9, :cond_0

    .line 30
    .line 31
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 32
    .line 33
    aget v0, v5, v10

    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastCycle:F

    .line 37
    .line 38
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v4, v3, v5}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;)F

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iput v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastCycle:F

    .line 51
    .line 52
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    iput v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastCycle:F

    .line 59
    .line 60
    :cond_1
    iget-wide v12, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastTime:J

    .line 61
    .line 62
    sub-long v12, v1, v12

    .line 63
    .line 64
    iget v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastCycle:F

    .line 65
    .line 66
    float-to-double v14, v5

    .line 67
    long-to-double v12, v12

    .line 68
    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    mul-double v12, v12, v16

    .line 74
    .line 75
    move v5, v9

    .line 76
    float-to-double v8, v7

    .line 77
    mul-double/2addr v12, v8

    .line 78
    add-double/2addr v12, v14

    .line 79
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 80
    .line 81
    rem-double/2addr v12, v7

    .line 82
    double-to-float v7, v12

    .line 83
    iput v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastCycle:F

    .line 84
    .line 85
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v9, v4, Landroidx/constraintlayout/core/motion/utils/KeyCache;->mMap:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-nez v9, :cond_2

    .line 94
    .line 95
    new-instance v9, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    new-array v12, v6, [F

    .line 101
    .line 102
    aput v7, v12, v11

    .line 103
    .line 104
    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object v4, v4, Landroidx/constraintlayout/core/motion/utils/KeyCache;->mMap:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iget-object v9, v4, Landroidx/constraintlayout/core/motion/utils/KeyCache;->mMap:Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Ljava/util/HashMap;

    .line 120
    .line 121
    if-nez v9, :cond_3

    .line 122
    .line 123
    new-instance v9, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-nez v12, :cond_4

    .line 133
    .line 134
    new-array v12, v6, [F

    .line 135
    .line 136
    aput v7, v12, v11

    .line 137
    .line 138
    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    iget-object v4, v4, Landroidx/constraintlayout/core/motion/utils/KeyCache;->mMap:Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, [F

    .line 152
    .line 153
    if-nez v3, :cond_5

    .line 154
    .line 155
    new-array v3, v11, [F

    .line 156
    .line 157
    :cond_5
    array-length v4, v3

    .line 158
    if-gtz v4, :cond_6

    .line 159
    .line 160
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    :cond_6
    aput v7, v3, v11

    .line 165
    .line 166
    invoke-virtual {v9, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :goto_0
    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastTime:J

    .line 170
    .line 171
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    .line 172
    .line 173
    aget v1, v1, v11

    .line 174
    .line 175
    iget v2, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastCycle:F

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->calcWave(F)F

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    .line 182
    .line 183
    aget v3, v3, v10

    .line 184
    .line 185
    mul-float/2addr v2, v1

    .line 186
    add-float/2addr v2, v3

    .line 187
    const/4 v3, 0x0

    .line 188
    cmpl-float v1, v1, v3

    .line 189
    .line 190
    if-nez v1, :cond_8

    .line 191
    .line 192
    if-eqz v5, :cond_7

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    move v6, v11

    .line 196
    :cond_8
    :goto_1
    iput-boolean v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 197
    .line 198
    return v2
.end method

.method public setPoint(IFFIF)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mTimePoints:[I

    .line 4
    .line 5
    aput p1, v1, v0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mValues:[[F

    .line 8
    .line 9
    aget-object p1, p1, v0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aput p2, p1, v0

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    aput p3, p1, p2

    .line 16
    .line 17
    const/4 p3, 0x2

    .line 18
    aput p5, p1, p3

    .line 19
    .line 20
    iget p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mWaveShape:I

    .line 21
    .line 22
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mWaveShape:I

    .line 27
    .line 28
    iget p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCount:I

    .line 29
    .line 30
    add-int/2addr p1, p2

    .line 31
    iput p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCount:I

    .line 32
    .line 33
    return-void
.end method

.method public abstract setProperty(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z
.end method

.method public setup(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCount:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Error no points added to "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    sub-int/2addr v1, v2

    .line 31
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mTimePoints:[I

    .line 32
    .line 33
    array-length v4, v3

    .line 34
    add-int/lit8 v4, v4, 0xa

    .line 35
    .line 36
    new-array v4, v4, [I

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    aput v1, v4, v5

    .line 40
    .line 41
    aput v5, v4, v2

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    move v6, v1

    .line 45
    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mValues:[[F

    .line 46
    .line 47
    if-lez v6, :cond_4

    .line 48
    .line 49
    add-int/lit8 v8, v6, -0x1

    .line 50
    .line 51
    aget v9, v4, v8

    .line 52
    .line 53
    add-int/lit8 v10, v6, -0x2

    .line 54
    .line 55
    aget v11, v4, v10

    .line 56
    .line 57
    if-ge v9, v11, :cond_3

    .line 58
    .line 59
    aget v12, v3, v11

    .line 60
    .line 61
    move v13, v9

    .line 62
    move v14, v13

    .line 63
    :goto_1
    if-ge v13, v11, :cond_2

    .line 64
    .line 65
    aget v15, v3, v13

    .line 66
    .line 67
    if-gt v15, v12, :cond_1

    .line 68
    .line 69
    aget v16, v3, v14

    .line 70
    .line 71
    aput v15, v3, v14

    .line 72
    .line 73
    aput v16, v3, v13

    .line 74
    .line 75
    aget-object v15, v7, v14

    .line 76
    .line 77
    aget-object v16, v7, v13

    .line 78
    .line 79
    aput-object v16, v7, v14

    .line 80
    .line 81
    aput-object v15, v7, v13

    .line 82
    .line 83
    add-int/lit8 v14, v14, 0x1

    .line 84
    .line 85
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    aget v12, v3, v14

    .line 89
    .line 90
    aget v13, v3, v11

    .line 91
    .line 92
    aput v13, v3, v14

    .line 93
    .line 94
    aput v12, v3, v11

    .line 95
    .line 96
    aget-object v12, v7, v14

    .line 97
    .line 98
    aget-object v13, v7, v11

    .line 99
    .line 100
    aput-object v13, v7, v14

    .line 101
    .line 102
    aput-object v12, v7, v11

    .line 103
    .line 104
    add-int/lit8 v7, v14, -0x1

    .line 105
    .line 106
    aput v7, v4, v10

    .line 107
    .line 108
    aput v9, v4, v8

    .line 109
    .line 110
    add-int/lit8 v7, v6, 0x1

    .line 111
    .line 112
    aput v11, v4, v6

    .line 113
    .line 114
    add-int/lit8 v6, v6, 0x2

    .line 115
    .line 116
    add-int/lit8 v14, v14, 0x1

    .line 117
    .line 118
    aput v14, v4, v7

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    move v6, v10

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    move v4, v2

    .line 124
    move v6, v5

    .line 125
    :goto_2
    array-length v8, v3

    .line 126
    if-ge v4, v8, :cond_6

    .line 127
    .line 128
    aget v8, v3, v4

    .line 129
    .line 130
    add-int/lit8 v9, v4, -0x1

    .line 131
    .line 132
    aget v9, v3, v9

    .line 133
    .line 134
    if-eq v8, v9, :cond_5

    .line 135
    .line 136
    add-int/lit8 v6, v6, 0x1

    .line 137
    .line 138
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    if-nez v6, :cond_7

    .line 142
    .line 143
    move v6, v2

    .line 144
    :cond_7
    new-array v4, v6, [D

    .line 145
    .line 146
    new-array v8, v1, [I

    .line 147
    .line 148
    const/4 v9, 0x3

    .line 149
    aput v9, v8, v2

    .line 150
    .line 151
    aput v6, v8, v5

    .line 152
    .line 153
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 154
    .line 155
    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    check-cast v6, [[D

    .line 160
    .line 161
    move v8, v5

    .line 162
    move v9, v8

    .line 163
    :goto_3
    iget v10, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCount:I

    .line 164
    .line 165
    if-ge v8, v10, :cond_9

    .line 166
    .line 167
    if-lez v8, :cond_8

    .line 168
    .line 169
    aget v10, v3, v8

    .line 170
    .line 171
    add-int/lit8 v11, v8, -0x1

    .line 172
    .line 173
    aget v11, v3, v11

    .line 174
    .line 175
    if-ne v10, v11, :cond_8

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_8
    aget v10, v3, v8

    .line 179
    .line 180
    int-to-double v10, v10

    .line 181
    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    mul-double/2addr v10, v12

    .line 187
    aput-wide v10, v4, v9

    .line 188
    .line 189
    aget-object v10, v6, v9

    .line 190
    .line 191
    aget-object v11, v7, v8

    .line 192
    .line 193
    aget v12, v11, v5

    .line 194
    .line 195
    float-to-double v12, v12

    .line 196
    aput-wide v12, v10, v5

    .line 197
    .line 198
    aget v12, v11, v2

    .line 199
    .line 200
    float-to-double v12, v12

    .line 201
    aput-wide v12, v10, v2

    .line 202
    .line 203
    aget v11, v11, v1

    .line 204
    .line 205
    float-to-double v11, v11

    .line 206
    aput-wide v11, v10, v1

    .line 207
    .line 208
    add-int/lit8 v9, v9, 0x1

    .line 209
    .line 210
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_9
    move/from16 v8, p1

    .line 214
    .line 215
    invoke-static {v8, v4, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 220
    .line 221
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    .line 4
    .line 5
    const-string v2, "##.##"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCount:I

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "["

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mTimePoints:[I

    .line 29
    .line 30
    aget v0, v0, v2

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " , "

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mValues:[[F

    .line 41
    .line 42
    aget-object v0, v0, v2

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "] "

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-object v0
.end method
