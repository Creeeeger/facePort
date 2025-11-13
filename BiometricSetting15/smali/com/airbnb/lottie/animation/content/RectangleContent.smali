.class public final Lcom/airbnb/lottie/animation/content/RectangleContent;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;


# instance fields
.field public final cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final hidden:Z

.field public isPathValid:Z

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final path:Landroid/graphics/Path;

.field public final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final rect:Landroid/graphics/RectF;

.field public roundedCornersAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/RectangleShape;)V
    .locals 2

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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->roundedCornersAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    .line 28
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/RectangleShape;->name:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/RectangleShape;->hidden:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    .line 35
    .line 36
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 37
    .line 38
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/RectangleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    .line 46
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/RectangleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 53
    .line 54
    iget-object p3, p3, Lcom/airbnb/lottie/model/content/RectangleShape;->cornerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    move-object v1, p3

    .line 61
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->RECTANGLE_SIZE:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

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
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->CORNER_RADIUS:Ljava/lang/Float;

    .line 22
    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 19
    .line 20
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/graphics/PointF;

    .line 30
    .line 31
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 32
    .line 33
    const/high16 v3, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float/2addr v2, v3

    .line 36
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    div-float/2addr v0, v3

    .line 39
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    move v4, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    :goto_0
    cmpl-float v6, v4, v5

    .line 51
    .line 52
    if-nez v6, :cond_3

    .line 53
    .line 54
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->roundedCornersAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/Float;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    :cond_3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    cmpl-float v7, v4, v6

    .line 81
    .line 82
    if-lez v7, :cond_4

    .line 83
    .line 84
    move v4, v6

    .line 85
    :cond_4
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 86
    .line 87
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Landroid/graphics/PointF;

    .line 92
    .line 93
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 94
    .line 95
    iget v8, v6, Landroid/graphics/PointF;->x:F

    .line 96
    .line 97
    add-float/2addr v8, v2

    .line 98
    iget v9, v6, Landroid/graphics/PointF;->y:F

    .line 99
    .line 100
    sub-float/2addr v9, v0

    .line 101
    add-float/2addr v9, v4

    .line 102
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 103
    .line 104
    .line 105
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 106
    .line 107
    iget v8, v6, Landroid/graphics/PointF;->x:F

    .line 108
    .line 109
    add-float/2addr v8, v2

    .line 110
    iget v9, v6, Landroid/graphics/PointF;->y:F

    .line 111
    .line 112
    add-float/2addr v9, v0

    .line 113
    sub-float/2addr v9, v4

    .line 114
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    .line 116
    .line 117
    cmpl-float v7, v4, v5

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    const/high16 v9, 0x42b40000    # 90.0f

    .line 121
    .line 122
    if-lez v7, :cond_5

    .line 123
    .line 124
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 125
    .line 126
    iget v11, v6, Landroid/graphics/PointF;->x:F

    .line 127
    .line 128
    add-float/2addr v11, v2

    .line 129
    mul-float v12, v4, v3

    .line 130
    .line 131
    sub-float v13, v11, v12

    .line 132
    .line 133
    iget v14, v6, Landroid/graphics/PointF;->y:F

    .line 134
    .line 135
    add-float/2addr v14, v0

    .line 136
    sub-float v12, v14, v12

    .line 137
    .line 138
    invoke-virtual {v10, v13, v12, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 139
    .line 140
    .line 141
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 142
    .line 143
    iget-object v11, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 144
    .line 145
    invoke-virtual {v10, v11, v5, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 146
    .line 147
    .line 148
    :cond_5
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 149
    .line 150
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 151
    .line 152
    sub-float/2addr v10, v2

    .line 153
    add-float/2addr v10, v4

    .line 154
    iget v11, v6, Landroid/graphics/PointF;->y:F

    .line 155
    .line 156
    add-float/2addr v11, v0

    .line 157
    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 158
    .line 159
    .line 160
    if-lez v7, :cond_6

    .line 161
    .line 162
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 163
    .line 164
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 165
    .line 166
    sub-float/2addr v10, v2

    .line 167
    iget v11, v6, Landroid/graphics/PointF;->y:F

    .line 168
    .line 169
    add-float/2addr v11, v0

    .line 170
    mul-float v12, v4, v3

    .line 171
    .line 172
    sub-float v13, v11, v12

    .line 173
    .line 174
    add-float/2addr v12, v10

    .line 175
    invoke-virtual {v5, v10, v13, v12, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 176
    .line 177
    .line 178
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 179
    .line 180
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 181
    .line 182
    invoke-virtual {v5, v10, v9, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 183
    .line 184
    .line 185
    :cond_6
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 186
    .line 187
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 188
    .line 189
    sub-float/2addr v10, v2

    .line 190
    iget v11, v6, Landroid/graphics/PointF;->y:F

    .line 191
    .line 192
    sub-float/2addr v11, v0

    .line 193
    add-float/2addr v11, v4

    .line 194
    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    .line 196
    .line 197
    if-lez v7, :cond_7

    .line 198
    .line 199
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 200
    .line 201
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 202
    .line 203
    sub-float/2addr v10, v2

    .line 204
    iget v11, v6, Landroid/graphics/PointF;->y:F

    .line 205
    .line 206
    sub-float/2addr v11, v0

    .line 207
    mul-float v12, v4, v3

    .line 208
    .line 209
    add-float v13, v10, v12

    .line 210
    .line 211
    add-float/2addr v12, v11

    .line 212
    invoke-virtual {v5, v10, v11, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 213
    .line 214
    .line 215
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 216
    .line 217
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 218
    .line 219
    const/high16 v11, 0x43340000    # 180.0f

    .line 220
    .line 221
    invoke-virtual {v5, v10, v11, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 222
    .line 223
    .line 224
    :cond_7
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 225
    .line 226
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 227
    .line 228
    add-float/2addr v10, v2

    .line 229
    sub-float/2addr v10, v4

    .line 230
    iget v11, v6, Landroid/graphics/PointF;->y:F

    .line 231
    .line 232
    sub-float/2addr v11, v0

    .line 233
    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 234
    .line 235
    .line 236
    if-lez v7, :cond_8

    .line 237
    .line 238
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 239
    .line 240
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 241
    .line 242
    add-float/2addr v7, v2

    .line 243
    mul-float/2addr v4, v3

    .line 244
    sub-float v2, v7, v4

    .line 245
    .line 246
    iget v3, v6, Landroid/graphics/PointF;->y:F

    .line 247
    .line 248
    sub-float/2addr v3, v0

    .line 249
    add-float/2addr v4, v3

    .line 250
    invoke-virtual {v5, v2, v3, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 254
    .line 255
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 256
    .line 257
    const/high16 v3, 0x43870000    # 270.0f

    .line 258
    .line 259
    invoke-virtual {v0, v2, v3, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 260
    .line 261
    .line 262
    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 268
    .line 269
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 270
    .line 271
    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 272
    .line 273
    .line 274
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 275
    .line 276
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 277
    .line 278
    return-object p0
.end method

.method public final onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

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
    .locals 4

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
    if-ge p2, v1, :cond_2

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
    move-object v1, v0

    .line 22
    check-cast v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 25
    .line 26
    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->contents:Ljava/util/List;

    .line 33
    .line 34
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    check-cast v0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->roundedCornersAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 52
    .line 53
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method
