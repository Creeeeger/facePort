.class public final Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public final hidden:Z

.field public final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public isPathValid:Z

.field public final isReversed:Z

.field public final lastSegmentPath:Landroid/graphics/Path;

.field public final lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

.field public final lastSegmentPosition:[F

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final path:Landroid/graphics/Path;

.field public final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field public final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 7

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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPath:Landroid/graphics/Path;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [F

    .line 27
    .line 28
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPosition:[F

    .line 29
    .line 30
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 38
    .line 39
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->name:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 46
    .line 47
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 50
    .line 51
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->isReversed:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    .line 54
    .line 55
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v1, v0

    .line 62
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 65
    .line 66
    iget-object v1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 67
    .line 68
    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 73
    .line 74
    iget-object v2, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move-object v3, v2

    .line 81
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 82
    .line 83
    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 84
    .line 85
    iget-object v3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    move-object v4, v3

    .line 92
    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 93
    .line 94
    iput-object v4, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 95
    .line 96
    iget-object v4, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    move-object v5, v4

    .line 103
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 104
    .line 105
    iput-object v5, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 106
    .line 107
    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 108
    .line 109
    if-ne p1, v5, :cond_0

    .line 110
    .line 111
    iget-object v6, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 112
    .line 113
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 118
    .line 119
    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 120
    .line 121
    iget-object p3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 122
    .line 123
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    check-cast p3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 128
    .line 129
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const/4 p3, 0x0

    .line 133
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 134
    .line 135
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 136
    .line 137
    :goto_0
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 150
    .line 151
    .line 152
    if-ne p1, v5, :cond_1

    .line 153
    .line 154
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 155
    .line 156
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 157
    .line 158
    .line 159
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 160
    .line 161
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 162
    .line 163
    .line 164
    :cond_1
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 177
    .line 178
    .line 179
    if-ne p1, v5, :cond_2

    .line 180
    .line 181
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 182
    .line 183
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 187
    .line 188
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 189
    .line 190
    .line 191
    :cond_2
    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    .line 12
    .line 13
    if-ne p2, v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    .line 22
    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    .line 32
    .line 33
    if-ne p2, v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    .line 44
    .line 45
    if-ne p2, v0, :cond_4

    .line 46
    .line 47
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    .line 54
    .line 55
    if-ne p2, v0, :cond_5

    .line 56
    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    .line 66
    .line 67
    if-ne p2, v0, :cond_6

    .line 68
    .line 69
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iput-boolean v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 21
    .line 22
    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 32
    .line 33
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 34
    .line 35
    const/high16 v11, 0x42c80000    # 100.0f

    .line 36
    .line 37
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 38
    .line 39
    const-wide v13, 0x401921fb54442d18L    # 6.283185307179586

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const-wide v15, 0x4056800000000000L    # 90.0

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide/16 v17, 0x0

    .line 50
    .line 51
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 52
    .line 53
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 54
    .line 55
    if-eqz v1, :cond_8

    .line 56
    .line 57
    if-eq v1, v2, :cond_2

    .line 58
    .line 59
    goto/16 :goto_14

    .line 60
    .line 61
    :cond_2
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Float;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    float-to-double v6, v1

    .line 72
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    double-to-int v1, v6

    .line 77
    if-nez v9, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Ljava/lang/Float;

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    float-to-double v6, v6

    .line 91
    move-wide/from16 v17, v6

    .line 92
    .line 93
    :goto_0
    sub-double v17, v17, v15

    .line 94
    .line 95
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    move-object/from16 v22, v3

    .line 100
    .line 101
    int-to-double v2, v1

    .line 102
    div-double/2addr v13, v2

    .line 103
    double-to-float v1, v13

    .line 104
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    div-float/2addr v9, v11

    .line 115
    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    check-cast v10, Ljava/lang/Float;

    .line 120
    .line 121
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    float-to-double v11, v10

    .line 126
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 127
    .line 128
    .line 129
    move-result-wide v13

    .line 130
    mul-double/2addr v13, v11

    .line 131
    double-to-float v13, v13

    .line 132
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 133
    .line 134
    .line 135
    move-result-wide v14

    .line 136
    mul-double/2addr v14, v11

    .line 137
    double-to-float v14, v14

    .line 138
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 139
    .line 140
    invoke-virtual {v15, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 141
    .line 142
    .line 143
    float-to-double v4, v1

    .line 144
    add-double/2addr v6, v4

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    move v15, v9

    .line 150
    const/4 v3, 0x0

    .line 151
    :goto_1
    int-to-double v8, v3

    .line 152
    cmpg-double v16, v8, v1

    .line 153
    .line 154
    if-gez v16, :cond_7

    .line 155
    .line 156
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 157
    .line 158
    .line 159
    move-result-wide v16

    .line 160
    move-wide/from16 v24, v4

    .line 161
    .line 162
    move v5, v3

    .line 163
    mul-double v3, v16, v11

    .line 164
    .line 165
    double-to-float v3, v3

    .line 166
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 167
    .line 168
    .line 169
    move-result-wide v16

    .line 170
    move/from16 v18, v5

    .line 171
    .line 172
    mul-double v4, v16, v11

    .line 173
    .line 174
    double-to-float v4, v4

    .line 175
    const/4 v5, 0x0

    .line 176
    cmpl-float v16, v15, v5

    .line 177
    .line 178
    if-eqz v16, :cond_5

    .line 179
    .line 180
    move-wide/from16 v16, v11

    .line 181
    .line 182
    float-to-double v11, v14

    .line 183
    move-wide/from16 v33, v6

    .line 184
    .line 185
    float-to-double v5, v13

    .line 186
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 187
    .line 188
    .line 189
    move-result-wide v5

    .line 190
    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    sub-double/2addr v5, v11

    .line 196
    double-to-float v5, v5

    .line 197
    float-to-double v5, v5

    .line 198
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 199
    .line 200
    .line 201
    move-result-wide v11

    .line 202
    double-to-float v7, v11

    .line 203
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 204
    .line 205
    .line 206
    move-result-wide v5

    .line 207
    double-to-float v5, v5

    .line 208
    float-to-double v11, v4

    .line 209
    move v6, v13

    .line 210
    move/from16 v26, v14

    .line 211
    .line 212
    float-to-double v13, v3

    .line 213
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 214
    .line 215
    .line 216
    move-result-wide v11

    .line 217
    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    sub-double/2addr v11, v13

    .line 223
    double-to-float v11, v11

    .line 224
    float-to-double v11, v11

    .line 225
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 226
    .line 227
    .line 228
    move-result-wide v13

    .line 229
    double-to-float v13, v13

    .line 230
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v11

    .line 234
    double-to-float v11, v11

    .line 235
    mul-float v12, v10, v15

    .line 236
    .line 237
    const/high16 v14, 0x3e800000    # 0.25f

    .line 238
    .line 239
    mul-float/2addr v12, v14

    .line 240
    mul-float/2addr v7, v12

    .line 241
    mul-float/2addr v5, v12

    .line 242
    mul-float/2addr v13, v12

    .line 243
    mul-float/2addr v12, v11

    .line 244
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 245
    .line 246
    sub-double v27, v1, v20

    .line 247
    .line 248
    cmpl-double v8, v8, v27

    .line 249
    .line 250
    if-nez v8, :cond_4

    .line 251
    .line 252
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPath:Landroid/graphics/Path;

    .line 253
    .line 254
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 255
    .line 256
    .line 257
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPath:Landroid/graphics/Path;

    .line 258
    .line 259
    move/from16 v14, v26

    .line 260
    .line 261
    invoke-virtual {v8, v6, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 262
    .line 263
    .line 264
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPath:Landroid/graphics/Path;

    .line 265
    .line 266
    sub-float/2addr v6, v7

    .line 267
    sub-float v5, v14, v5

    .line 268
    .line 269
    add-float v7, v3, v13

    .line 270
    .line 271
    add-float v9, v4, v12

    .line 272
    .line 273
    move-object/from16 v26, v8

    .line 274
    .line 275
    move/from16 v27, v6

    .line 276
    .line 277
    move/from16 v28, v5

    .line 278
    .line 279
    move/from16 v29, v7

    .line 280
    .line 281
    move/from16 v30, v9

    .line 282
    .line 283
    move/from16 v31, v3

    .line 284
    .line 285
    move/from16 v32, v4

    .line 286
    .line 287
    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 288
    .line 289
    .line 290
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

    .line 291
    .line 292
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPath:Landroid/graphics/Path;

    .line 293
    .line 294
    const/4 v12, 0x0

    .line 295
    invoke-virtual {v8, v11, v12}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 296
    .line 297
    .line 298
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

    .line 299
    .line 300
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    const v13, 0x3f7ff972    # 0.9999f

    .line 305
    .line 306
    .line 307
    mul-float/2addr v11, v13

    .line 308
    const/4 v13, 0x0

    .line 309
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPosition:[F

    .line 310
    .line 311
    invoke-virtual {v8, v11, v14, v13}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 312
    .line 313
    .line 314
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 315
    .line 316
    aget v31, v14, v12

    .line 317
    .line 318
    const/4 v11, 0x1

    .line 319
    aget v32, v14, v11

    .line 320
    .line 321
    move-object/from16 v26, v8

    .line 322
    .line 323
    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 324
    .line 325
    .line 326
    move/from16 v19, v12

    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_4
    move/from16 v14, v26

    .line 330
    .line 331
    const/16 v19, 0x0

    .line 332
    .line 333
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 334
    .line 335
    sub-float v27, v6, v7

    .line 336
    .line 337
    sub-float v28, v14, v5

    .line 338
    .line 339
    add-float v29, v3, v13

    .line 340
    .line 341
    add-float v30, v4, v12

    .line 342
    .line 343
    move-object/from16 v26, v8

    .line 344
    .line 345
    move/from16 v31, v3

    .line 346
    .line 347
    move/from16 v32, v4

    .line 348
    .line 349
    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 350
    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_5
    move-wide/from16 v33, v6

    .line 354
    .line 355
    move-wide/from16 v16, v11

    .line 356
    .line 357
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 358
    .line 359
    const/16 v19, 0x0

    .line 360
    .line 361
    sub-double v11, v1, v5

    .line 362
    .line 363
    cmpl-double v5, v8, v11

    .line 364
    .line 365
    if-nez v5, :cond_6

    .line 366
    .line 367
    move-wide/from16 v6, v33

    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_6
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 371
    .line 372
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 373
    .line 374
    .line 375
    :goto_2
    add-double v6, v33, v24

    .line 376
    .line 377
    :goto_3
    add-int/lit8 v5, v18, 0x1

    .line 378
    .line 379
    move v13, v3

    .line 380
    move v14, v4

    .line 381
    move v3, v5

    .line 382
    move-wide/from16 v11, v16

    .line 383
    .line 384
    move-wide/from16 v4, v24

    .line 385
    .line 386
    goto/16 :goto_1

    .line 387
    .line 388
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    check-cast v1, Landroid/graphics/PointF;

    .line 393
    .line 394
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 395
    .line 396
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 397
    .line 398
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 399
    .line 400
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 401
    .line 402
    .line 403
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 404
    .line 405
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_14

    .line 409
    .line 410
    :cond_8
    move-object/from16 v22, v3

    .line 411
    .line 412
    const/16 v19, 0x0

    .line 413
    .line 414
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    check-cast v1, Ljava/lang/Float;

    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-nez v9, :cond_9

    .line 425
    .line 426
    goto :goto_4

    .line 427
    :cond_9
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    check-cast v2, Ljava/lang/Float;

    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    float-to-double v2, v2

    .line 438
    move-wide/from16 v17, v2

    .line 439
    .line 440
    :goto_4
    sub-double v17, v17, v15

    .line 441
    .line 442
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    .line 443
    .line 444
    .line 445
    move-result-wide v2

    .line 446
    float-to-double v4, v1

    .line 447
    div-double/2addr v13, v4

    .line 448
    double-to-float v6, v13

    .line 449
    iget-boolean v7, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    .line 450
    .line 451
    if-eqz v7, :cond_a

    .line 452
    .line 453
    const/high16 v7, -0x40800000    # -1.0f

    .line 454
    .line 455
    mul-float/2addr v6, v7

    .line 456
    :cond_a
    const/high16 v7, 0x40000000    # 2.0f

    .line 457
    .line 458
    div-float v8, v6, v7

    .line 459
    .line 460
    float-to-int v9, v1

    .line 461
    int-to-float v9, v9

    .line 462
    sub-float/2addr v1, v9

    .line 463
    const/4 v9, 0x0

    .line 464
    cmpl-float v13, v1, v9

    .line 465
    .line 466
    if-eqz v13, :cond_b

    .line 467
    .line 468
    const/high16 v9, 0x3f800000    # 1.0f

    .line 469
    .line 470
    sub-float/2addr v9, v1

    .line 471
    mul-float/2addr v9, v8

    .line 472
    float-to-double v14, v9

    .line 473
    add-double/2addr v2, v14

    .line 474
    :cond_b
    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    check-cast v9, Ljava/lang/Float;

    .line 479
    .line 480
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 485
    .line 486
    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v10

    .line 490
    check-cast v10, Ljava/lang/Float;

    .line 491
    .line 492
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 493
    .line 494
    .line 495
    move-result v10

    .line 496
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 497
    .line 498
    if-eqz v14, :cond_c

    .line 499
    .line 500
    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v14

    .line 504
    check-cast v14, Ljava/lang/Float;

    .line 505
    .line 506
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 507
    .line 508
    .line 509
    move-result v14

    .line 510
    div-float/2addr v14, v11

    .line 511
    goto :goto_5

    .line 512
    :cond_c
    const/4 v14, 0x0

    .line 513
    :goto_5
    if-eqz v12, :cond_d

    .line 514
    .line 515
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v12

    .line 519
    check-cast v12, Ljava/lang/Float;

    .line 520
    .line 521
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 522
    .line 523
    .line 524
    move-result v12

    .line 525
    div-float v11, v12, v11

    .line 526
    .line 527
    goto :goto_6

    .line 528
    :cond_d
    const/4 v11, 0x0

    .line 529
    :goto_6
    if-eqz v13, :cond_e

    .line 530
    .line 531
    invoke-static {v9, v10, v1, v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 532
    .line 533
    .line 534
    move-result v12

    .line 535
    move/from16 v16, v8

    .line 536
    .line 537
    float-to-double v7, v12

    .line 538
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 539
    .line 540
    .line 541
    move-result-wide v17

    .line 542
    move/from16 v25, v12

    .line 543
    .line 544
    move/from16 v24, v13

    .line 545
    .line 546
    mul-double v12, v17, v7

    .line 547
    .line 548
    double-to-float v12, v12

    .line 549
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 550
    .line 551
    .line 552
    move-result-wide v17

    .line 553
    mul-double v7, v7, v17

    .line 554
    .line 555
    double-to-float v7, v7

    .line 556
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 557
    .line 558
    invoke-virtual {v8, v12, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 559
    .line 560
    .line 561
    mul-float v8, v6, v1

    .line 562
    .line 563
    const/high16 v13, 0x40000000    # 2.0f

    .line 564
    .line 565
    div-float/2addr v8, v13

    .line 566
    move v13, v7

    .line 567
    float-to-double v7, v8

    .line 568
    add-double/2addr v2, v7

    .line 569
    move v7, v13

    .line 570
    move/from16 v8, v16

    .line 571
    .line 572
    move v13, v9

    .line 573
    move/from16 v16, v10

    .line 574
    .line 575
    goto :goto_7

    .line 576
    :cond_e
    move/from16 v16, v8

    .line 577
    .line 578
    move/from16 v24, v13

    .line 579
    .line 580
    float-to-double v7, v9

    .line 581
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 582
    .line 583
    .line 584
    move-result-wide v12

    .line 585
    mul-double/2addr v12, v7

    .line 586
    double-to-float v12, v12

    .line 587
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 588
    .line 589
    .line 590
    move-result-wide v17

    .line 591
    mul-double v7, v7, v17

    .line 592
    .line 593
    double-to-float v7, v7

    .line 594
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 595
    .line 596
    invoke-virtual {v8, v12, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 597
    .line 598
    .line 599
    move v13, v9

    .line 600
    move/from16 v8, v16

    .line 601
    .line 602
    move/from16 v16, v10

    .line 603
    .line 604
    float-to-double v9, v8

    .line 605
    add-double/2addr v2, v9

    .line 606
    const/16 v25, 0x0

    .line 607
    .line 608
    :goto_7
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 609
    .line 610
    .line 611
    move-result-wide v4

    .line 612
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 613
    .line 614
    mul-double/2addr v4, v9

    .line 615
    move v15, v12

    .line 616
    move/from16 v12, v19

    .line 617
    .line 618
    :goto_8
    int-to-double v9, v12

    .line 619
    cmpg-double v18, v9, v4

    .line 620
    .line 621
    if-gez v18, :cond_1b

    .line 622
    .line 623
    if-eqz v19, :cond_f

    .line 624
    .line 625
    move/from16 v28, v13

    .line 626
    .line 627
    :goto_9
    const/16 v18, 0x0

    .line 628
    .line 629
    goto :goto_a

    .line 630
    :cond_f
    move/from16 v28, v16

    .line 631
    .line 632
    goto :goto_9

    .line 633
    :goto_a
    cmpl-float v29, v25, v18

    .line 634
    .line 635
    if-eqz v29, :cond_11

    .line 636
    .line 637
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    .line 638
    .line 639
    sub-double v30, v4, v26

    .line 640
    .line 641
    cmpl-double v18, v9, v30

    .line 642
    .line 643
    if-nez v18, :cond_10

    .line 644
    .line 645
    mul-float v18, v6, v1

    .line 646
    .line 647
    const/high16 v17, 0x40000000    # 2.0f

    .line 648
    .line 649
    div-float v18, v18, v17

    .line 650
    .line 651
    move/from16 v43, v18

    .line 652
    .line 653
    move/from16 v18, v6

    .line 654
    .line 655
    move/from16 v6, v43

    .line 656
    .line 657
    goto :goto_c

    .line 658
    :cond_10
    const/high16 v17, 0x40000000    # 2.0f

    .line 659
    .line 660
    goto :goto_b

    .line 661
    :cond_11
    const/high16 v17, 0x40000000    # 2.0f

    .line 662
    .line 663
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    .line 664
    .line 665
    :goto_b
    move/from16 v18, v6

    .line 666
    .line 667
    move v6, v8

    .line 668
    :goto_c
    if-eqz v29, :cond_12

    .line 669
    .line 670
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 671
    .line 672
    sub-double v29, v4, v20

    .line 673
    .line 674
    cmpl-double v29, v9, v29

    .line 675
    .line 676
    if-nez v29, :cond_12

    .line 677
    .line 678
    move/from16 v29, v8

    .line 679
    .line 680
    move-wide/from16 v30, v9

    .line 681
    .line 682
    move/from16 v8, v25

    .line 683
    .line 684
    goto :goto_d

    .line 685
    :cond_12
    move/from16 v29, v8

    .line 686
    .line 687
    move-wide/from16 v30, v9

    .line 688
    .line 689
    move/from16 v8, v28

    .line 690
    .line 691
    :goto_d
    float-to-double v8, v8

    .line 692
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 693
    .line 694
    .line 695
    move-result-wide v32

    .line 696
    move-wide/from16 v34, v4

    .line 697
    .line 698
    mul-double v4, v32, v8

    .line 699
    .line 700
    double-to-float v4, v4

    .line 701
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 702
    .line 703
    .line 704
    move-result-wide v32

    .line 705
    mul-double v8, v8, v32

    .line 706
    .line 707
    double-to-float v5, v8

    .line 708
    const/4 v8, 0x0

    .line 709
    cmpl-float v9, v14, v8

    .line 710
    .line 711
    if-nez v9, :cond_13

    .line 712
    .line 713
    cmpl-float v9, v11, v8

    .line 714
    .line 715
    if-nez v9, :cond_13

    .line 716
    .line 717
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 718
    .line 719
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 720
    .line 721
    .line 722
    move/from16 v32, v11

    .line 723
    .line 724
    move/from16 v28, v13

    .line 725
    .line 726
    move/from16 v23, v14

    .line 727
    .line 728
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 729
    .line 730
    goto/16 :goto_13

    .line 731
    .line 732
    :cond_13
    float-to-double v9, v7

    .line 733
    move/from16 v28, v13

    .line 734
    .line 735
    move/from16 v23, v14

    .line 736
    .line 737
    float-to-double v13, v15

    .line 738
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 739
    .line 740
    .line 741
    move-result-wide v9

    .line 742
    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    sub-double/2addr v9, v13

    .line 748
    double-to-float v9, v9

    .line 749
    float-to-double v9, v9

    .line 750
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 751
    .line 752
    .line 753
    move-result-wide v13

    .line 754
    double-to-float v13, v13

    .line 755
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 756
    .line 757
    .line 758
    move-result-wide v9

    .line 759
    double-to-float v9, v9

    .line 760
    move v14, v9

    .line 761
    float-to-double v8, v5

    .line 762
    move/from16 v32, v11

    .line 763
    .line 764
    float-to-double v10, v4

    .line 765
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 766
    .line 767
    .line 768
    move-result-wide v8

    .line 769
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    sub-double/2addr v8, v10

    .line 775
    double-to-float v8, v8

    .line 776
    float-to-double v8, v8

    .line 777
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 778
    .line 779
    .line 780
    move-result-wide v10

    .line 781
    double-to-float v10, v10

    .line 782
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 783
    .line 784
    .line 785
    move-result-wide v8

    .line 786
    double-to-float v8, v8

    .line 787
    if-eqz v19, :cond_14

    .line 788
    .line 789
    move/from16 v9, v23

    .line 790
    .line 791
    goto :goto_e

    .line 792
    :cond_14
    move/from16 v9, v32

    .line 793
    .line 794
    :goto_e
    if-eqz v19, :cond_15

    .line 795
    .line 796
    move/from16 v11, v32

    .line 797
    .line 798
    goto :goto_f

    .line 799
    :cond_15
    move/from16 v11, v23

    .line 800
    .line 801
    :goto_f
    if-eqz v19, :cond_16

    .line 802
    .line 803
    move/from16 v36, v16

    .line 804
    .line 805
    goto :goto_10

    .line 806
    :cond_16
    move/from16 v36, v28

    .line 807
    .line 808
    :goto_10
    if-eqz v19, :cond_17

    .line 809
    .line 810
    move/from16 v37, v28

    .line 811
    .line 812
    goto :goto_11

    .line 813
    :cond_17
    move/from16 v37, v16

    .line 814
    .line 815
    :goto_11
    mul-float v36, v36, v9

    .line 816
    .line 817
    const v9, 0x3ef4e26d    # 0.47829f

    .line 818
    .line 819
    .line 820
    mul-float v36, v36, v9

    .line 821
    .line 822
    mul-float v13, v13, v36

    .line 823
    .line 824
    mul-float v36, v36, v14

    .line 825
    .line 826
    mul-float v37, v37, v11

    .line 827
    .line 828
    mul-float v37, v37, v9

    .line 829
    .line 830
    mul-float v10, v10, v37

    .line 831
    .line 832
    mul-float v37, v37, v8

    .line 833
    .line 834
    if-eqz v24, :cond_18

    .line 835
    .line 836
    if-nez v12, :cond_19

    .line 837
    .line 838
    mul-float/2addr v13, v1

    .line 839
    mul-float v36, v36, v1

    .line 840
    .line 841
    :cond_18
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 842
    .line 843
    goto :goto_12

    .line 844
    :cond_19
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 845
    .line 846
    sub-double v20, v34, v8

    .line 847
    .line 848
    cmpl-double v11, v30, v20

    .line 849
    .line 850
    if-nez v11, :cond_1a

    .line 851
    .line 852
    mul-float/2addr v10, v1

    .line 853
    mul-float v37, v37, v1

    .line 854
    .line 855
    :cond_1a
    :goto_12
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 856
    .line 857
    sub-float v13, v15, v13

    .line 858
    .line 859
    sub-float v38, v7, v36

    .line 860
    .line 861
    add-float v39, v4, v10

    .line 862
    .line 863
    add-float v40, v5, v37

    .line 864
    .line 865
    move-object/from16 v36, v11

    .line 866
    .line 867
    move/from16 v37, v13

    .line 868
    .line 869
    move/from16 v41, v4

    .line 870
    .line 871
    move/from16 v42, v5

    .line 872
    .line 873
    invoke-virtual/range {v36 .. v42}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 874
    .line 875
    .line 876
    :goto_13
    float-to-double v6, v6

    .line 877
    add-double/2addr v2, v6

    .line 878
    xor-int/lit8 v19, v19, 0x1

    .line 879
    .line 880
    add-int/lit8 v12, v12, 0x1

    .line 881
    .line 882
    move v15, v4

    .line 883
    move v7, v5

    .line 884
    move/from16 v6, v18

    .line 885
    .line 886
    move/from16 v14, v23

    .line 887
    .line 888
    move/from16 v13, v28

    .line 889
    .line 890
    move/from16 v8, v29

    .line 891
    .line 892
    move/from16 v11, v32

    .line 893
    .line 894
    move-wide/from16 v4, v34

    .line 895
    .line 896
    goto/16 :goto_8

    .line 897
    .line 898
    :cond_1b
    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    check-cast v1, Landroid/graphics/PointF;

    .line 903
    .line 904
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 905
    .line 906
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 907
    .line 908
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 909
    .line 910
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 911
    .line 912
    .line 913
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 914
    .line 915
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 916
    .line 917
    .line 918
    :goto_14
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 919
    .line 920
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 921
    .line 922
    .line 923
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 924
    .line 925
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 926
    .line 927
    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 928
    .line 929
    .line 930
    const/4 v1, 0x1

    .line 931
    iput-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 932
    .line 933
    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 934
    .line 935
    return-object v0
.end method

.method public final onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

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
