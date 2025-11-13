.class public final Lcom/airbnb/lottie/animation/content/EllipseContent;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public final circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

.field public isPathValid:Z

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final path:Landroid/graphics/Path;

.field public final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

.field public final trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 17
    .line 18
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/CircleShape;->name:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 23
    .line 24
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/CircleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 34
    .line 35
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/CircleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    .line 12
    .line 13
    if-ne p2, v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 16
    .line 17
    iget-boolean v2, v1, Lcom/airbnb/lottie/model/content/CircleShape;->hidden:Z

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iput-boolean v3, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 23
    .line 24
    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/graphics/PointF;

    .line 34
    .line 35
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 36
    .line 37
    const/high16 v5, 0x40000000    # 2.0f

    .line 38
    .line 39
    div-float/2addr v4, v5

    .line 40
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 41
    .line 42
    div-float/2addr v2, v5

    .line 43
    const v5, 0x3f0d6239    # 0.55228f

    .line 44
    .line 45
    .line 46
    mul-float v13, v4, v5

    .line 47
    .line 48
    mul-float/2addr v5, v2

    .line 49
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 50
    .line 51
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed:Z

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 60
    .line 61
    neg-float v15, v2

    .line 62
    invoke-virtual {v1, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    .line 64
    .line 65
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 66
    .line 67
    sub-float v1, v14, v13

    .line 68
    .line 69
    neg-float v12, v4

    .line 70
    sub-float v16, v14, v5

    .line 71
    .line 72
    const/16 v17, 0x0

    .line 73
    .line 74
    move v7, v1

    .line 75
    move v8, v15

    .line 76
    move v9, v12

    .line 77
    move/from16 v10, v16

    .line 78
    .line 79
    move v11, v12

    .line 80
    move/from16 v18, v12

    .line 81
    .line 82
    move/from16 v12, v17

    .line 83
    .line 84
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 85
    .line 86
    .line 87
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 88
    .line 89
    add-float/2addr v5, v14

    .line 90
    const/4 v11, 0x0

    .line 91
    move/from16 v7, v18

    .line 92
    .line 93
    move v8, v5

    .line 94
    move v9, v1

    .line 95
    move v10, v2

    .line 96
    move v12, v2

    .line 97
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 98
    .line 99
    .line 100
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 101
    .line 102
    add-float v1, v13, v14

    .line 103
    .line 104
    const/4 v12, 0x0

    .line 105
    move v7, v1

    .line 106
    move v8, v2

    .line 107
    move v9, v4

    .line 108
    move v10, v5

    .line 109
    move v11, v4

    .line 110
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 111
    .line 112
    .line 113
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 114
    .line 115
    const/4 v11, 0x0

    .line 116
    move v7, v4

    .line 117
    move/from16 v8, v16

    .line 118
    .line 119
    move v9, v1

    .line 120
    move v10, v15

    .line 121
    move v12, v15

    .line 122
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 127
    .line 128
    neg-float v15, v2

    .line 129
    invoke-virtual {v1, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    .line 131
    .line 132
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 133
    .line 134
    add-float v1, v13, v14

    .line 135
    .line 136
    sub-float v16, v14, v5

    .line 137
    .line 138
    const/4 v12, 0x0

    .line 139
    move v7, v1

    .line 140
    move v8, v15

    .line 141
    move v9, v4

    .line 142
    move/from16 v10, v16

    .line 143
    .line 144
    move v11, v4

    .line 145
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 146
    .line 147
    .line 148
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 149
    .line 150
    add-float/2addr v5, v14

    .line 151
    const/4 v11, 0x0

    .line 152
    move v7, v4

    .line 153
    move v8, v5

    .line 154
    move v9, v1

    .line 155
    move v10, v2

    .line 156
    move v12, v2

    .line 157
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 158
    .line 159
    .line 160
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 161
    .line 162
    sub-float v1, v14, v13

    .line 163
    .line 164
    neg-float v4, v4

    .line 165
    const/4 v12, 0x0

    .line 166
    move v7, v1

    .line 167
    move v8, v2

    .line 168
    move v9, v4

    .line 169
    move v10, v5

    .line 170
    move v11, v4

    .line 171
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 172
    .line 173
    .line 174
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 175
    .line 176
    const/4 v11, 0x0

    .line 177
    move v7, v4

    .line 178
    move/from16 v8, v16

    .line 179
    .line 180
    move v9, v1

    .line 181
    move v10, v15

    .line 182
    move v12, v15

    .line 183
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 184
    .line 185
    .line 186
    :goto_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Landroid/graphics/PointF;

    .line 193
    .line 194
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 195
    .line 196
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 197
    .line 198
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 199
    .line 200
    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 204
    .line 205
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 209
    .line 210
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 211
    .line 212
    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 213
    .line 214
    .line 215
    iput-boolean v3, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 216
    .line 217
    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 218
    .line 219
    return-object v0
.end method

.method public final onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 16
    .line 17
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 24
    .line 25
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->contents:Ljava/util/List;

    .line 32
    .line 33
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method
