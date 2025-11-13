.class public final Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field public final mClearsTag:I

.field public mDpositionDt:F

.field public final mHoldAt100:Z

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mLastRender:J

.field public final mMC:Landroidx/constraintlayout/motion/widget/MotionController;

.field public mPosition:F

.field public mReverse:Z

.field public final mSetsTag:I

.field public final mTempRec:Landroid/graphics/Rect;

.field public final mUpDuration:I

.field public final mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mHoldAt100:Z

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 24
    .line 25
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 26
    .line 27
    iput p4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 34
    .line 35
    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    new-instance p2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p2, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 45
    .line 46
    :cond_0
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iput-object p6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    .line 53
    iput p7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    .line 54
    .line 55
    iput p8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    .line 56
    .line 57
    const/4 p1, 0x3

    .line 58
    if-ne p5, p1, :cond_1

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mHoldAt100:Z

    .line 62
    .line 63
    :cond_1
    if-nez p3, :cond_2

    .line 64
    .line 65
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    .line 71
    int-to-float p2, p3

    .line 72
    div-float/2addr p1, p2

    .line 73
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final mutate()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 4
    .line 5
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    iget v10, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    .line 9
    .line 10
    iget v11, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    .line 11
    .line 12
    const/4 v12, -0x1

    .line 13
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-wide v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 25
    .line 26
    sub-long v6, v4, v6

    .line 27
    .line 28
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 29
    .line 30
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 31
    .line 32
    long-to-double v6, v6

    .line 33
    mul-double/2addr v6, v2

    .line 34
    double-to-float v2, v6

    .line 35
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 36
    .line 37
    mul-float/2addr v2, v3

    .line 38
    sub-float/2addr v0, v2

    .line 39
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 40
    .line 41
    const/4 v13, 0x0

    .line 42
    cmpg-float v0, v0, v13

    .line 43
    .line 44
    if-gez v0, :cond_0

    .line 45
    .line 46
    iput v13, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 53
    .line 54
    :goto_0
    move v3, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 57
    .line 58
    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_0

    .line 63
    :goto_1
    iget-object v6, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 64
    .line 65
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 66
    .line 67
    move-object v2, v8

    .line 68
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 73
    .line 74
    cmpg-float v2, v2, v13

    .line 75
    .line 76
    if-gtz v2, :cond_4

    .line 77
    .line 78
    if-eq v11, v12, :cond_2

    .line 79
    .line 80
    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v11, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    if-eq v10, v12, :cond_3

    .line 94
    .line 95
    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v2, v10, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRemoveList:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_4
    iget p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 106
    .line 107
    cmpl-float p0, p0, v13

    .line 108
    .line 109
    if-gtz p0, :cond_5

    .line 110
    .line 111
    if-eqz v0, :cond_d

    .line 112
    .line 113
    :cond_5
    iget-object p0, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    iget-wide v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 124
    .line 125
    sub-long v6, v4, v6

    .line 126
    .line 127
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 128
    .line 129
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 130
    .line 131
    long-to-double v6, v6

    .line 132
    mul-double/2addr v6, v2

    .line 133
    double-to-float v2, v6

    .line 134
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 135
    .line 136
    mul-float/2addr v2, v3

    .line 137
    add-float/2addr v2, v0

    .line 138
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 139
    .line 140
    const/high16 v0, 0x3f800000    # 1.0f

    .line 141
    .line 142
    cmpl-float v2, v2, v0

    .line 143
    .line 144
    if-ltz v2, :cond_7

    .line 145
    .line 146
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 147
    .line 148
    :cond_7
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    .line 150
    if-nez v2, :cond_8

    .line 151
    .line 152
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 153
    .line 154
    :goto_2
    move v3, v2

    .line 155
    goto :goto_3

    .line 156
    :cond_8
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 157
    .line 158
    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    goto :goto_2

    .line 163
    :goto_3
    iget-object v6, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 164
    .line 165
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 166
    .line 167
    move-object v2, v8

    .line 168
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 173
    .line 174
    cmpl-float v3, v3, v0

    .line 175
    .line 176
    if-ltz v3, :cond_b

    .line 177
    .line 178
    if-eq v11, v12, :cond_9

    .line 179
    .line 180
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 181
    .line 182
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 183
    .line 184
    .line 185
    move-result-wide v4

    .line 186
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v3, v11, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    if-eq v10, v12, :cond_a

    .line 194
    .line 195
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 196
    .line 197
    invoke-virtual {v3, v10, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_a
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mHoldAt100:Z

    .line 201
    .line 202
    if-nez v3, :cond_b

    .line 203
    .line 204
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRemoveList:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :cond_b
    iget p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 210
    .line 211
    cmpg-float p0, p0, v0

    .line 212
    .line 213
    if-ltz p0, :cond_c

    .line 214
    .line 215
    if-eqz v2, :cond_d

    .line 216
    .line 217
    :cond_c
    iget-object p0, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 220
    .line 221
    .line 222
    :cond_d
    :goto_4
    return-void
.end method

.method public final reverse()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 3
    .line 4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    int-to-float v0, v0

    .line 18
    div-float v0, v1, v0

    .line 19
    .line 20
    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 34
    .line 35
    return-void
.end method
