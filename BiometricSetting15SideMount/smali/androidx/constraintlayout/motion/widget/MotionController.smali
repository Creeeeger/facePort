.class public final Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

.field public mAttributeInterpolatorCount:[I

.field public mAttributeNames:[Ljava/lang/String;

.field public mAttributesMap:Ljava/util/HashMap;

.field public mCurveFitType:I

.field public mCycleMap:Ljava/util/HashMap;

.field public final mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public final mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public mForceMeasure:Z

.field public final mId:I

.field public mInterpolateData:[D

.field public mInterpolateVariables:[I

.field public mInterpolateVelocity:[D

.field public final mKeyList:Ljava/util/ArrayList;

.field public mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field public final mMotionPaths:Ljava/util/ArrayList;

.field public mMotionStagger:F

.field public mNoMovement:Z

.field public mPathMotionArc:I

.field public mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

.field public mQuantizeMotionPhase:F

.field public mQuantizeMotionSteps:I

.field public mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public mStaggerOffset:F

.field public mStaggerScale:F

.field public final mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public final mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTimeCycleAttributesMap:Ljava/util/HashMap;

.field public mTransformPivotTarget:I

.field public mTransformPivotView:Landroid/view/View;

.field public final mValuesBuff:[F

.field public final mVelocity:[F

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 16
    .line 17
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 18
    .line 19
    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 23
    .line 24
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 25
    .line 26
    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 30
    .line 31
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 32
    .line 33
    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 37
    .line 38
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 39
    .line 40
    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 44
    .line 45
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 46
    .line 47
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 51
    .line 52
    const/high16 v3, 0x3f800000    # 1.0f

    .line 53
    .line 54
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 55
    .line 56
    const/4 v3, 0x4

    .line 57
    new-array v3, v3, [F

    .line 58
    .line 59
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 60
    .line 61
    new-instance v3, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    new-array v3, v3, [F

    .line 70
    .line 71
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 72
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 79
    .line 80
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 81
    .line 82
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 86
    .line 87
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 88
    .line 89
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 90
    .line 91
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 94
    .line 95
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 108
    .line 109
    if-eqz p1, :cond_0

    .line 110
    .line 111
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    :cond_0
    return-void
.end method

.method public static rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p2, v0, :cond_3

    .line 4
    .line 5
    if-eq p2, v1, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_1

    .line 9
    .line 10
    const/4 p4, 0x4

    .line 11
    if-eq p2, p4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget p4, p0, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    add-int/2addr p2, p4

    .line 20
    iget p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    add-int/2addr p4, v0

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/2addr v0, p4

    .line 30
    div-int/2addr v0, v1

    .line 31
    sub-int/2addr p3, v0

    .line 32
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    sub-int/2addr p2, p3

    .line 39
    div-int/2addr p2, v1

    .line 40
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    add-int/2addr p3, p2

    .line 49
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 50
    .line 51
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    add-int/2addr p0, p2

    .line 58
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    iget p3, p0, Landroid/graphics/Rect;->right:I

    .line 65
    .line 66
    add-int/2addr p2, p3

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    div-int/2addr p3, v1

    .line 72
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    add-int/2addr p3, v0

    .line 75
    div-int/lit8 v0, p2, 0x2

    .line 76
    .line 77
    sub-int/2addr p3, v0

    .line 78
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    add-int/2addr p3, p2

    .line 85
    div-int/2addr p3, v1

    .line 86
    sub-int/2addr p4, p3

    .line 87
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 88
    .line 89
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    add-int/2addr p3, p2

    .line 96
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    add-int/2addr p0, p2

    .line 105
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 109
    .line 110
    iget p4, p0, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    add-int/2addr p2, p4

    .line 113
    iget p4, p0, Landroid/graphics/Rect;->top:I

    .line 114
    .line 115
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 116
    .line 117
    add-int/2addr p4, v0

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v0, p4

    .line 123
    div-int/2addr v0, v1

    .line 124
    sub-int/2addr p3, v0

    .line 125
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    sub-int/2addr p2, p3

    .line 132
    div-int/2addr p2, v1

    .line 133
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    add-int/2addr p3, p2

    .line 142
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 143
    .line 144
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    add-int/2addr p0, p2

    .line 151
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 155
    .line 156
    iget p3, p0, Landroid/graphics/Rect;->right:I

    .line 157
    .line 158
    add-int/2addr p2, p3

    .line 159
    iget p3, p0, Landroid/graphics/Rect;->top:I

    .line 160
    .line 161
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 162
    .line 163
    add-int/2addr p3, v0

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    sub-int/2addr p3, v0

    .line 169
    div-int/2addr p3, v1

    .line 170
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    add-int/2addr p3, p2

    .line 177
    div-int/2addr p3, v1

    .line 178
    sub-int/2addr p4, p3

    .line 179
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 180
    .line 181
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 184
    .line 185
    .line 186
    move-result p3

    .line 187
    add-int/2addr p3, p2

    .line 188
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 189
    .line 190
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    add-int/2addr p0, p2

    .line 197
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 198
    .line 199
    :goto_0
    return-void
.end method


# virtual methods
.method public final addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAdjustedPosition(F[F)F
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    aput v2, p2, v1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 11
    .line 12
    float-to-double v4, v3

    .line 13
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 14
    .line 15
    cmpl-double v4, v4, v6

    .line 16
    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 20
    .line 21
    cmpg-float v5, p1, v4

    .line 22
    .line 23
    if-gez v5, :cond_1

    .line 24
    .line 25
    move p1, v0

    .line 26
    :cond_1
    cmpl-float v5, p1, v4

    .line 27
    .line 28
    if-lez v5, :cond_2

    .line 29
    .line 30
    float-to-double v8, p1

    .line 31
    cmpg-double v5, v8, v6

    .line 32
    .line 33
    if-gez v5, :cond_2

    .line 34
    .line 35
    sub-float/2addr p1, v4

    .line 36
    mul-float/2addr p1, v3

    .line 37
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 42
    .line 43
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 52
    .line 53
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_5

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 64
    .line 65
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 70
    .line 71
    cmpg-float v8, v7, p1

    .line 72
    .line 73
    if-gez v8, :cond_4

    .line 74
    .line 75
    move-object v3, v6

    .line 76
    move v0, v7

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    if-eqz v3, :cond_8

    .line 88
    .line 89
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    move v2, v4

    .line 97
    :goto_2
    sub-float/2addr p1, v0

    .line 98
    sub-float/2addr v2, v0

    .line 99
    div-float/2addr p1, v2

    .line 100
    float-to-double p0, p1

    .line 101
    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    double-to-float v4, v4

    .line 106
    mul-float/2addr v4, v2

    .line 107
    add-float/2addr v0, v4

    .line 108
    if-eqz p2, :cond_7

    .line 109
    .line 110
    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    .line 111
    .line 112
    .line 113
    move-result-wide p0

    .line 114
    double-to-float p0, p0

    .line 115
    aput p0, p2, v1

    .line 116
    .line 117
    :cond_7
    move p1, v0

    .line 118
    :cond_8
    return p1
.end method

.method public final getCenter(D[F[F)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    new-array v5, v4, [D

    .line 9
    .line 10
    new-array v6, v4, [D

    .line 11
    .line 12
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    aget-object v7, v7, v8

    .line 16
    .line 17
    invoke-virtual {v7, v1, v2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 18
    .line 19
    .line 20
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 21
    .line 22
    aget-object v7, v7, v8

    .line 23
    .line 24
    invoke-virtual {v7, v1, v2, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 29
    .line 30
    .line 31
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 34
    .line 35
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 36
    .line 37
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 38
    .line 39
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 40
    .line 41
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 42
    .line 43
    move v15, v7

    .line 44
    move/from16 v16, v15

    .line 45
    .line 46
    move/from16 v17, v16

    .line 47
    .line 48
    move v14, v8

    .line 49
    :goto_0
    array-length v8, v9

    .line 50
    if-ge v14, v8, :cond_4

    .line 51
    .line 52
    move v8, v12

    .line 53
    move/from16 v18, v13

    .line 54
    .line 55
    aget-wide v12, v5, v14

    .line 56
    .line 57
    double-to-float v12, v12

    .line 58
    move-object v13, v5

    .line 59
    aget-wide v4, v6, v14

    .line 60
    .line 61
    double-to-float v4, v4

    .line 62
    aget v5, v9, v14

    .line 63
    .line 64
    move/from16 v20, v4

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    if-eq v5, v4, :cond_3

    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    if-eq v5, v4, :cond_2

    .line 71
    .line 72
    const/4 v4, 0x3

    .line 73
    if-eq v5, v4, :cond_1

    .line 74
    .line 75
    const/4 v4, 0x4

    .line 76
    if-eq v5, v4, :cond_0

    .line 77
    .line 78
    :goto_1
    move v12, v8

    .line 79
    goto :goto_2

    .line 80
    :cond_0
    move/from16 v18, v12

    .line 81
    .line 82
    move/from16 v17, v20

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const/4 v4, 0x4

    .line 86
    move/from16 v16, v20

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    const/4 v4, 0x4

    .line 90
    move v11, v12

    .line 91
    move/from16 v7, v20

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 v4, 0x4

    .line 95
    move v10, v12

    .line 96
    move/from16 v15, v20

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 100
    .line 101
    move-object v5, v13

    .line 102
    move/from16 v13, v18

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move v8, v12

    .line 106
    move/from16 v18, v13

    .line 107
    .line 108
    const/high16 v4, 0x40000000    # 2.0f

    .line 109
    .line 110
    div-float v16, v16, v4

    .line 111
    .line 112
    add-float v16, v16, v15

    .line 113
    .line 114
    div-float v17, v17, v4

    .line 115
    .line 116
    add-float v17, v17, v7

    .line 117
    .line 118
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    const/4 v5, 0x2

    .line 123
    new-array v6, v5, [F

    .line 124
    .line 125
    new-array v5, v5, [F

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2, v6, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    aget v1, v6, v0

    .line 132
    .line 133
    const/4 v2, 0x1

    .line 134
    aget v6, v6, v2

    .line 135
    .line 136
    aget v9, v5, v0

    .line 137
    .line 138
    aget v0, v5, v2

    .line 139
    .line 140
    float-to-double v1, v1

    .line 141
    float-to-double v12, v10

    .line 142
    float-to-double v10, v11

    .line 143
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v19

    .line 147
    mul-double v19, v19, v12

    .line 148
    .line 149
    add-double v19, v19, v1

    .line 150
    .line 151
    div-float v1, v8, v4

    .line 152
    .line 153
    float-to-double v1, v1

    .line 154
    sub-double v1, v19, v1

    .line 155
    .line 156
    double-to-float v1, v1

    .line 157
    float-to-double v5, v6

    .line 158
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v19

    .line 162
    mul-double v19, v19, v12

    .line 163
    .line 164
    sub-double v5, v5, v19

    .line 165
    .line 166
    div-float v13, v18, v4

    .line 167
    .line 168
    float-to-double v12, v13

    .line 169
    sub-double/2addr v5, v12

    .line 170
    double-to-float v2, v5

    .line 171
    float-to-double v5, v9

    .line 172
    float-to-double v12, v15

    .line 173
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 174
    .line 175
    .line 176
    move-result-wide v14

    .line 177
    mul-double/2addr v14, v12

    .line 178
    add-double/2addr v14, v5

    .line 179
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    move v9, v1

    .line 184
    move/from16 v16, v2

    .line 185
    .line 186
    float-to-double v1, v7

    .line 187
    mul-double/2addr v5, v1

    .line 188
    add-double/2addr v5, v14

    .line 189
    double-to-float v5, v5

    .line 190
    float-to-double v6, v0

    .line 191
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 192
    .line 193
    .line 194
    move-result-wide v14

    .line 195
    mul-double/2addr v14, v12

    .line 196
    sub-double/2addr v6, v14

    .line 197
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 198
    .line 199
    .line 200
    move-result-wide v10

    .line 201
    mul-double/2addr v10, v1

    .line 202
    add-double/2addr v10, v6

    .line 203
    double-to-float v0, v10

    .line 204
    move/from16 v17, v0

    .line 205
    .line 206
    move v10, v9

    .line 207
    move/from16 v11, v16

    .line 208
    .line 209
    move/from16 v16, v5

    .line 210
    .line 211
    :cond_5
    div-float v12, v8, v4

    .line 212
    .line 213
    add-float/2addr v12, v10

    .line 214
    const/4 v0, 0x0

    .line 215
    add-float/2addr v12, v0

    .line 216
    const/4 v1, 0x0

    .line 217
    aput v12, p3, v1

    .line 218
    .line 219
    div-float v13, v18, v4

    .line 220
    .line 221
    add-float/2addr v13, v11

    .line 222
    add-float/2addr v13, v0

    .line 223
    const/4 v0, 0x1

    .line 224
    aput v13, p3, v0

    .line 225
    .line 226
    aput v16, v3, v1

    .line 227
    .line 228
    aput v17, v3, v0

    .line 229
    .line 230
    return-void
.end method

.method public final getDpDt(FFF[F)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    aget-object v1, v1, v2

    .line 13
    .line 14
    float-to-double v3, p1

    .line 15
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 16
    .line 17
    invoke-virtual {v1, v3, v4, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 21
    .line 22
    aget-object p1, p1, v2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 25
    .line 26
    invoke-virtual {p1, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 27
    .line 28
    .line 29
    aget p1, v0, v2

    .line 30
    .line 31
    :goto_0
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 32
    .line 33
    array-length v0, v9

    .line 34
    if-ge v2, v0, :cond_0

    .line 35
    .line 36
    aget-wide v0, v9, v2

    .line 37
    .line 38
    float-to-double v5, p1

    .line 39
    mul-double/2addr v0, v5

    .line 40
    aput-wide v0, v9, v2

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 50
    .line 51
    array-length v1, v0

    .line 52
    if-lez v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, v3, v4, v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 60
    .line 61
    invoke-virtual {p1, v3, v4, v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    .line 62
    .line 63
    .line 64
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 65
    .line 66
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 67
    .line 68
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 69
    .line 70
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move v5, p2

    .line 76
    move v6, p3

    .line 77
    move-object v7, p4

    .line 78
    invoke-static/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void

    .line 82
    :cond_2
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 83
    .line 84
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 85
    .line 86
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move v5, p2

    .line 92
    move v6, p3

    .line 93
    move-object v7, p4

    .line 94
    invoke-static/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 99
    .line 100
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 101
    .line 102
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 103
    .line 104
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 105
    .line 106
    sub-float/2addr v0, v1

    .line 107
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 108
    .line 109
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 110
    .line 111
    sub-float/2addr v1, v3

    .line 112
    iget v3, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 113
    .line 114
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 115
    .line 116
    sub-float/2addr v3, v4

    .line 117
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 118
    .line 119
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 120
    .line 121
    sub-float/2addr p1, p0

    .line 122
    add-float/2addr v3, v0

    .line 123
    add-float/2addr p1, v1

    .line 124
    const/high16 p0, 0x3f800000    # 1.0f

    .line 125
    .line 126
    sub-float v4, p0, p2

    .line 127
    .line 128
    mul-float/2addr v4, v0

    .line 129
    mul-float/2addr v3, p2

    .line 130
    add-float/2addr v3, v4

    .line 131
    aput v3, p4, v2

    .line 132
    .line 133
    sub-float/2addr p0, p3

    .line 134
    mul-float/2addr p0, v1

    .line 135
    mul-float/2addr p1, p3

    .line 136
    add-float/2addr p1, p0

    .line 137
    const/4 p0, 0x1

    .line 138
    aput p1, p4, p0

    .line 139
    .line 140
    return-void
.end method

.method public final getPreCycleDistance()F
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    const/16 v2, 0x63

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    const/high16 v9, 0x3f800000    # 1.0f

    .line 10
    .line 11
    div-float v10, v9, v2

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    move-wide v13, v2

    .line 16
    move-wide v15, v13

    .line 17
    const/4 v8, 0x0

    .line 18
    const/16 v17, 0x0

    .line 19
    .line 20
    :goto_0
    const/16 v2, 0x64

    .line 21
    .line 22
    if-ge v8, v2, :cond_6

    .line 23
    .line 24
    int-to-float v2, v8

    .line 25
    mul-float/2addr v2, v10

    .line 26
    float-to-double v3, v2

    .line 27
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 28
    .line 29
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 30
    .line 31
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const/high16 v7, 0x7fc00000    # Float.NaN

    .line 38
    .line 39
    const/16 v18, 0x0

    .line 40
    .line 41
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v19

    .line 45
    if-eqz v19, :cond_2

    .line 46
    .line 47
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v19

    .line 51
    move-object/from16 v9, v19

    .line 52
    .line 53
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 54
    .line 55
    iget-object v11, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 56
    .line 57
    if-eqz v11, :cond_1

    .line 58
    .line 59
    iget v12, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 60
    .line 61
    cmpg-float v20, v12, v2

    .line 62
    .line 63
    if-gez v20, :cond_0

    .line 64
    .line 65
    move-object v5, v11

    .line 66
    move/from16 v18, v12

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_0
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    if-eqz v11, :cond_1

    .line 74
    .line 75
    iget v7, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 76
    .line 77
    :cond_1
    :goto_2
    const/high16 v9, 0x3f800000    # 1.0f

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    if-eqz v5, :cond_4

    .line 81
    .line 82
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    const/high16 v7, 0x3f800000    # 1.0f

    .line 89
    .line 90
    :cond_3
    sub-float v2, v2, v18

    .line 91
    .line 92
    sub-float v7, v7, v18

    .line 93
    .line 94
    div-float/2addr v2, v7

    .line 95
    float-to-double v2, v2

    .line 96
    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    double-to-float v2, v2

    .line 101
    mul-float/2addr v2, v7

    .line 102
    add-float v2, v2, v18

    .line 103
    .line 104
    float-to-double v2, v2

    .line 105
    move-wide v3, v2

    .line 106
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    aget-object v2, v2, v5

    .line 110
    .line 111
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 112
    .line 113
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 114
    .line 115
    .line 116
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 117
    .line 118
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 122
    .line 123
    move-object v7, v1

    .line 124
    move v12, v8

    .line 125
    move v8, v9

    .line 126
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 127
    .line 128
    .line 129
    const/4 v2, 0x1

    .line 130
    if-lez v12, :cond_5

    .line 131
    .line 132
    aget v3, v1, v2

    .line 133
    .line 134
    float-to-double v3, v3

    .line 135
    sub-double v3, v15, v3

    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    aget v6, v1, v5

    .line 139
    .line 140
    float-to-double v6, v6

    .line 141
    sub-double/2addr v13, v6

    .line 142
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    double-to-float v3, v3

    .line 147
    add-float v17, v17, v3

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    const/4 v5, 0x0

    .line 151
    :goto_3
    aget v3, v1, v5

    .line 152
    .line 153
    float-to-double v13, v3

    .line 154
    aget v2, v1, v2

    .line 155
    .line 156
    float-to-double v2, v2

    .line 157
    add-int/lit8 v8, v12, 0x1

    .line 158
    .line 159
    move-wide v15, v2

    .line 160
    const/high16 v9, 0x3f800000    # 1.0f

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_6
    return v17
.end method

.method public final interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 1
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v2

    .line 2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    if-eq v3, v10, :cond_3

    int-to-float v3, v3

    div-float v3, v9, v3

    div-float v4, v2, v3

    float-to-double v4, v4

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    .line 4
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    add-float/2addr v2, v5

    rem-float/2addr v2, v9

    .line 6
    :cond_0
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v5, :cond_1

    .line 7
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_1
    float-to-double v5, v2

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v5, v11

    if-lez v2, :cond_2

    move v2, v9

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    :cond_3
    move v11, v2

    .line 8
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 10
    invoke-virtual {v3, v7, v11}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setProperty(Landroid/view/View;F)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    const/4 v12, 0x0

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v14, v1

    move v15, v12

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 13
    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    if-eqz v2, :cond_5

    .line 14
    move-object v14, v1

    check-cast v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    goto :goto_2

    :cond_5
    move v2, v11

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 15
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setProperty(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v1

    or-int/2addr v15, v1

    goto :goto_2

    :cond_6
    move-object v14, v1

    move v15, v12

    .line 16
    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    if-eqz v1, :cond_26

    .line 17
    aget-object v1, v1, v12

    float-to-double v4, v11

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v4, v5, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 18
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v12

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v4, v5, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 19
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    if-eqz v1, :cond_8

    .line 20
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v10, v9

    if-lez v10, :cond_8

    .line 21
    invoke-virtual {v1, v4, v5, v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    .line 22
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v4, v5, v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    .line 23
    :cond_8
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    if-nez v1, :cond_1c

    .line 24
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 25
    iget v8, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 26
    iget v9, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 27
    iget v12, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 28
    iget v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    move/from16 v17, v6

    .line 29
    array-length v6, v1

    if-eqz v6, :cond_9

    iget-object v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v6, v6

    move/from16 v18, v8

    array-length v8, v1

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    aget v8, v1, v8

    if-gt v6, v8, :cond_a

    .line 30
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget v6, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 31
    new-array v8, v6, [D

    iput-object v8, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 32
    new-array v6, v6, [D

    iput-object v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    goto :goto_3

    :cond_9
    move/from16 v18, v8

    .line 33
    :cond_a
    :goto_3
    iget-object v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    move/from16 v19, v9

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v6, v8, v9}, Ljava/util/Arrays;->fill([DD)V

    const/4 v6, 0x0

    .line 34
    :goto_4
    array-length v8, v1

    if-ge v6, v8, :cond_b

    .line 35
    iget-object v8, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget v9, v1, v6

    aget-wide v20, v10, v6

    aput-wide v20, v8, v9

    .line 36
    iget-object v8, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget-wide v20, v2, v6

    aput-wide v20, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    const/high16 v1, 0x7fc00000    # Float.NaN

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v6, v17

    move/from16 v8, v18

    move/from16 v9, v19

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    .line 37
    :goto_5
    iget-object v11, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v0, v11

    move/from16 v22, v3

    if-ge v14, v0, :cond_13

    .line 38
    aget-wide v23, v11, v14

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_c

    move-wide/from16 v25, v4

    goto :goto_8

    .line 39
    :cond_c
    iget-object v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v23, v0, v14

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v23, 0x0

    if-eqz v0, :cond_d

    :goto_6
    move-wide/from16 v25, v4

    move-wide/from16 v3, v23

    goto :goto_7

    .line 40
    :cond_d
    iget-object v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v25, v0, v14

    add-double v23, v25, v23

    goto :goto_6

    :goto_7
    double-to-float v3, v3

    .line 41
    iget-object v4, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget-wide v4, v4, v14

    double-to-float v4, v4

    const/4 v5, 0x1

    if-eq v14, v5, :cond_12

    const/4 v0, 0x2

    if-eq v14, v0, :cond_11

    const/4 v0, 0x3

    if-eq v14, v0, :cond_10

    const/4 v0, 0x4

    if-eq v14, v0, :cond_f

    const/4 v0, 0x5

    if-eq v14, v0, :cond_e

    goto :goto_8

    :cond_e
    move v1, v3

    goto :goto_8

    :cond_f
    move v6, v3

    move/from16 v19, v4

    goto :goto_8

    :cond_10
    move v12, v3

    move/from16 v18, v4

    goto :goto_8

    :cond_11
    move v9, v3

    move v15, v4

    goto :goto_8

    :cond_12
    move v8, v3

    move v10, v4

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v22

    move-wide/from16 v4, v25

    goto :goto_5

    :cond_13
    move-wide/from16 v25, v4

    .line 42
    iget-object v3, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v3, :cond_16

    const/4 v0, 0x2

    .line 43
    new-array v4, v0, [F

    .line 44
    new-array v5, v0, [F

    move v11, v1

    move-wide/from16 v0, v25

    .line 45
    invoke-virtual {v3, v0, v1, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    const/4 v3, 0x0

    .line 46
    aget v14, v4, v3

    const/16 v16, 0x1

    .line 47
    aget v4, v4, v16

    .line 48
    aget v0, v5, v3

    .line 49
    aget v1, v5, v16

    move-object/from16 v23, v13

    float-to-double v13, v14

    float-to-double v7, v8

    move-object v5, v2

    float-to-double v2, v9

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v7

    add-double v27, v27, v13

    const/high16 v9, 0x40000000    # 2.0f

    div-float v13, v12, v9

    float-to-double v13, v13

    sub-double v13, v27, v13

    double-to-float v13, v13

    move v14, v10

    float-to-double v9, v4

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v27, v27, v7

    sub-double v9, v9, v27

    move/from16 v19, v13

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v6, v4

    move v4, v14

    float-to-double v13, v13

    sub-double/2addr v9, v13

    double-to-float v9, v9

    float-to-double v13, v0

    move v10, v4

    move v0, v9

    float-to-double v9, v10

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v9

    add-double v27, v27, v13

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    move/from16 v24, v11

    move v4, v12

    float-to-double v11, v15

    mul-double/2addr v13, v11

    add-double v13, v13, v27

    double-to-float v13, v13

    float-to-double v14, v1

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v27, v27, v9

    sub-double v14, v14, v27

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    mul-double/2addr v1, v11

    add-double/2addr v1, v14

    double-to-float v1, v1

    .line 56
    array-length v2, v5

    const/4 v3, 0x2

    if-lt v2, v3, :cond_14

    float-to-double v2, v13

    const/4 v7, 0x0

    .line 57
    aput-wide v2, v5, v7

    float-to-double v2, v1

    const/4 v7, 0x1

    .line 58
    aput-wide v2, v5, v7

    .line 59
    :cond_14
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_15

    move/from16 v2, v24

    float-to-double v2, v2

    float-to-double v7, v1

    float-to-double v9, v13

    .line 60
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    add-double/2addr v7, v2

    double-to-float v1, v7

    move-object/from16 v7, p4

    .line 61
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_9

    :cond_15
    move-object/from16 v7, p4

    :goto_9
    move v9, v0

    move/from16 v8, v19

    goto :goto_a

    :cond_16
    move v2, v1

    move v4, v12

    move-object/from16 v23, v13

    .line 62
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_17

    const/high16 v0, 0x40000000    # 2.0f

    div-float v18, v18, v0

    add-float v1, v18, v10

    div-float v19, v19, v0

    add-float v0, v19, v15

    float-to-double v10, v0

    float-to-double v0, v1

    .line 63
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float v1, v2, v0

    const/4 v0, 0x0

    add-float/2addr v1, v0

    .line 64
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 65
    :cond_17
    :goto_a
    instance-of v0, v7, Landroidx/constraintlayout/motion/widget/FloatLayout;

    if-eqz v0, :cond_18

    add-float v12, v8, v4

    add-float/2addr v6, v9

    .line 66
    move-object v0, v7

    check-cast v0, Landroidx/constraintlayout/motion/widget/FloatLayout;

    check-cast v0, Landroidx/constraintlayout/utils/widget/MotionLabel;

    invoke-virtual {v0, v8, v9, v12, v6}, Landroidx/constraintlayout/utils/widget/MotionLabel;->layout(FFFF)V

    :goto_b
    move-object/from16 v0, p0

    const/4 v1, 0x0

    goto :goto_d

    :cond_18
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v8, v0

    float-to-int v1, v8

    add-float/2addr v9, v0

    float-to-int v0, v9

    add-float/2addr v8, v4

    float-to-int v2, v8

    add-float/2addr v9, v6

    float-to-int v3, v9

    sub-int v4, v2, v1

    sub-int v5, v3, v0

    .line 67
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ne v4, v6, :cond_1a

    .line 68
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-eq v5, v6, :cond_19

    goto :goto_c

    :cond_19
    if-eqz v22, :cond_1b

    :cond_1a
    :goto_c
    const/high16 v6, 0x40000000    # 2.0f

    .line 69
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 70
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 71
    invoke-virtual {v7, v4, v5}, Landroid/view/View;->measure(II)V

    .line 72
    :cond_1b
    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    .line 73
    :goto_d
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    goto :goto_e

    :cond_1c
    move-wide/from16 v25, v4

    move/from16 v21, v11

    move-object/from16 v23, v13

    move-object/from16 v20, v14

    move/from16 v17, v15

    .line 74
    :goto_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 75
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    if-nez v1, :cond_1d

    .line 76
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 77
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 78
    :cond_1d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    if-eqz v1, :cond_1e

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 81
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 82
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v3, v2

    .line 83
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_1e

    .line 84
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_1e

    .line 85
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    .line 86
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 87
    invoke-virtual {v7, v3}, Landroid/view/View;->setPivotX(F)V

    .line 88
    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotY(F)V

    .line 89
    :cond_1e
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_20

    .line 90
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 91
    instance-of v3, v2, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    if-eqz v3, :cond_1f

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1f

    .line 92
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    const/4 v4, 0x0

    aget-wide v8, v3, v4

    aget-wide v3, v3, v5

    move/from16 v10, v21

    .line 93
    invoke-virtual {v2, v10}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    move-result v2

    .line 94
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_10

    :cond_1f
    move/from16 v10, v21

    :goto_10
    move/from16 v21, v10

    goto :goto_f

    :cond_20
    move/from16 v10, v21

    if-eqz v20, :cond_21

    .line 95
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v2, 0x0

    aget-wide v8, v1, v2

    const/4 v6, 0x1

    aget-wide v11, v1, v6

    move-wide/from16 v3, v25

    move-object/from16 v1, v20

    move v2, v10

    move-wide v13, v3

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move v15, v6

    move-object/from16 v6, p5

    .line 96
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result v1

    .line 97
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    .line 98
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v1, v20

    .line 99
    iget-boolean v1, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    or-int v1, v17, v1

    goto :goto_11

    :cond_21
    move-wide/from16 v13, v25

    const/4 v15, 0x1

    move/from16 v1, v17

    :goto_11
    move v6, v15

    .line 100
    :goto_12
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    array-length v3, v2

    if-ge v6, v3, :cond_22

    .line 101
    aget-object v2, v2, v6

    .line 102
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v2, v13, v14, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    move-object/from16 v2, v23

    .line 103
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v8, v6, -0x1

    aget-object v5, v5, v8

    .line 104
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 105
    invoke-static {v4, v7, v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 106
    :cond_22
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v3, :cond_25

    const/4 v3, 0x0

    cmpg-float v3, v10, v3

    if-gtz v3, :cond_23

    .line 107
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_23
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v3

    .line 108
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    if-ltz v3, :cond_24

    .line 109
    iget v2, v4, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 110
    :cond_24
    iget v3, v4, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    if-eq v3, v2, :cond_25

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_25
    :goto_13
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    .line 113
    :goto_14
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v4, v3

    if-ge v2, v4, :cond_29

    .line 114
    aget-object v3, v3, v2

    invoke-virtual {v3, v7, v10}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(Landroid/view/View;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_26
    move v10, v11

    move-object v2, v13

    move/from16 v17, v15

    const/4 v15, 0x1

    .line 115
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v4, v1, v10, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    .line 116
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v5, v4, v10, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    .line 117
    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    invoke-static {v6, v5, v10, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v8

    .line 118
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    invoke-static {v3, v2, v10, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v9

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v1, v11

    float-to-int v12, v1

    add-float/2addr v4, v11

    float-to-int v11, v4

    add-float/2addr v1, v8

    float-to-int v1, v1

    add-float/2addr v4, v9

    float-to-int v4, v4

    sub-int v8, v1, v12

    sub-int v9, v4, v11

    cmpl-float v5, v6, v5

    if-nez v5, :cond_27

    cmpl-float v2, v3, v2

    if-nez v2, :cond_27

    .line 119
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    if-eqz v2, :cond_28

    :cond_27
    const/high16 v2, 0x40000000    # 2.0f

    .line 120
    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 121
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 122
    invoke-virtual {v7, v3, v2}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x0

    .line 123
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 124
    :cond_28
    invoke-virtual {v7, v12, v11, v1, v4}, Landroid/view/View;->layout(IIII)V

    move/from16 v1, v17

    .line 125
    :cond_29
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2b

    .line 126
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 127
    instance-of v4, v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    if-eqz v4, :cond_2a

    .line 128
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v5, 0x0

    aget-wide v8, v4, v5

    aget-wide v11, v4, v15

    .line 129
    invoke-virtual {v3, v10}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    move-result v3

    .line 130
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v4, v8

    add-float/2addr v3, v4

    invoke-virtual {v7, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_15

    :cond_2a
    const/4 v5, 0x0

    .line 131
    invoke-virtual {v3, v7, v10}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setProperty(Landroid/view/View;F)V

    goto :goto_15

    :cond_2b
    return v1
.end method

.method public final readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    int-to-float v0, v0

    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    int-to-float v1, v1

    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    int-to-float p0, p0

    .line 31
    invoke-virtual {p1, v0, v1, v2, p0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final setup(IIJ)V
    .locals 43

    move-object/from16 v0, p0

    .line 1
    const-string v1, "translationY"

    const-string v2, "translationX"

    const-string v3, "scaleY"

    const-string v4, "scaleX"

    const-string v5, "rotationY"

    const-string v6, "rotationX"

    const-string v7, "progress"

    const-string v8, "transitionPathRotate"

    const-string v9, "rotation"

    const-string v10, "elevation"

    const-string v11, "alpha"

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v18, v13

    .line 6
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    move-object/from16 v19, v12

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v20, v14

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 7
    iput v13, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 8
    :cond_0
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v14, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    move-object/from16 v21, v12

    .line 9
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v0, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    invoke-static {v14, v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v15, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    iget v14, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    invoke-static {v0, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v15, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    iget v14, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    move-object/from16 v22, v10

    if-eq v0, v14, :cond_4

    iget v10, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v10, :cond_4

    if-eqz v0, :cond_3

    if-nez v14, :cond_4

    .line 14
    :cond_3
    invoke-virtual {v15, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v15, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 18
    :cond_6
    invoke-virtual {v15, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_7
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 20
    :cond_8
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_9
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {v15, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_a
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_b
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    const-string v0, "transformPivotX"

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_c
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    const-string v0, "transformPivotY"

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_d
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    invoke-virtual {v15, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_e
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_f
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 34
    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_10
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    invoke-virtual {v15, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_11
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 38
    const-string v0, "translationZ"

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object/from16 v0, p0

    .line 39
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v23, v12

    if-eqz v10, :cond_3c

    .line 40
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/16 v24, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v12, v25

    check-cast v12, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v25, v10

    .line 41
    instance-of v10, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v10, :cond_36

    .line 42
    check-cast v12, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 43
    new-instance v10, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 44
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move-object/from16 v26, v13

    const/4 v13, 0x0

    .line 45
    iput v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 46
    iput v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v13, -0x1

    .line 47
    iput v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 48
    iput v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 49
    iput v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v13, 0x0

    .line 50
    iput-object v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 51
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    const/4 v13, 0x0

    .line 52
    iput v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v27, v6

    const/16 v13, 0x12

    .line 53
    new-array v6, v13, [D

    iput-object v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 54
    new-array v6, v13, [D

    iput-object v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    move-object/from16 v6, v21

    .line 55
    iget v13, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    const/high16 v21, 0x42c80000    # 100.0f

    move-object/from16 v28, v5

    const/4 v5, -0x1

    if-eq v13, v5, :cond_1a

    .line 56
    iget v5, v12, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v5, v5

    div-float v5, v5, v21

    .line 57
    iput v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 58
    iget v13, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 59
    iget v13, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    iput v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 60
    iget v13, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_13

    move-object/from16 v29, v2

    move v13, v5

    goto :goto_1

    :cond_13
    iget v13, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    move-object/from16 v29, v2

    .line 61
    :goto_1
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v30, v1

    move v2, v5

    goto :goto_2

    :cond_14
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    move-object/from16 v30, v1

    .line 62
    :goto_2
    iget v1, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    move-object/from16 v31, v7

    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v1, v7

    move-object/from16 v32, v4

    .line 63
    iget v4, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    move-object/from16 v33, v3

    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v4, v3

    move-object/from16 v34, v9

    .line 64
    iget v9, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v9, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    mul-float/2addr v1, v13

    add-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v1, v1

    .line 65
    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    float-to-int v1, v4

    int-to-float v1, v1

    .line 66
    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 67
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    .line 68
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v5

    goto :goto_3

    .line 69
    :cond_15
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_3
    iget v2, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v2, v3, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 70
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_4

    .line 71
    :cond_16
    iget v5, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_4
    iget v1, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v2, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v1, v2, v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    goto :goto_7

    .line 72
    :cond_17
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v2, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v1, v2, v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    goto :goto_5

    .line 73
    :cond_18
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v1, v2

    :goto_5
    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 74
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 75
    iget v1, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v2, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v1, v2, v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    goto :goto_6

    :cond_19
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_6
    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 76
    :goto_7
    iget v1, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 77
    iget-object v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 78
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    move-object/from16 v37, v8

    move-object/from16 v39, v11

    move-object v3, v12

    move-object/from16 v41, v15

    goto/16 :goto_1c

    :cond_1a
    move-object/from16 v30, v1

    move-object/from16 v29, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v7

    move-object/from16 v34, v9

    .line 79
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2a

    const/4 v4, 0x3

    if-eq v1, v4, :cond_21

    .line 80
    iget v1, v12, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v1, v1

    div-float v1, v1, v21

    .line 81
    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 82
    iget v4, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v4, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 83
    iget v4, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v1

    goto :goto_8

    :cond_1b
    iget v4, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 84
    :goto_8
    iget v5, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v1

    goto :goto_9

    :cond_1c
    iget v5, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 85
    :goto_9
    iget v7, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v9, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float v13, v7, v9

    .line 86
    iget v2, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float v21, v2, v3

    move-object/from16 v37, v8

    .line 87
    iget v8, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v8, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 88
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    const/high16 v36, 0x40000000    # 2.0f

    div-float v38, v9, v36

    add-float v38, v38, v8

    move-object/from16 v39, v11

    .line 89
    iget v11, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v40, v3, v36

    add-float v40, v40, v11

    move-object/from16 v41, v15

    .line 90
    iget v15, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float v7, v7, v36

    add-float/2addr v7, v15

    .line 91
    iget v15, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v2, v2, v36

    add-float/2addr v2, v15

    sub-float v7, v7, v38

    sub-float v2, v2, v40

    mul-float v15, v7, v1

    add-float/2addr v15, v8

    mul-float/2addr v13, v4

    div-float v4, v13, v36

    sub-float/2addr v15, v4

    float-to-int v8, v15

    int-to-float v8, v8

    .line 92
    iput v8, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v8, v2, v1

    add-float/2addr v8, v11

    mul-float v21, v21, v5

    div-float v5, v21, v36

    sub-float/2addr v8, v5

    float-to-int v8, v8

    int-to-float v8, v8

    .line 93
    iput v8, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v9, v13

    float-to-int v8, v9

    int-to-float v8, v8

    .line 94
    iput v8, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float v3, v3, v21

    float-to-int v3, v3

    int-to-float v3, v3

    .line 95
    iput v3, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 96
    iget v3, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v1

    goto :goto_a

    :cond_1d
    iget v3, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 97
    :goto_a
    iget v8, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v8, 0x0

    goto :goto_b

    :cond_1e
    iget v8, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 98
    :goto_b
    iget v9, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_c

    :cond_1f
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 99
    :goto_c
    iget v9, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x0

    const/16 v35, 0x0

    goto :goto_d

    :cond_20
    iget v9, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    move/from16 v35, v9

    const/4 v9, 0x0

    .line 100
    :goto_d
    iput v9, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 101
    iget v9, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v9

    mul-float v35, v35, v2

    add-float v35, v35, v3

    sub-float v3, v35, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 102
    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, v7

    sub-float/2addr v2, v5

    float-to-int v1, v2

    int-to-float v1, v1

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 103
    iget-object v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 104
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    :goto_e
    move-object v3, v12

    goto/16 :goto_1c

    :cond_21
    move-object/from16 v37, v8

    move-object/from16 v39, v11

    move-object/from16 v41, v15

    .line 105
    iget v1, v12, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v1, v1

    div-float v1, v1, v21

    .line 106
    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 107
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v2, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 108
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v1

    goto :goto_f

    :cond_22
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 109
    :goto_f
    iget v3, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v1

    goto :goto_10

    :cond_23
    iget v3, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 110
    :goto_10
    iget v4, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float v7, v4, v5

    .line 111
    iget v8, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v9, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float v11, v8, v9

    .line 112
    iget v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v13, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 113
    iget v13, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float v21, v5, v15

    add-float v21, v21, v13

    .line 114
    iget v0, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v36, v9, v15

    add-float v38, v36, v0

    move-object/from16 v40, v6

    .line 115
    iget v6, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float/2addr v4, v15

    add-float/2addr v4, v6

    .line 116
    iget v6, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float/2addr v8, v15

    add-float/2addr v8, v6

    cmpl-float v6, v21, v4

    if-lez v6, :cond_24

    move/from16 v42, v21

    move/from16 v21, v4

    move/from16 v4, v42

    :cond_24
    cmpl-float v6, v38, v8

    if-lez v6, :cond_25

    goto :goto_11

    :cond_25
    move/from16 v42, v38

    move/from16 v38, v8

    move/from16 v8, v42

    :goto_11
    sub-float v4, v4, v21

    sub-float v38, v38, v8

    mul-float v6, v4, v1

    add-float/2addr v6, v13

    mul-float/2addr v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v7, v2

    sub-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v6, v6

    .line 117
    iput v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v6, v38, v1

    add-float/2addr v6, v0

    mul-float/2addr v11, v3

    div-float v0, v11, v2

    sub-float/2addr v6, v0

    float-to-int v2, v6

    int-to-float v2, v2

    .line 118
    iput v2, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v5, v7

    float-to-int v2, v5

    int-to-float v2, v2

    .line 119
    iput v2, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v9, v11

    float-to-int v2, v9

    int-to-float v2, v2

    .line 120
    iput v2, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 121
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_26

    move v2, v1

    goto :goto_12

    :cond_26
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 122
    :goto_12
    iget v3, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x0

    goto :goto_13

    :cond_27
    iget v3, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 123
    :goto_13
    iget v5, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_14

    :cond_28
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 124
    :goto_14
    iget v5, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x0

    const/16 v35, 0x0

    goto :goto_15

    :cond_29
    iget v5, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    move/from16 v35, v5

    const/4 v5, 0x0

    .line 125
    :goto_15
    iput v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v5, v40

    .line 126
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v6

    mul-float v35, v35, v38

    add-float v35, v35, v2

    sub-float v2, v35, v8

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 127
    iget v2, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    mul-float v38, v38, v1

    add-float v38, v38, v4

    sub-float v0, v38, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 128
    iget-object v0, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    iput-object v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 129
    iget v0, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    move-object/from16 v0, p0

    move-object v6, v5

    goto/16 :goto_e

    :cond_2a
    move-object v5, v6

    move-object/from16 v37, v8

    move-object/from16 v39, v11

    move-object/from16 v41, v15

    .line 130
    iget v0, v12, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v0, v0

    div-float v0, v0, v21

    .line 131
    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 132
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 133
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v0

    goto :goto_16

    :cond_2b
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 134
    :goto_16
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2c

    move v2, v0

    goto :goto_17

    :cond_2c
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 135
    :goto_17
    iget v3, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float v6, v3, v4

    .line 136
    iget v7, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float v9, v7, v8

    .line 137
    iget v11, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v11, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 138
    iget v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v15, v4, v13

    add-float/2addr v15, v11

    move-object/from16 v38, v12

    .line 139
    iget v12, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v21, v8, v13

    add-float v21, v21, v12

    move-object/from16 v40, v5

    .line 140
    iget v5, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float/2addr v3, v13

    add-float/2addr v3, v5

    .line 141
    iget v5, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float/2addr v7, v13

    add-float/2addr v7, v5

    sub-float/2addr v3, v15

    sub-float v7, v7, v21

    mul-float/2addr v3, v0

    add-float/2addr v3, v11

    mul-float/2addr v6, v1

    div-float v1, v6, v13

    sub-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    .line 142
    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v7, v0

    add-float/2addr v7, v12

    mul-float/2addr v9, v2

    div-float v0, v9, v13

    sub-float/2addr v7, v0

    float-to-int v0, v7

    int-to-float v0, v0

    .line 143
    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v4, v6

    float-to-int v0, v4

    int-to-float v0, v0

    .line 144
    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v8, v9

    float-to-int v0, v8

    int-to-float v0, v0

    .line 145
    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    const/4 v0, 0x2

    .line 146
    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v12, v38

    .line 147
    iget v0, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 148
    iget v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    .line 149
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 150
    :cond_2d
    iget v0, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 151
    iget v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    .line 152
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 153
    :cond_2e
    iget v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 154
    iget-object v0, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    iput-object v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 155
    iget v0, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    move-object/from16 v0, p0

    move-object v3, v12

    move-object/from16 v6, v40

    goto/16 :goto_1c

    :cond_2f
    move-object/from16 v40, v6

    move-object/from16 v37, v8

    move-object/from16 v39, v11

    move-object/from16 v41, v15

    .line 156
    iget v0, v12, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v0, v0

    div-float v0, v0, v21

    .line 157
    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 158
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 159
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_30

    move v1, v0

    goto :goto_18

    :cond_30
    iget v1, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 160
    :goto_18
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_31

    move v2, v0

    goto :goto_19

    :cond_31
    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 161
    :goto_19
    iget v3, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    move-object/from16 v4, v40

    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v3, v5

    .line 162
    iget v5, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v5, v6

    .line 163
    iget v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 164
    iget v6, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_1a

    :cond_32
    iget v0, v12, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 165
    :goto_1a
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v7, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v7, v8

    add-float/2addr v9, v6

    .line 166
    iget v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v13, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float v15, v13, v8

    add-float/2addr v15, v11

    move-object/from16 v21, v4

    .line 167
    iget v4, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    move-object/from16 v38, v12

    iget v12, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float/2addr v12, v8

    add-float/2addr v12, v4

    .line 168
    iget v4, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    move/from16 v36, v13

    iget v13, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr v13, v8

    add-float/2addr v13, v4

    sub-float/2addr v12, v9

    sub-float/2addr v13, v15

    mul-float v4, v12, v0

    add-float/2addr v6, v4

    mul-float/2addr v3, v1

    div-float v1, v3, v8

    sub-float/2addr v6, v1

    float-to-int v6, v6

    int-to-float v6, v6

    .line 169
    iput v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v0, v13

    add-float/2addr v11, v0

    mul-float/2addr v5, v2

    div-float v2, v5, v8

    sub-float/2addr v11, v2

    float-to-int v6, v11

    int-to-float v6, v6

    .line 170
    iput v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v3, v3

    .line 171
    iput v3, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float v3, v36, v5

    float-to-int v3, v3

    int-to-float v3, v3

    .line 172
    iput v3, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    move-object/from16 v3, v38

    .line 173
    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_33

    const/16 v35, 0x0

    goto :goto_1b

    :cond_33
    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    move/from16 v35, v5

    :goto_1b
    neg-float v5, v13

    mul-float v5, v5, v35

    mul-float v12, v12, v35

    const/4 v6, 0x1

    .line 174
    iput v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v6, v21

    .line 175
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    add-float/2addr v7, v4

    sub-float/2addr v7, v1

    float-to-int v1, v7

    int-to-float v1, v1

    .line 176
    iget v4, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v4, v0

    sub-float/2addr v4, v2

    float-to-int v0, v4

    int-to-float v0, v0

    add-float/2addr v1, v5

    .line 177
    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    add-float/2addr v0, v12

    .line 178
    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 179
    iget v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 180
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    iput-object v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 181
    iget v0, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    move-object/from16 v0, p0

    .line 182
    :goto_1c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-static {v1, v10}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_34

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " KeyPath position \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\" outside of range"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MotionController"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_34
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    neg-int v1, v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 185
    iget v1, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 186
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    :cond_35
    move-object/from16 v3, v18

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    goto :goto_1e

    :cond_36
    move-object/from16 v30, v1

    move-object/from16 v29, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v28, v5

    move-object/from16 v27, v6

    move-object/from16 v31, v7

    move-object/from16 v37, v8

    move-object/from16 v34, v9

    move-object/from16 v39, v11

    move-object/from16 v26, v13

    move-object/from16 v41, v15

    move-object/from16 v6, v21

    .line 187
    instance-of v1, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v1, :cond_37

    move-object/from16 v1, v20

    .line 188
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    goto :goto_1e

    :cond_37
    move-object/from16 v1, v20

    .line 189
    instance-of v2, v12, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v2, :cond_38

    move-object/from16 v2, v19

    .line 190
    invoke-virtual {v12, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_1d

    :cond_38
    move-object/from16 v2, v19

    .line 191
    instance-of v3, v12, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v3, :cond_3a

    if-nez v24, :cond_39

    .line 192
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    :cond_39
    move-object/from16 v3, v24

    .line 193
    check-cast v12, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v3

    :goto_1d
    move-object/from16 v3, v18

    :goto_1e
    move-object/from16 v4, v41

    goto :goto_1f

    :cond_3a
    move-object/from16 v3, v18

    .line 194
    invoke-virtual {v12, v3}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    move-object/from16 v4, v41

    .line 195
    invoke-virtual {v12, v4}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    :goto_1f
    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object v15, v4

    move-object/from16 v21, v6

    move-object/from16 v10, v25

    move-object/from16 v13, v26

    move-object/from16 v6, v27

    move-object/from16 v5, v28

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    move-object/from16 v7, v31

    move-object/from16 v4, v32

    move-object/from16 v3, v33

    move-object/from16 v9, v34

    move-object/from16 v8, v37

    move-object/from16 v11, v39

    goto/16 :goto_0

    :cond_3b
    move-object/from16 v30, v1

    move-object/from16 v29, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v28, v5

    move-object/from16 v27, v6

    move-object/from16 v31, v7

    move-object/from16 v37, v8

    move-object/from16 v34, v9

    move-object/from16 v39, v11

    move-object/from16 v26, v13

    move-object v4, v15

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    move-object/from16 v6, v21

    move-object/from16 v5, v24

    goto :goto_20

    :cond_3c
    move-object/from16 v30, v1

    move-object/from16 v29, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v28, v5

    move-object/from16 v27, v6

    move-object/from16 v31, v7

    move-object/from16 v37, v8

    move-object/from16 v34, v9

    move-object/from16 v39, v11

    move-object/from16 v26, v13

    move-object v4, v15

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    move-object/from16 v6, v21

    const/4 v5, 0x0

    :goto_20
    if-eqz v5, :cond_3d

    const/4 v7, 0x0

    .line 196
    new-array v8, v7, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 197
    :cond_3d
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    const-string v7, "CUSTOM,"

    const-string v8, ","

    if-nez v5, :cond_58

    .line 198
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 199
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 200
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 201
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 202
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    .line 203
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3e
    :goto_22
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_40

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/motion/widget/Key;

    .line 204
    iget-object v15, v13, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v15, :cond_3f

    goto :goto_22

    .line 205
    :cond_3f
    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v15, :cond_3e

    .line 206
    iget v13, v13, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v10, v13, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_22

    .line 207
    :cond_40
    new-instance v11, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    .line 208
    invoke-direct {v11}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    .line 209
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    .line 210
    iput-object v10, v11, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object v6, v11

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    goto/16 :goto_2b

    .line 211
    :cond_41
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_23
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    :goto_24
    const/16 v19, -0x1

    goto/16 :goto_2a

    :sswitch_0
    const-string v10, "waveOffset"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_42

    goto :goto_23

    :cond_42
    const/16 v10, 0xf

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move/from16 v19, v10

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    goto/16 :goto_2a

    :sswitch_1
    move-object/from16 v10, v39

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_43

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    goto :goto_24

    :cond_43
    const/16 v11, 0xe

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move/from16 v19, v11

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    goto/16 :goto_2a

    :sswitch_2
    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_44

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    goto :goto_25

    :cond_44
    const/16 v12, 0xd

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move/from16 v19, v12

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    goto :goto_26

    :sswitch_3
    move-object/from16 v12, v22

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_45

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    :goto_25
    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    goto/16 :goto_24

    :cond_45
    const/16 v13, 0xc

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move/from16 v19, v13

    move-object/from16 v18, v14

    :goto_26
    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    goto/16 :goto_2a

    :sswitch_4
    move-object/from16 v12, v22

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_46

    goto/16 :goto_28

    :cond_46
    const/16 v15, 0xb

    goto :goto_27

    :sswitch_5
    move-object/from16 v12, v22

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    const-string v15, "transformPivotY"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_47

    goto :goto_28

    :cond_47
    const/16 v15, 0xa

    :goto_27
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    goto/16 :goto_2a

    :sswitch_6
    move-object/from16 v12, v22

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    const-string v15, "transformPivotX"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_48

    goto :goto_28

    :cond_48
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    const/16 v19, 0x9

    goto/16 :goto_2a

    :sswitch_7
    move-object/from16 v12, v22

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    const-string v15, "waveVariesBy"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_49

    :goto_28
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    goto/16 :goto_24

    :cond_49
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    const/16 v19, 0x8

    goto/16 :goto_2a

    :sswitch_8
    move-object/from16 v12, v22

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    if-nez v18, :cond_4a

    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    goto/16 :goto_24

    :cond_4a
    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    const/16 v19, 0x7

    goto/16 :goto_2a

    :sswitch_9
    move-object/from16 p1, v5

    move-object/from16 v12, v22

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 v21, v6

    if-nez v18, :cond_4b

    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    goto/16 :goto_24

    :cond_4b
    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    const/16 v19, 0x6

    goto/16 :goto_2a

    :sswitch_a
    move-object/from16 v20, v1

    move-object/from16 p1, v5

    move-object/from16 v12, v22

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v41, v4

    move-object/from16 v21, v6

    if-nez v18, :cond_4c

    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    goto :goto_29

    :cond_4c
    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    const/16 v19, 0x5

    goto/16 :goto_2a

    :sswitch_b
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v12, v22

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    const-string v4, "translationZ"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    if-nez v4, :cond_4d

    :goto_29
    move-object/from16 v4, v30

    goto/16 :goto_24

    :cond_4d
    move-object/from16 v4, v30

    const/16 v19, 0x4

    goto/16 :goto_2a

    :sswitch_c
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v12, v22

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v21, v6

    if-nez v18, :cond_4e

    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    goto/16 :goto_24

    :cond_4e
    move-object/from16 v18, v14

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    const/16 v19, 0x3

    goto/16 :goto_2a

    :sswitch_d
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v21, v6

    move-object/from16 v6, v27

    if-nez v19, :cond_4f

    goto/16 :goto_24

    :cond_4f
    const/16 v19, 0x2

    goto :goto_2a

    :sswitch_e
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v6, v28

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v6, v27

    if-nez v19, :cond_50

    goto/16 :goto_24

    :cond_50
    const/16 v19, 0x1

    goto :goto_2a

    :sswitch_f
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_51

    goto/16 :goto_24

    :cond_51
    const/16 v19, 0x0

    :goto_2a
    packed-switch v19, :pswitch_data_0

    move-object/from16 v27, v6

    move-object/from16 v29, v14

    const/4 v6, 0x0

    goto/16 :goto_2b

    :pswitch_0
    move-object/from16 v27, v6

    .line 212
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    move-object/from16 v29, v14

    const/4 v14, 0x0

    .line 213
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto/16 :goto_2b

    :pswitch_1
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    const/4 v14, 0x0

    .line 214
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    .line 215
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto/16 :goto_2b

    :pswitch_2
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 216
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    .line 217
    invoke-direct {v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    goto/16 :goto_2b

    :pswitch_3
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 218
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v14, 0x1

    .line 219
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto/16 :goto_2b

    :pswitch_4
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 220
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v14, 0x4

    .line 221
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto/16 :goto_2b

    :pswitch_5
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 222
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v14, 0x3

    .line 223
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto/16 :goto_2b

    :pswitch_6
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 224
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v14, 0x2

    .line 225
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto/16 :goto_2b

    :pswitch_7
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 226
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v14, 0x0

    .line 227
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_2b

    :pswitch_8
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 228
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/16 v14, 0x8

    .line 229
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_2b

    :pswitch_9
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 230
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v14, 0x7

    .line 231
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_2b

    :pswitch_a
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 232
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

    .line 233
    invoke-direct {v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    const/4 v14, 0x0

    .line 234
    iput-boolean v14, v6, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->mNoMethod:Z

    goto :goto_2b

    :pswitch_b
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 235
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/16 v14, 0xb

    .line 236
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_2b

    :pswitch_c
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 237
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/16 v14, 0xa

    .line 238
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_2b

    :pswitch_d
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 239
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/16 v14, 0x9

    .line 240
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_2b

    :pswitch_e
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 241
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v14, 0x6

    .line 242
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_2b

    :pswitch_f
    move-object/from16 v27, v6

    move-object/from16 v29, v14

    .line 243
    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v14, 0x5

    .line 244
    invoke-direct {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    :goto_2b
    if-nez v6, :cond_52

    :goto_2c
    move-object/from16 v31, v1

    move-object/from16 v30, v4

    move-object/from16 v32, v5

    move-object/from16 v39, v10

    move-object/from16 v37, v11

    move-object/from16 v22, v12

    move-object/from16 v34, v13

    move-object/from16 v33, v15

    move-object/from16 v14, v18

    move-object/from16 v1, v20

    move-object/from16 v6, v21

    move-object/from16 v4, v41

    move-object/from16 v5, p1

    goto/16 :goto_21

    .line 245
    :cond_52
    iput-object v9, v6, Landroidx/constraintlayout/motion/utils/ViewSpline;->mType:Ljava/lang/String;

    .line 246
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v14, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_53
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    .line 247
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v6, :cond_55

    .line 248
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_54
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/Key;

    .line 249
    instance-of v14, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v14, :cond_54

    .line 250
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v9, v14}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    goto :goto_2d

    .line 251
    :cond_55
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    move-object/from16 v9, v26

    const/4 v14, 0x0

    invoke-virtual {v9, v6, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 252
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/16 v9, 0x64

    move-object/from16 v14, v23

    invoke-virtual {v14, v6, v9}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 253
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 254
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56

    .line 255
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_56

    .line 256
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 p1, v6

    goto :goto_2f

    :cond_56
    move-object/from16 p1, v6

    const/4 v14, 0x0

    .line 257
    :goto_2f
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewSpline;

    if-eqz v6, :cond_57

    .line 258
    invoke-virtual {v6, v14}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setup(I)V

    :cond_57
    move-object/from16 v6, p1

    goto :goto_2e

    :cond_58
    move-object/from16 v20, v1

    move-object/from16 v41, v4

    move-object/from16 v21, v6

    move-object/from16 v18, v14

    move-object/from16 v12, v22

    move-object/from16 v4, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v37

    move-object/from16 v10, v39

    .line 259
    :cond_59
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_71

    .line 260
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v6, :cond_5a

    .line 261
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 262
    :cond_5a
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 263
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5b

    goto :goto_30

    .line 264
    :cond_5b
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 265
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 266
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x1

    aget-object v14, v14, v17

    move-object/from16 p1, v2

    .line 267
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 p2, v2

    move-object/from16 v2, v19

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v19, v7

    .line 268
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v7, :cond_5d

    :cond_5c
    :goto_32
    move-object/from16 v2, p2

    move-object/from16 v7, v19

    goto :goto_31

    .line 269
    :cond_5d
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v7, :cond_5c

    .line 270
    iget v2, v2, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v9, v2, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_32

    :cond_5e
    move-object/from16 v19, v7

    .line 271
    new-instance v2, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    .line 272
    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    .line 273
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, v2, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    .line 274
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x1

    aget-object v7, v7, v14

    iput-object v7, v2, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 275
    iput-object v9, v2, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    move-object/from16 v31, v1

    move-object v14, v2

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    :goto_33
    move-wide/from16 v1, p3

    goto/16 :goto_3a

    :cond_5f
    move-object/from16 p1, v2

    move-object/from16 v19, v7

    .line 276
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_34
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    :goto_35
    const/4 v14, -0x1

    goto/16 :goto_37

    :sswitch_10
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    goto :goto_34

    :cond_60
    const/16 v2, 0xb

    goto :goto_36

    :sswitch_11
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    goto :goto_34

    :cond_61
    const/16 v2, 0xa

    :goto_36
    move v14, v2

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    goto/16 :goto_37

    :sswitch_12
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    goto :goto_34

    :cond_62
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    const/16 v14, 0x9

    goto/16 :goto_37

    :sswitch_13
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    goto :goto_34

    :cond_63
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    const/16 v14, 0x8

    goto/16 :goto_37

    :sswitch_14
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    goto :goto_34

    :cond_64
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    const/4 v14, 0x7

    goto/16 :goto_37

    :sswitch_15
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    goto :goto_34

    :cond_65
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    const/4 v14, 0x6

    goto/16 :goto_37

    :sswitch_16
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    goto :goto_34

    :cond_66
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    const/4 v14, 0x5

    goto :goto_37

    :sswitch_17
    const-string v2, "translationZ"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto :goto_34

    :cond_67
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    const/4 v14, 0x4

    goto :goto_37

    :sswitch_18
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    goto/16 :goto_34

    :cond_68
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    const/4 v14, 0x3

    goto :goto_37

    :sswitch_19
    move-object/from16 v2, v29

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v9, v27

    if-nez v7, :cond_69

    move-object/from16 v7, v28

    goto/16 :goto_35

    :cond_69
    move-object/from16 v7, v28

    const/4 v14, 0x2

    goto :goto_37

    :sswitch_1a
    move-object/from16 v7, v28

    move-object/from16 v2, v29

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6a

    move-object/from16 v9, v27

    goto/16 :goto_35

    :cond_6a
    move-object/from16 v9, v27

    const/4 v14, 0x1

    goto :goto_37

    :sswitch_1b
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v2, v29

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6b

    goto/16 :goto_35

    :cond_6b
    const/4 v14, 0x0

    :goto_37
    packed-switch v14, :pswitch_data_1

    const/4 v14, 0x0

    move-object/from16 v31, v1

    move-object/from16 v29, v2

    goto/16 :goto_33

    .line 277
    :pswitch_10
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    move-object/from16 v31, v1

    const/4 v1, 0x0

    .line 278
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    :goto_38
    move-object/from16 v29, v2

    move-wide/from16 v1, p3

    goto/16 :goto_39

    :pswitch_11
    move-object/from16 v31, v1

    .line 279
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    .line 280
    invoke-direct {v14}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    goto :goto_38

    :pswitch_12
    move-object/from16 v31, v1

    .line 281
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v1, 0x1

    .line 282
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_38

    :pswitch_13
    move-object/from16 v31, v1

    .line 283
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v1, 0x2

    .line 284
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_38

    :pswitch_14
    move-object/from16 v31, v1

    .line 285
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v1, 0x6

    .line 286
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_38

    :pswitch_15
    move-object/from16 v31, v1

    .line 287
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v1, 0x5

    .line 288
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_38

    :pswitch_16
    move-object/from16 v31, v1

    const/4 v1, 0x5

    .line 289
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;

    .line 290
    invoke-direct {v14}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    const/4 v1, 0x0

    .line 291
    iput-boolean v1, v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    goto :goto_38

    :pswitch_17
    move-object/from16 v31, v1

    .line 292
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/16 v1, 0x9

    .line 293
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_38

    :pswitch_18
    move-object/from16 v31, v1

    const/16 v1, 0x9

    .line 294
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/16 v1, 0x8

    .line 295
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_38

    :pswitch_19
    move-object/from16 v31, v1

    const/16 v1, 0x8

    .line 296
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v1, 0x7

    .line 297
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_38

    :pswitch_1a
    move-object/from16 v31, v1

    const/4 v1, 0x7

    .line 298
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v1, 0x4

    .line 299
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_38

    :pswitch_1b
    move-object/from16 v31, v1

    .line 300
    new-instance v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v1, 0x3

    .line 301
    invoke-direct {v14, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_38

    .line 302
    :goto_39
    iput-wide v1, v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mLastTime:J

    :goto_3a
    if-nez v14, :cond_6c

    :goto_3b
    move-object/from16 v2, p1

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object/from16 v7, v19

    move-object/from16 v1, v31

    goto/16 :goto_30

    .line 303
    :cond_6c
    iput-object v6, v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    .line 304
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_6d
    move-object/from16 v19, v7

    .line 305
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_6f

    .line 306
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6e
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    .line 307
    instance-of v4, v2, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v4, :cond_6e

    .line 308
    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    goto :goto_3c

    .line 309
    :cond_6f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 311
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3e

    :cond_70
    const/4 v4, 0x0

    .line 312
    :goto_3e
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setup(I)V

    goto :goto_3d

    :cond_71
    move-object/from16 v19, v7

    .line 313
    :cond_72
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    add-int/lit8 v14, v1, 0x2

    new-array v2, v14, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v3, 0x0

    .line 314
    aput-object v21, v2, v3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 315
    aput-object v18, v2, v1

    .line 316
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_73

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_73

    .line 317
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 318
    :cond_73
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v5, 0x1

    add-int/lit8 v6, v3, 0x1

    .line 319
    aput-object v4, v2, v3

    move v3, v6

    goto :goto_3f

    .line 320
    :cond_74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v3, v18

    .line 321
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, v21

    .line 322
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, v41

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 324
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_75
    move-object/from16 v7, v19

    move-object/from16 v8, v41

    :cond_76
    :goto_41
    move-object/from16 v21, v5

    move-object/from16 v19, v7

    move-object/from16 v41, v8

    goto :goto_40

    :cond_77
    const/4 v4, 0x0

    .line 325
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 326
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v1, 0x0

    .line 327
    :goto_42
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_7a

    .line 328
    aget-object v3, v3, v1

    .line 329
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v5, 0x0

    aput v5, v4, v1

    const/4 v4, 0x0

    :goto_43
    if-ge v4, v14, :cond_78

    .line 330
    aget-object v5, v2, v4

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 331
    aget-object v5, v2, v4

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v5, :cond_79

    .line 332
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    aget v4, v3, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v5

    add-int/2addr v5, v4

    aput v5, v3, v1

    :cond_78
    const/4 v5, 0x1

    goto :goto_44

    :cond_79
    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_43

    :goto_44
    add-int/2addr v1, v5

    goto :goto_42

    :cond_7a
    const/4 v1, 0x0

    .line 333
    aget-object v4, v2, v1

    iget v1, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7b

    const/4 v1, 0x1

    goto :goto_45

    :cond_7b
    const/4 v1, 0x0

    .line 334
    :goto_45
    array-length v3, v3

    const/16 v4, 0x12

    add-int v12, v4, v3

    new-array v3, v12, [Z

    const/4 v4, 0x1

    :goto_46
    if-ge v4, v14, :cond_7c

    .line 335
    aget-object v5, v2, v4

    const/4 v6, 0x1

    add-int/lit8 v7, v4, -0x1

    aget-object v6, v2, v7

    .line 336
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 337
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v7, v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v7

    .line 338
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v9, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v8, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v8

    const/4 v9, 0x0

    .line 339
    aget-boolean v10, v3, v9

    iget v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget v13, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    invoke-static {v11, v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v3, v9

    const/4 v9, 0x1

    .line 340
    aget-boolean v10, v3, v9

    or-int/2addr v7, v8

    or-int/2addr v7, v1

    or-int v8, v10, v7

    aput-boolean v8, v3, v9

    const/4 v8, 0x2

    .line 341
    aget-boolean v9, v3, v8

    or-int/2addr v7, v9

    aput-boolean v7, v3, v8

    const/4 v7, 0x3

    .line 342
    aget-boolean v8, v3, v7

    iget v9, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v10, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    invoke-static {v9, v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v9

    or-int/2addr v8, v9

    aput-boolean v8, v3, v7

    const/4 v8, 0x4

    .line 343
    aget-boolean v9, v3, v8

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    invoke-static {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v5

    or-int/2addr v5, v9

    aput-boolean v5, v3, v8

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_7c
    const/16 v17, 0x1

    move/from16 v1, v17

    const/4 v4, 0x0

    :goto_47
    if-ge v1, v12, :cond_7e

    .line 344
    aget-boolean v5, v3, v1

    if-eqz v5, :cond_7d

    add-int/lit8 v4, v4, 0x1

    :cond_7d
    add-int/lit8 v1, v1, 0x1

    const/16 v17, 0x1

    goto :goto_47

    .line 345
    :cond_7e
    new-array v1, v4, [I

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v1, 0x2

    .line 346
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 347
    new-array v1, v4, [D

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 348
    new-array v1, v4, [D

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v1, 0x1

    const/4 v4, 0x0

    :goto_48
    if-ge v1, v12, :cond_80

    .line 349
    aget-boolean v5, v3, v1

    if-eqz v5, :cond_7f

    .line 350
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v6, 0x1

    add-int/lit8 v15, v4, 0x1

    aput v1, v5, v4

    move v4, v15

    goto :goto_49

    :cond_7f
    const/4 v6, 0x1

    :goto_49
    add-int/2addr v1, v6

    goto :goto_48

    :cond_80
    const/4 v6, 0x1

    .line 351
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v1, v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v1, v4, v6

    const/4 v1, 0x0

    aput v14, v4, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 352
    new-array v3, v14, [D

    const/4 v4, 0x0

    :goto_4a
    if-ge v4, v14, :cond_81

    .line 353
    aget-object v5, v2, v4

    aget-object v6, v1, v4

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->fillStandard([D[I)V

    .line 354
    aget-object v5, v2, v4

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    float-to-double v5, v5

    aput-wide v5, v3, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_4a

    :cond_81
    const/4 v4, 0x0

    .line 355
    :goto_4b
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v6, v5

    if-ge v4, v6, :cond_83

    .line 356
    aget v5, v5, v4

    const/4 v6, 0x6

    if-ge v5, v6, :cond_82

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->sNames:[Ljava/lang/String;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aget v8, v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :goto_4c
    if-ge v7, v14, :cond_82

    .line 358
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v7

    aget-wide v9, v5, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_4c

    :cond_82
    const/4 v8, 0x1

    add-int/2addr v4, v8

    goto :goto_4b

    :cond_83
    const/4 v8, 0x1

    .line 359
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v8

    new-array v4, v4, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    .line 360
    :goto_4d
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_88

    .line 361
    aget-object v5, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4e
    if-ge v6, v14, :cond_87

    .line 362
    aget-object v10, v2, v6

    .line 363
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 364
    invoke-virtual {v10, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_86

    if-nez v9, :cond_85

    .line 365
    new-array v8, v14, [D

    .line 366
    aget-object v9, v2, v6

    .line 367
    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 368
    invoke-virtual {v9, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v9, :cond_84

    const/4 v9, 0x0

    :goto_4f
    const/4 v10, 0x2

    goto :goto_50

    .line 369
    :cond_84
    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v9

    goto :goto_4f

    .line 370
    :goto_50
    new-array v11, v10, [I

    const/4 v10, 0x1

    aput v9, v11, v10

    const/4 v9, 0x0

    aput v14, v11, v9

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 371
    :cond_85
    aget-object v10, v2, v6

    iget v11, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    float-to-double v11, v11

    aput-wide v11, v8, v7

    .line 372
    aget-object v11, v9, v7

    invoke-virtual {v10, v5, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomData(Ljava/lang/String;[D)V

    const/4 v10, 0x1

    add-int/2addr v7, v10

    goto :goto_51

    :cond_86
    const/4 v10, 0x1

    :goto_51
    add-int/2addr v6, v10

    goto :goto_4e

    :cond_87
    const/4 v10, 0x1

    .line 373
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v5

    .line 374
    invoke-static {v9, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 375
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    add-int/2addr v4, v10

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v8, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v5

    aput-object v5, v7, v4

    goto :goto_4d

    .line 376
    :cond_88
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v5, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v4, v3

    .line 377
    aget-object v1, v2, v3

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_8a

    .line 378
    new-array v1, v14, [I

    .line 379
    new-array v4, v14, [D

    const/4 v5, 0x2

    .line 380
    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    aput v14, v6, v3

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v13, 0x0

    :goto_52
    if-ge v13, v14, :cond_89

    .line 381
    aget-object v5, v2, v13

    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    aput v6, v1, v13

    .line 382
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    float-to-double v6, v6

    aput-wide v6, v4, v13

    .line 383
    aget-object v6, v3, v13

    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    float-to-double v7, v7

    const/4 v9, 0x0

    aput-wide v7, v6, v9

    .line 384
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    float-to-double v7, v5

    const/4 v5, 0x1

    aput-wide v7, v6, v5

    add-int/2addr v13, v5

    goto :goto_52

    .line 385
    :cond_89
    new-instance v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    invoke-direct {v2, v1, v4, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;-><init>([I[D[[D)V

    .line 386
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 387
    :cond_8a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 388
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_90

    .line 389
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v12, 0x7fc00000    # Float.NaN

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-result-object v3

    if-nez v3, :cond_8b

    goto :goto_53

    .line 391
    :cond_8b
    iget v4, v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mVariesBy:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8c

    .line 392
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionController;->getPreCycleDistance()F

    move-result v4

    move v12, v4

    .line 394
    :cond_8c
    iput-object v2, v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mType:Ljava/lang/String;

    .line 395
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 396
    :cond_8d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8e
    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    .line 397
    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v3, :cond_8e

    .line 398
    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    goto :goto_54

    .line 399
    :cond_8f
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 400
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setup()V

    goto :goto_55

    :cond_90
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1b
        -0x4a771f65 -> :sswitch_1a
        -0x490b9c39 -> :sswitch_19
        -0x490b9c38 -> :sswitch_18
        -0x490b9c37 -> :sswitch_17
        -0x3bab3dd3 -> :sswitch_16
        -0x3621dfb2 -> :sswitch_15
        -0x3621dfb1 -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " start: x: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 9
    .line 10
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " y: "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " end: x: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 31
    .line 32
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method
