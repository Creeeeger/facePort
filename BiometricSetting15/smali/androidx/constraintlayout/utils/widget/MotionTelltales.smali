.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mInvertMatrix:Landroid/graphics/Matrix;

.field public mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final mPaintTelltales:Landroid/graphics/Paint;

.field public mTailColor:I

.field public mTailScale:F

.field public final mVelocity:[F

.field public mVelocityMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 14
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 15
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 16
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 p3, 0x2

    .line 19
    new-array p3, p3, [F

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 20
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 21
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const p3, -0xff01

    .line 22
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 p3, 0x3e800000    # 0.25f

    .line 23
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p2, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v2, 0x2

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    .line 46
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 47
    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 53
    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 61
    .line 62
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 68
    .line 69
    const/high16 p1, 0x40a00000    # 5.0f

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 30
    .line 31
    iput-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    new-array v5, v1, [F

    .line 43
    .line 44
    fill-array-data v5, :array_0

    .line 45
    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    :goto_0
    if-ge v7, v1, :cond_29

    .line 49
    .line 50
    aget v14, v5, v7

    .line 51
    .line 52
    const/4 v15, 0x0

    .line 53
    :goto_1
    if-ge v15, v1, :cond_28

    .line 54
    .line 55
    aget v13, v5, v15

    .line 56
    .line 57
    iget-object v8, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 58
    .line 59
    iget-object v12, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 60
    .line 61
    iget v11, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 62
    .line 63
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 64
    .line 65
    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 66
    .line 67
    iget-object v1, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget v1, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 72
    .line 73
    sub-float/2addr v1, v10

    .line 74
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 79
    .line 80
    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 81
    .line 82
    const v16, 0x3727c5ac    # 1.0E-5f

    .line 83
    .line 84
    .line 85
    add-float v10, v10, v16

    .line 86
    .line 87
    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    iget-object v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 92
    .line 93
    iget v6, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 94
    .line 95
    invoke-interface {v10, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    sub-float/2addr v9, v10

    .line 100
    div-float v9, v9, v16

    .line 101
    .line 102
    mul-float/2addr v9, v1

    .line 103
    iget v1, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 104
    .line 105
    div-float/2addr v9, v1

    .line 106
    :cond_2
    iget-object v1, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 107
    .line 108
    instance-of v6, v1, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 109
    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    :cond_3
    move v1, v9

    .line 117
    iget-object v6, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 124
    .line 125
    and-int/lit8 v8, v11, 0x1

    .line 126
    .line 127
    if-nez v8, :cond_26

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 134
    .line 135
    .line 136
    move-result v17

    .line 137
    iget-object v8, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 138
    .line 139
    invoke-virtual {v6, v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    iget-object v10, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 144
    .line 145
    const-string v2, "translationX"

    .line 146
    .line 147
    const/16 v18, 0x0

    .line 148
    .line 149
    if-nez v10, :cond_4

    .line 150
    .line 151
    move-object/from16 v19, v5

    .line 152
    .line 153
    move-object/from16 v10, v18

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    check-cast v10, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 161
    .line 162
    move-object/from16 v19, v5

    .line 163
    .line 164
    :goto_2
    iget-object v5, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 165
    .line 166
    move/from16 v20, v11

    .line 167
    .line 168
    const-string v11, "translationY"

    .line 169
    .line 170
    if-nez v5, :cond_5

    .line 171
    .line 172
    move/from16 v21, v7

    .line 173
    .line 174
    move-object/from16 v5, v18

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_5
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 182
    .line 183
    move/from16 v21, v7

    .line 184
    .line 185
    :goto_3
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 186
    .line 187
    move/from16 v22, v15

    .line 188
    .line 189
    const-string v15, "rotation"

    .line 190
    .line 191
    if-nez v7, :cond_6

    .line 192
    .line 193
    move/from16 v23, v4

    .line 194
    .line 195
    move-object/from16 v7, v18

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 203
    .line 204
    move/from16 v23, v4

    .line 205
    .line 206
    :goto_4
    iget-object v4, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 207
    .line 208
    move/from16 v24, v3

    .line 209
    .line 210
    const-string v3, "scaleX"

    .line 211
    .line 212
    if-nez v4, :cond_7

    .line 213
    .line 214
    move-object/from16 v4, v18

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 222
    .line 223
    :goto_5
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 224
    .line 225
    move/from16 v25, v1

    .line 226
    .line 227
    const-string v1, "scaleY"

    .line 228
    .line 229
    if-nez v0, :cond_8

    .line 230
    .line 231
    move-object/from16 v26, v8

    .line 232
    .line 233
    move-object/from16 v0, v18

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 241
    .line 242
    move-object/from16 v26, v8

    .line 243
    .line 244
    :goto_6
    iget-object v8, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 245
    .line 246
    if-nez v8, :cond_9

    .line 247
    .line 248
    move-object/from16 v2, v18

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_9
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 256
    .line 257
    :goto_7
    iget-object v8, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 258
    .line 259
    if-nez v8, :cond_a

    .line 260
    .line 261
    move-object/from16 v8, v18

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_a
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 269
    .line 270
    :goto_8
    iget-object v11, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 271
    .line 272
    if-nez v11, :cond_b

    .line 273
    .line 274
    move-object/from16 v11, v18

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_b
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    check-cast v11, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 282
    .line 283
    :goto_9
    iget-object v15, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 284
    .line 285
    if-nez v15, :cond_c

    .line 286
    .line 287
    move-object/from16 v3, v18

    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_c
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 295
    .line 296
    :goto_a
    iget-object v15, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 297
    .line 298
    if-nez v15, :cond_d

    .line 299
    .line 300
    :goto_b
    move-object/from16 v1, v18

    .line 301
    .line 302
    goto :goto_c

    .line 303
    :cond_d
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    move-object/from16 v18, v1

    .line 308
    .line 309
    check-cast v18, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 310
    .line 311
    goto :goto_b

    .line 312
    :goto_c
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    .line 313
    .line 314
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 315
    .line 316
    .line 317
    move-object/from16 v18, v12

    .line 318
    .line 319
    const/4 v12, 0x0

    .line 320
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 321
    .line 322
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 323
    .line 324
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 325
    .line 326
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 327
    .line 328
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 329
    .line 330
    if-eqz v7, :cond_e

    .line 331
    .line 332
    iget-object v12, v7, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 333
    .line 334
    move/from16 v28, v13

    .line 335
    .line 336
    move/from16 v27, v14

    .line 337
    .line 338
    float-to-double v13, v9

    .line 339
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 340
    .line 341
    .line 342
    move-result-wide v12

    .line 343
    double-to-float v12, v12

    .line 344
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 345
    .line 346
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 347
    .line 348
    .line 349
    move-result v12

    .line 350
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    .line 351
    .line 352
    goto :goto_d

    .line 353
    :cond_e
    move/from16 v28, v13

    .line 354
    .line 355
    move/from16 v27, v14

    .line 356
    .line 357
    :goto_d
    if-eqz v10, :cond_f

    .line 358
    .line 359
    iget-object v12, v10, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 360
    .line 361
    float-to-double v13, v9

    .line 362
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 363
    .line 364
    .line 365
    move-result-wide v12

    .line 366
    double-to-float v12, v12

    .line 367
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 368
    .line 369
    :cond_f
    if-eqz v5, :cond_10

    .line 370
    .line 371
    iget-object v12, v5, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 372
    .line 373
    float-to-double v13, v9

    .line 374
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 375
    .line 376
    .line 377
    move-result-wide v12

    .line 378
    double-to-float v12, v12

    .line 379
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 380
    .line 381
    :cond_10
    if-eqz v4, :cond_11

    .line 382
    .line 383
    iget-object v12, v4, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 384
    .line 385
    float-to-double v13, v9

    .line 386
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 387
    .line 388
    .line 389
    move-result-wide v12

    .line 390
    double-to-float v12, v12

    .line 391
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 392
    .line 393
    :cond_11
    if-eqz v0, :cond_12

    .line 394
    .line 395
    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 396
    .line 397
    float-to-double v13, v9

    .line 398
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 399
    .line 400
    .line 401
    move-result-wide v12

    .line 402
    double-to-float v12, v12

    .line 403
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 404
    .line 405
    :cond_12
    if-eqz v11, :cond_13

    .line 406
    .line 407
    invoke-virtual {v11, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 408
    .line 409
    .line 410
    move-result v12

    .line 411
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 412
    .line 413
    :cond_13
    if-eqz v2, :cond_14

    .line 414
    .line 415
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 416
    .line 417
    .line 418
    move-result v12

    .line 419
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 420
    .line 421
    :cond_14
    if-eqz v8, :cond_15

    .line 422
    .line 423
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 424
    .line 425
    .line 426
    move-result v12

    .line 427
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 428
    .line 429
    :cond_15
    if-eqz v3, :cond_16

    .line 430
    .line 431
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 432
    .line 433
    .line 434
    move-result v12

    .line 435
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 436
    .line 437
    :cond_16
    if-eqz v1, :cond_17

    .line 438
    .line 439
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 440
    .line 441
    .line 442
    move-result v12

    .line 443
    iput v12, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 444
    .line 445
    :cond_17
    iget-object v12, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 446
    .line 447
    if-eqz v12, :cond_19

    .line 448
    .line 449
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 450
    .line 451
    array-length v1, v0

    .line 452
    if-lez v1, :cond_18

    .line 453
    .line 454
    float-to-double v1, v9

    .line 455
    invoke-virtual {v12, v1, v2, v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    .line 456
    .line 457
    .line 458
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 459
    .line 460
    iget-object v3, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 461
    .line 462
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    .line 463
    .line 464
    .line 465
    iget-object v11, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 466
    .line 467
    iget-object v12, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 468
    .line 469
    iget-object v13, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 470
    .line 471
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    move/from16 v8, v28

    .line 477
    .line 478
    move/from16 v9, v27

    .line 479
    .line 480
    move-object/from16 v10, v18

    .line 481
    .line 482
    move/from16 v14, v20

    .line 483
    .line 484
    move-object/from16 v0, v18

    .line 485
    .line 486
    move/from16 v1, v28

    .line 487
    .line 488
    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 489
    .line 490
    .line 491
    goto :goto_e

    .line 492
    :cond_18
    move-object/from16 v0, v18

    .line 493
    .line 494
    move/from16 v14, v20

    .line 495
    .line 496
    move/from16 v1, v28

    .line 497
    .line 498
    :goto_e
    move-object v8, v15

    .line 499
    move v9, v1

    .line 500
    move/from16 v10, v27

    .line 501
    .line 502
    move/from16 v11, v16

    .line 503
    .line 504
    move/from16 v12, v17

    .line 505
    .line 506
    move-object v13, v0

    .line 507
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 508
    .line 509
    .line 510
    move/from16 v20, v14

    .line 511
    .line 512
    move-object v14, v0

    .line 513
    :goto_f
    move v0, v1

    .line 514
    goto/16 :goto_11

    .line 515
    .line 516
    :cond_19
    move-object/from16 v12, v18

    .line 517
    .line 518
    move/from16 v13, v28

    .line 519
    .line 520
    iget-object v14, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 521
    .line 522
    if-eqz v14, :cond_1b

    .line 523
    .line 524
    move-object/from16 v14, v26

    .line 525
    .line 526
    invoke-virtual {v6, v9, v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 531
    .line 532
    const/4 v2, 0x0

    .line 533
    aget-object v1, v1, v2

    .line 534
    .line 535
    float-to-double v3, v0

    .line 536
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 537
    .line 538
    invoke-virtual {v1, v3, v4, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 539
    .line 540
    .line 541
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 542
    .line 543
    aget-object v0, v0, v2

    .line 544
    .line 545
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 546
    .line 547
    invoke-virtual {v0, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 548
    .line 549
    .line 550
    aget v0, v14, v2

    .line 551
    .line 552
    const/4 v1, 0x0

    .line 553
    :goto_10
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 554
    .line 555
    array-length v3, v2

    .line 556
    if-ge v1, v3, :cond_1a

    .line 557
    .line 558
    aget-wide v3, v2, v1

    .line 559
    .line 560
    float-to-double v7, v0

    .line 561
    mul-double/2addr v3, v7

    .line 562
    aput-wide v3, v2, v1

    .line 563
    .line 564
    const/4 v2, 0x1

    .line 565
    add-int/2addr v1, v2

    .line 566
    goto :goto_10

    .line 567
    :cond_1a
    iget-object v11, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 568
    .line 569
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 570
    .line 571
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 572
    .line 573
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    .line 575
    .line 576
    move v8, v13

    .line 577
    move/from16 v9, v27

    .line 578
    .line 579
    move-object v10, v12

    .line 580
    move-object v14, v12

    .line 581
    move-object v12, v2

    .line 582
    move v1, v13

    .line 583
    move-object v13, v0

    .line 584
    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 585
    .line 586
    .line 587
    move-object v8, v15

    .line 588
    move v9, v1

    .line 589
    move/from16 v10, v27

    .line 590
    .line 591
    move/from16 v11, v16

    .line 592
    .line 593
    move/from16 v12, v17

    .line 594
    .line 595
    move-object v13, v14

    .line 596
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 597
    .line 598
    .line 599
    goto :goto_f

    .line 600
    :cond_1b
    move-object v14, v12

    .line 601
    iget-object v12, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 602
    .line 603
    move-object/from16 v18, v1

    .line 604
    .line 605
    iget v1, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 606
    .line 607
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 608
    .line 609
    move-object/from16 v26, v3

    .line 610
    .line 611
    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 612
    .line 613
    sub-float/2addr v1, v3

    .line 614
    iget v3, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 615
    .line 616
    move-object/from16 v28, v8

    .line 617
    .line 618
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 619
    .line 620
    sub-float/2addr v3, v8

    .line 621
    iget v8, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 622
    .line 623
    move-object/from16 v29, v2

    .line 624
    .line 625
    iget v2, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 626
    .line 627
    sub-float/2addr v8, v2

    .line 628
    iget v2, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 629
    .line 630
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 631
    .line 632
    sub-float/2addr v2, v6

    .line 633
    add-float/2addr v8, v1

    .line 634
    add-float/2addr v2, v3

    .line 635
    const/high16 v6, 0x3f800000    # 1.0f

    .line 636
    .line 637
    sub-float v12, v6, v13

    .line 638
    .line 639
    mul-float/2addr v12, v1

    .line 640
    mul-float/2addr v8, v13

    .line 641
    add-float/2addr v8, v12

    .line 642
    const/4 v1, 0x0

    .line 643
    aput v8, v14, v1

    .line 644
    .line 645
    sub-float v6, v6, v27

    .line 646
    .line 647
    mul-float/2addr v6, v3

    .line 648
    mul-float v2, v2, v27

    .line 649
    .line 650
    add-float/2addr v2, v6

    .line 651
    const/4 v1, 0x1

    .line 652
    aput v2, v14, v1

    .line 653
    .line 654
    const/4 v1, 0x0

    .line 655
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 656
    .line 657
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 658
    .line 659
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 660
    .line 661
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 662
    .line 663
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 664
    .line 665
    if-eqz v7, :cond_1c

    .line 666
    .line 667
    iget-object v1, v7, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 668
    .line 669
    float-to-double v2, v9

    .line 670
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 671
    .line 672
    .line 673
    move-result-wide v1

    .line 674
    double-to-float v1, v1

    .line 675
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 676
    .line 677
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    .line 682
    .line 683
    :cond_1c
    if-eqz v10, :cond_1d

    .line 684
    .line 685
    iget-object v1, v10, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 686
    .line 687
    float-to-double v2, v9

    .line 688
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 689
    .line 690
    .line 691
    move-result-wide v1

    .line 692
    double-to-float v1, v1

    .line 693
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 694
    .line 695
    :cond_1d
    if-eqz v5, :cond_1e

    .line 696
    .line 697
    iget-object v1, v5, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 698
    .line 699
    float-to-double v2, v9

    .line 700
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 701
    .line 702
    .line 703
    move-result-wide v1

    .line 704
    double-to-float v1, v1

    .line 705
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 706
    .line 707
    :cond_1e
    if-eqz v4, :cond_1f

    .line 708
    .line 709
    iget-object v1, v4, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 710
    .line 711
    float-to-double v2, v9

    .line 712
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 713
    .line 714
    .line 715
    move-result-wide v1

    .line 716
    double-to-float v1, v1

    .line 717
    iput v1, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 718
    .line 719
    :cond_1f
    if-eqz v0, :cond_20

    .line 720
    .line 721
    iget-object v0, v0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 722
    .line 723
    float-to-double v1, v9

    .line 724
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 725
    .line 726
    .line 727
    move-result-wide v0

    .line 728
    double-to-float v0, v0

    .line 729
    iput v0, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 730
    .line 731
    :cond_20
    if-eqz v11, :cond_21

    .line 732
    .line 733
    invoke-virtual {v11, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    iput v0, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 738
    .line 739
    :cond_21
    if-eqz v29, :cond_22

    .line 740
    .line 741
    move-object/from16 v2, v29

    .line 742
    .line 743
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    iput v0, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 748
    .line 749
    :cond_22
    if-eqz v28, :cond_23

    .line 750
    .line 751
    move-object/from16 v8, v28

    .line 752
    .line 753
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    iput v0, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 758
    .line 759
    :cond_23
    if-eqz v26, :cond_24

    .line 760
    .line 761
    move-object/from16 v3, v26

    .line 762
    .line 763
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    iput v0, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 768
    .line 769
    :cond_24
    if-eqz v18, :cond_25

    .line 770
    .line 771
    move-object/from16 v0, v18

    .line 772
    .line 773
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    iput v0, v15, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 778
    .line 779
    :cond_25
    move-object v8, v15

    .line 780
    move v9, v13

    .line 781
    move/from16 v10, v27

    .line 782
    .line 783
    move/from16 v11, v16

    .line 784
    .line 785
    move/from16 v12, v17

    .line 786
    .line 787
    move v0, v13

    .line 788
    move-object v13, v14

    .line 789
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 790
    .line 791
    .line 792
    :goto_11
    move/from16 v1, v27

    .line 793
    .line 794
    goto :goto_12

    .line 795
    :cond_26
    move/from16 v25, v1

    .line 796
    .line 797
    move/from16 v24, v3

    .line 798
    .line 799
    move/from16 v23, v4

    .line 800
    .line 801
    move-object/from16 v19, v5

    .line 802
    .line 803
    move/from16 v21, v7

    .line 804
    .line 805
    move/from16 v20, v11

    .line 806
    .line 807
    move v0, v13

    .line 808
    move v1, v14

    .line 809
    move/from16 v22, v15

    .line 810
    .line 811
    move-object v14, v12

    .line 812
    invoke-virtual {v6, v10, v0, v1, v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    .line 813
    .line 814
    .line 815
    :goto_12
    const/4 v2, 0x2

    .line 816
    move/from16 v3, v20

    .line 817
    .line 818
    if-ge v3, v2, :cond_27

    .line 819
    .line 820
    const/4 v2, 0x0

    .line 821
    aget v3, v14, v2

    .line 822
    .line 823
    mul-float v3, v3, v25

    .line 824
    .line 825
    aput v3, v14, v2

    .line 826
    .line 827
    const/4 v2, 0x1

    .line 828
    aget v3, v14, v2

    .line 829
    .line 830
    mul-float v3, v3, v25

    .line 831
    .line 832
    aput v3, v14, v2

    .line 833
    .line 834
    :cond_27
    move-object/from16 v2, p0

    .line 835
    .line 836
    iget-object v3, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 837
    .line 838
    iget-object v4, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 839
    .line 840
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 841
    .line 842
    .line 843
    move/from16 v3, v24

    .line 844
    .line 845
    int-to-float v4, v3

    .line 846
    mul-float v6, v4, v0

    .line 847
    .line 848
    move/from16 v0, v23

    .line 849
    .line 850
    int-to-float v4, v0

    .line 851
    mul-float v7, v4, v1

    .line 852
    .line 853
    iget-object v4, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 854
    .line 855
    const/4 v11, 0x0

    .line 856
    aget v5, v4, v11

    .line 857
    .line 858
    iget v8, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 859
    .line 860
    mul-float/2addr v5, v8

    .line 861
    sub-float v9, v6, v5

    .line 862
    .line 863
    const/4 v5, 0x1

    .line 864
    aget v10, v4, v5

    .line 865
    .line 866
    mul-float/2addr v10, v8

    .line 867
    sub-float v10, v7, v10

    .line 868
    .line 869
    iget-object v5, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 870
    .line 871
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 872
    .line 873
    .line 874
    iget-object v4, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 875
    .line 876
    move-object/from16 v5, p1

    .line 877
    .line 878
    move v8, v9

    .line 879
    move v9, v10

    .line 880
    move-object v10, v4

    .line 881
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 882
    .line 883
    .line 884
    const/4 v4, 0x1

    .line 885
    add-int/lit8 v15, v22, 0x1

    .line 886
    .line 887
    move v14, v1

    .line 888
    move-object/from16 v5, v19

    .line 889
    .line 890
    move/from16 v7, v21

    .line 891
    .line 892
    const/4 v1, 0x5

    .line 893
    move/from16 v30, v4

    .line 894
    .line 895
    move v4, v0

    .line 896
    move-object v0, v2

    .line 897
    move/from16 v2, v30

    .line 898
    .line 899
    goto/16 :goto_1

    .line 900
    .line 901
    :cond_28
    move-object/from16 v19, v5

    .line 902
    .line 903
    move/from16 v21, v7

    .line 904
    .line 905
    const/4 v11, 0x0

    .line 906
    move/from16 v30, v2

    .line 907
    .line 908
    move-object v2, v0

    .line 909
    move v0, v4

    .line 910
    move/from16 v4, v30

    .line 911
    .line 912
    add-int/lit8 v7, v21, 0x1

    .line 913
    .line 914
    const/4 v1, 0x5

    .line 915
    move v4, v0

    .line 916
    move-object v0, v2

    .line 917
    move/from16 v2, v30

    .line 918
    .line 919
    goto/16 :goto_0

    .line 920
    .line 921
    :cond_29
    return-void

    .line 922
    nop

    .line 923
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
