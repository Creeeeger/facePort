.class public final Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final codePointCache:Landroidx/collection/LongSparseArray;

.field public final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

.field public colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final composition:Lcom/airbnb/lottie/LottieComposition;

.field public final contentsForCharacter:Ljava/util/Map;

.field public final fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final matrix:Landroid/graphics/Matrix;

.field public final rectF:Landroid/graphics/RectF;

.field public final stringBuilder:Ljava/lang/StringBuilder;

.field public final strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

.field public strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final strokePaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

.field public final strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final textSubLines:Ljava/util/List;

.field public final trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 25
    .line 26
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 38
    .line 39
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 50
    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 57
    .line 58
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 59
    .line 60
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 64
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 73
    .line 74
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 77
    .line 78
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 79
    .line 80
    iget-object v0, p2, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 83
    .line 84
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 96
    .line 97
    if-eqz p1, :cond_0

    .line 98
    .line 99
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 100
    .line 101
    if-eqz p2, :cond_0

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    move-object v0, p2

    .line 108
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 111
    .line 112
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    if-eqz p1, :cond_1

    .line 119
    .line 120
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 121
    .line 122
    if-eqz p2, :cond_1

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    move-object v0, p2

    .line 129
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 132
    .line 133
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    if-eqz p1, :cond_2

    .line 140
    .line 141
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 142
    .line 143
    if-eqz p2, :cond_2

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    move-object v0, p2

    .line 150
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 153
    .line 154
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 158
    .line 159
    .line 160
    :cond_2
    if-eqz p1, :cond_3

    .line 161
    .line 162
    iget-object p1, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 163
    .line 164
    if-eqz p1, :cond_3

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    move-object p2, p1

    .line 171
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 172
    .line 173
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 174
    .line 175
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    return-void
.end method

.method public static drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    move-object v1, p2

    .line 34
    move-object v2, p0

    .line 35
    move-object v7, p1

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ne p2, v0, :cond_2

    .line 13
    .line 14
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_1
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 28
    .line 29
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 33
    .line 34
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_2
    const/4 v0, 0x2

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-ne p2, v0, :cond_5

    .line 50
    .line 51
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 52
    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    if-nez p1, :cond_4

    .line 59
    .line 60
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_4
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 65
    .line 66
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 70
    .line 71
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    .line 82
    .line 83
    if-ne p2, v0, :cond_8

    .line 84
    .line 85
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 86
    .line 87
    if-eqz p2, :cond_6

    .line 88
    .line 89
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    if-nez p1, :cond_7

    .line 93
    .line 94
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_7
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 99
    .line 100
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 104
    .line 105
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    .line 116
    .line 117
    if-ne p2, v0, :cond_b

    .line 118
    .line 119
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 120
    .line 121
    if-eqz p2, :cond_9

    .line 122
    .line 123
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 124
    .line 125
    .line 126
    :cond_9
    if-nez p1, :cond_a

    .line 127
    .line 128
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_a
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 132
    .line 133
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 137
    .line 138
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    .line 148
    .line 149
    if-ne p2, v0, :cond_e

    .line 150
    .line 151
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 152
    .line 153
    if-eqz p2, :cond_c

    .line 154
    .line 155
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 156
    .line 157
    .line 158
    :cond_c
    if-nez p1, :cond_d

    .line 159
    .line 160
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_d
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 164
    .line 165
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 169
    .line 170
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_e
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TYPEFACE:Landroid/graphics/Typeface;

    .line 180
    .line 181
    if-ne p2, v0, :cond_11

    .line 182
    .line 183
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 184
    .line 185
    if-eqz p2, :cond_f

    .line 186
    .line 187
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 188
    .line 189
    .line 190
    :cond_f
    if-nez p1, :cond_10

    .line 191
    .line 192
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_10
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 196
    .line 197
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 201
    .line 202
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_11
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT:Ljava/lang/CharSequence;

    .line 212
    .line 213
    if-ne p2, v0, :cond_12

    .line 214
    .line 215
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 216
    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    new-instance p2, Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 221
    .line 222
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lcom/airbnb/lottie/model/DocumentData;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 228
    .line 229
    .line 230
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;

    .line 231
    .line 232
    invoke-direct {v1, p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;-><init>(Lcom/airbnb/lottie/value/LottieFrameInfo;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/model/DocumentData;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 236
    .line 237
    .line 238
    :cond_12
    :goto_0
    return-void
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 28

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v9, v0

    .line 12
    check-cast v9, Lcom/airbnb/lottie/model/DocumentData;

    .line 13
    .line 14
    iget-object v10, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 15
    .line 16
    iget-object v0, v10, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    .line 17
    .line 18
    iget-object v1, v9, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v11, v0

    .line 25
    check-cast v11, Lcom/airbnb/lottie/model/Font;

    .line 26
    .line 27
    if-nez v11, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 37
    .line 38
    iget-object v12, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 75
    .line 76
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 80
    .line 81
    iget-object v13, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 118
    .line 119
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    .line 121
    .line 122
    :goto_1
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 125
    .line 126
    const/16 v1, 0x64

    .line 127
    .line 128
    if-nez v0, :cond_5

    .line 129
    .line 130
    move v0, v1

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    :goto_2
    mul-int/lit16 v0, v0, 0xff

    .line 143
    .line 144
    div-int/2addr v0, v1

    .line 145
    mul-int v0, v0, p3

    .line 146
    .line 147
    div-int/lit16 v0, v0, 0xff

    .line 148
    .line 149
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Ljava/lang/Float;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 174
    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Ljava/lang/Float;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 192
    .line 193
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    mul-float/2addr v1, v0

    .line 198
    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 199
    .line 200
    .line 201
    :goto_3
    iget-object v14, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 202
    .line 203
    iget-object v0, v14, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    .line 204
    .line 205
    iget-object v1, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 206
    .line 207
    const-string v2, "\n"

    .line 208
    .line 209
    const-string v3, "\u0003"

    .line 210
    .line 211
    const-string v4, "\r"

    .line 212
    .line 213
    const-string v5, "\r\n"

    .line 214
    .line 215
    const/high16 v16, 0x41200000    # 10.0f

    .line 216
    .line 217
    const/high16 v17, 0x42c80000    # 100.0f

    .line 218
    .line 219
    iget-object v15, v11, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v6, v11, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    .line 222
    .line 223
    if-nez v0, :cond_14

    .line 224
    .line 225
    iget-object v0, v14, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 228
    .line 229
    iget v0, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 230
    .line 231
    if-lez v0, :cond_14

    .line 232
    .line 233
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 234
    .line 235
    if-eqz v0, :cond_8

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Ljava/lang/Float;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    goto :goto_4

    .line 248
    :cond_8
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 249
    .line 250
    :goto_4
    div-float v0, v0, v17

    .line 251
    .line 252
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 253
    .line 254
    .line 255
    move/from16 v17, v0

    .line 256
    .line 257
    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 284
    .line 285
    int-to-float v0, v0

    .line 286
    div-float v0, v0, v16

    .line 287
    .line 288
    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 289
    .line 290
    if-eqz v2, :cond_a

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Ljava/lang/Float;

    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    :goto_5
    add-float/2addr v0, v1

    .line 303
    :cond_9
    move/from16 v16, v0

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_a
    if-eqz v1, :cond_9

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    check-cast v1, Ljava/lang/Float;

    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    goto :goto_5

    .line 319
    :goto_6
    const/4 v3, 0x0

    .line 320
    const/16 v18, -0x1

    .line 321
    .line 322
    :goto_7
    if-ge v3, v4, :cond_13

    .line 323
    .line 324
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    move-object v1, v0

    .line 329
    check-cast v1, Ljava/lang/String;

    .line 330
    .line 331
    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 332
    .line 333
    if-nez v0, :cond_b

    .line 334
    .line 335
    const/4 v2, 0x0

    .line 336
    goto :goto_8

    .line 337
    :cond_b
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 338
    .line 339
    move v2, v0

    .line 340
    :goto_8
    const/16 v19, 0x1

    .line 341
    .line 342
    move/from16 p2, v17

    .line 343
    .line 344
    move-object/from16 v0, p0

    .line 345
    .line 346
    move/from16 v17, v3

    .line 347
    .line 348
    move-object v3, v11

    .line 349
    move/from16 v20, v4

    .line 350
    .line 351
    move/from16 v4, p2

    .line 352
    .line 353
    move-object/from16 v21, v5

    .line 354
    .line 355
    move/from16 v5, v16

    .line 356
    .line 357
    move-object/from16 v22, v11

    .line 358
    .line 359
    move-object v11, v6

    .line 360
    move/from16 v6, v19

    .line 361
    .line 362
    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    const/4 v1, 0x0

    .line 367
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-ge v1, v2, :cond_12

    .line 372
    .line 373
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    check-cast v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 378
    .line 379
    add-int/lit8 v3, v18, 0x1

    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 382
    .line 383
    .line 384
    iget v4, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 385
    .line 386
    invoke-virtual {v7, v8, v9, v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    if-eqz v4, :cond_11

    .line 391
    .line 392
    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 393
    .line 394
    const/4 v4, 0x0

    .line 395
    :goto_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    if-ge v4, v5, :cond_11

    .line 400
    .line 401
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    invoke-static {v5, v11, v15}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    iget-object v6, v10, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 410
    .line 411
    invoke-virtual {v6, v5}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    check-cast v5, Lcom/airbnb/lottie/model/FontCharacter;

    .line 416
    .line 417
    if-nez v5, :cond_c

    .line 418
    .line 419
    move/from16 v6, p2

    .line 420
    .line 421
    move-object/from16 v19, v0

    .line 422
    .line 423
    move-object/from16 v18, v2

    .line 424
    .line 425
    move/from16 v23, v3

    .line 426
    .line 427
    move-object/from16 v25, v10

    .line 428
    .line 429
    goto/16 :goto_f

    .line 430
    .line 431
    :cond_c
    iget-object v6, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 432
    .line 433
    check-cast v6, Ljava/util/HashMap;

    .line 434
    .line 435
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    if-eqz v6, :cond_d

    .line 440
    .line 441
    iget-object v6, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 442
    .line 443
    check-cast v6, Ljava/util/HashMap;

    .line 444
    .line 445
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    check-cast v6, Ljava/util/List;

    .line 450
    .line 451
    move-object/from16 v19, v0

    .line 452
    .line 453
    move-object/from16 v18, v2

    .line 454
    .line 455
    move/from16 v23, v3

    .line 456
    .line 457
    goto :goto_c

    .line 458
    :cond_d
    iget-object v6, v5, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    .line 459
    .line 460
    move-object/from16 v19, v0

    .line 461
    .line 462
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    move-object/from16 v18, v2

    .line 467
    .line 468
    new-instance v2, Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    .line 472
    .line 473
    move/from16 v23, v3

    .line 474
    .line 475
    const/4 v3, 0x0

    .line 476
    :goto_b
    if-ge v3, v0, :cond_e

    .line 477
    .line 478
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v24

    .line 482
    move/from16 v25, v0

    .line 483
    .line 484
    move-object/from16 v0, v24

    .line 485
    .line 486
    check-cast v0, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 487
    .line 488
    move-object/from16 v24, v6

    .line 489
    .line 490
    new-instance v6, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 491
    .line 492
    invoke-direct {v6, v14, v7, v0, v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;Lcom/airbnb/lottie/LottieComposition;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    add-int/lit8 v3, v3, 0x1

    .line 499
    .line 500
    move-object/from16 v6, v24

    .line 501
    .line 502
    move/from16 v0, v25

    .line 503
    .line 504
    goto :goto_b

    .line 505
    :cond_e
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 506
    .line 507
    check-cast v0, Ljava/util/HashMap;

    .line 508
    .line 509
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-object v6, v2

    .line 513
    :goto_c
    const/4 v0, 0x0

    .line 514
    :goto_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-ge v0, v2, :cond_10

    .line 519
    .line 520
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    check-cast v2, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 525
    .line 526
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 531
    .line 532
    move-object/from16 v24, v6

    .line 533
    .line 534
    const/4 v6, 0x0

    .line 535
    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 536
    .line 537
    .line 538
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 539
    .line 540
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 541
    .line 542
    .line 543
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 544
    .line 545
    iget v6, v9, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 546
    .line 547
    neg-float v6, v6

    .line 548
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 549
    .line 550
    .line 551
    move-result v25

    .line 552
    mul-float v6, v6, v25

    .line 553
    .line 554
    move-object/from16 v25, v10

    .line 555
    .line 556
    const/4 v10, 0x0

    .line 557
    invoke-virtual {v3, v10, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 558
    .line 559
    .line 560
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 561
    .line 562
    move/from16 v6, p2

    .line 563
    .line 564
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 565
    .line 566
    .line 567
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 568
    .line 569
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 570
    .line 571
    .line 572
    iget-boolean v3, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 573
    .line 574
    if-eqz v3, :cond_f

    .line 575
    .line 576
    invoke-static {v2, v12, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 577
    .line 578
    .line 579
    invoke-static {v2, v13, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 580
    .line 581
    .line 582
    goto :goto_e

    .line 583
    :cond_f
    invoke-static {v2, v13, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 584
    .line 585
    .line 586
    invoke-static {v2, v12, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 587
    .line 588
    .line 589
    :goto_e
    add-int/lit8 v0, v0, 0x1

    .line 590
    .line 591
    move/from16 p2, v6

    .line 592
    .line 593
    move-object/from16 v6, v24

    .line 594
    .line 595
    move-object/from16 v10, v25

    .line 596
    .line 597
    goto :goto_d

    .line 598
    :cond_10
    move/from16 v6, p2

    .line 599
    .line 600
    move-object/from16 v25, v10

    .line 601
    .line 602
    iget-wide v2, v5, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 603
    .line 604
    double-to-float v0, v2

    .line 605
    mul-float/2addr v0, v6

    .line 606
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    mul-float/2addr v2, v0

    .line 611
    add-float v2, v2, v16

    .line 612
    .line 613
    const/4 v0, 0x0

    .line 614
    invoke-virtual {v8, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 615
    .line 616
    .line 617
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 618
    .line 619
    move/from16 p2, v6

    .line 620
    .line 621
    move-object/from16 v2, v18

    .line 622
    .line 623
    move-object/from16 v0, v19

    .line 624
    .line 625
    move/from16 v3, v23

    .line 626
    .line 627
    move-object/from16 v10, v25

    .line 628
    .line 629
    goto/16 :goto_a

    .line 630
    .line 631
    :cond_11
    move/from16 v6, p2

    .line 632
    .line 633
    move-object/from16 v19, v0

    .line 634
    .line 635
    move/from16 v23, v3

    .line 636
    .line 637
    move-object/from16 v25, v10

    .line 638
    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 640
    .line 641
    .line 642
    add-int/lit8 v1, v1, 0x1

    .line 643
    .line 644
    move/from16 p2, v6

    .line 645
    .line 646
    move-object/from16 v0, v19

    .line 647
    .line 648
    move/from16 v18, v23

    .line 649
    .line 650
    move-object/from16 v10, v25

    .line 651
    .line 652
    goto/16 :goto_9

    .line 653
    .line 654
    :cond_12
    move/from16 v6, p2

    .line 655
    .line 656
    move-object/from16 v25, v10

    .line 657
    .line 658
    add-int/lit8 v3, v17, 0x1

    .line 659
    .line 660
    move/from16 v17, v6

    .line 661
    .line 662
    move-object v6, v11

    .line 663
    move/from16 v4, v20

    .line 664
    .line 665
    move-object/from16 v5, v21

    .line 666
    .line 667
    move-object/from16 v11, v22

    .line 668
    .line 669
    goto/16 :goto_7

    .line 670
    .line 671
    :cond_13
    move-object v4, v8

    .line 672
    goto/16 :goto_28

    .line 673
    .line 674
    :cond_14
    move-object/from16 v22, v11

    .line 675
    .line 676
    move-object v11, v6

    .line 677
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 678
    .line 679
    if-eqz v0, :cond_15

    .line 680
    .line 681
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    check-cast v0, Landroid/graphics/Typeface;

    .line 686
    .line 687
    if-eqz v0, :cond_15

    .line 688
    .line 689
    move-object/from16 v6, v22

    .line 690
    .line 691
    goto/16 :goto_15

    .line 692
    .line 693
    :cond_15
    iget-object v0, v14, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    .line 694
    .line 695
    if-eqz v0, :cond_18

    .line 696
    .line 697
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-result v6

    .line 701
    if-eqz v6, :cond_16

    .line 702
    .line 703
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    check-cast v0, Landroid/graphics/Typeface;

    .line 708
    .line 709
    move-object/from16 v6, v22

    .line 710
    .line 711
    goto/16 :goto_14

    .line 712
    .line 713
    :cond_16
    move-object/from16 v6, v22

    .line 714
    .line 715
    iget-object v10, v6, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    .line 716
    .line 717
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v19

    .line 721
    if-eqz v19, :cond_17

    .line 722
    .line 723
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    check-cast v0, Landroid/graphics/Typeface;

    .line 728
    .line 729
    goto/16 :goto_14

    .line 730
    .line 731
    :cond_17
    new-instance v10, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    const-string v8, "-"

    .line 740
    .line 741
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v8

    .line 751
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v10

    .line 755
    if-eqz v10, :cond_19

    .line 756
    .line 757
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    check-cast v0, Landroid/graphics/Typeface;

    .line 762
    .line 763
    goto/16 :goto_14

    .line 764
    .line 765
    :cond_18
    move-object/from16 v6, v22

    .line 766
    .line 767
    :cond_19
    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    if-eqz v0, :cond_21

    .line 772
    .line 773
    iget-object v8, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    .line 774
    .line 775
    iput-object v11, v8, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    .line 776
    .line 777
    iput-object v15, v8, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    .line 778
    .line 779
    iget-object v10, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 780
    .line 781
    check-cast v10, Ljava/util/HashMap;

    .line 782
    .line 783
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v10

    .line 787
    check-cast v10, Landroid/graphics/Typeface;

    .line 788
    .line 789
    if-eqz v10, :cond_1a

    .line 790
    .line 791
    goto :goto_13

    .line 792
    :cond_1a
    iget-object v10, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    .line 793
    .line 794
    check-cast v10, Ljava/util/HashMap;

    .line 795
    .line 796
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v10

    .line 800
    check-cast v10, Landroid/graphics/Typeface;

    .line 801
    .line 802
    if-eqz v10, :cond_1b

    .line 803
    .line 804
    goto :goto_10

    .line 805
    :cond_1b
    iget-object v10, v6, Lcom/airbnb/lottie/model/Font;->typeface:Landroid/graphics/Typeface;

    .line 806
    .line 807
    if-eqz v10, :cond_1c

    .line 808
    .line 809
    goto :goto_10

    .line 810
    :cond_1c
    new-instance v10, Ljava/lang/StringBuilder;

    .line 811
    .line 812
    const-string v14, "fonts/"

    .line 813
    .line 814
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    iget-object v14, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 821
    .line 822
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v10

    .line 829
    iget-object v14, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 830
    .line 831
    invoke-static {v14, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 832
    .line 833
    .line 834
    move-result-object v10

    .line 835
    iget-object v14, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    .line 836
    .line 837
    check-cast v14, Ljava/util/HashMap;

    .line 838
    .line 839
    invoke-virtual {v14, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    :goto_10
    const-string v11, "Italic"

    .line 843
    .line 844
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 845
    .line 846
    .line 847
    move-result v11

    .line 848
    const-string v14, "Bold"

    .line 849
    .line 850
    invoke-virtual {v15, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 851
    .line 852
    .line 853
    move-result v14

    .line 854
    if-eqz v11, :cond_1d

    .line 855
    .line 856
    if-eqz v14, :cond_1d

    .line 857
    .line 858
    const/4 v11, 0x3

    .line 859
    goto :goto_11

    .line 860
    :cond_1d
    if-eqz v11, :cond_1e

    .line 861
    .line 862
    const/4 v11, 0x2

    .line 863
    goto :goto_11

    .line 864
    :cond_1e
    if-eqz v14, :cond_1f

    .line 865
    .line 866
    const/4 v11, 0x1

    .line 867
    goto :goto_11

    .line 868
    :cond_1f
    const/4 v11, 0x0

    .line 869
    :goto_11
    invoke-virtual {v10}, Landroid/graphics/Typeface;->getStyle()I

    .line 870
    .line 871
    .line 872
    move-result v14

    .line 873
    if-ne v14, v11, :cond_20

    .line 874
    .line 875
    goto :goto_12

    .line 876
    :cond_20
    invoke-static {v10, v11}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 877
    .line 878
    .line 879
    move-result-object v10

    .line 880
    :goto_12
    iget-object v0, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 881
    .line 882
    check-cast v0, Ljava/util/HashMap;

    .line 883
    .line 884
    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    :goto_13
    move-object v0, v10

    .line 888
    goto :goto_14

    .line 889
    :cond_21
    const/4 v0, 0x0

    .line 890
    :goto_14
    if-eqz v0, :cond_22

    .line 891
    .line 892
    goto :goto_15

    .line 893
    :cond_22
    iget-object v0, v6, Lcom/airbnb/lottie/model/Font;->typeface:Landroid/graphics/Typeface;

    .line 894
    .line 895
    :goto_15
    if-nez v0, :cond_24

    .line 896
    .line 897
    :cond_23
    move-object/from16 v4, p1

    .line 898
    .line 899
    goto/16 :goto_28

    .line 900
    .line 901
    :cond_24
    iget-object v8, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 902
    .line 903
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 904
    .line 905
    .line 906
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 907
    .line 908
    if-eqz v0, :cond_25

    .line 909
    .line 910
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    check-cast v0, Ljava/lang/Float;

    .line 915
    .line 916
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    goto :goto_16

    .line 921
    :cond_25
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 922
    .line 923
    :goto_16
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 924
    .line 925
    .line 926
    move-result v10

    .line 927
    mul-float/2addr v10, v0

    .line 928
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v12}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 932
    .line 933
    .line 934
    move-result-object v10

    .line 935
    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    .line 939
    .line 940
    .line 941
    move-result v10

    .line 942
    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 943
    .line 944
    .line 945
    iget v10, v9, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 946
    .line 947
    int-to-float v10, v10

    .line 948
    div-float v10, v10, v16

    .line 949
    .line 950
    iget-object v11, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 951
    .line 952
    if-eqz v11, :cond_26

    .line 953
    .line 954
    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    check-cast v1, Ljava/lang/Float;

    .line 959
    .line 960
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 961
    .line 962
    .line 963
    move-result v1

    .line 964
    :goto_17
    add-float/2addr v10, v1

    .line 965
    goto :goto_18

    .line 966
    :cond_26
    if-eqz v1, :cond_27

    .line 967
    .line 968
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v1

    .line 972
    check-cast v1, Ljava/lang/Float;

    .line 973
    .line 974
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 975
    .line 976
    .line 977
    move-result v1

    .line 978
    goto :goto_17

    .line 979
    :cond_27
    :goto_18
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 980
    .line 981
    .line 982
    move-result v1

    .line 983
    mul-float/2addr v1, v10

    .line 984
    mul-float/2addr v1, v0

    .line 985
    div-float v10, v1, v17

    .line 986
    .line 987
    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v8

    .line 1007
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1008
    .line 1009
    .line 1010
    move-result v11

    .line 1011
    const/4 v14, 0x0

    .line 1012
    const/16 v18, -0x1

    .line 1013
    .line 1014
    :goto_19
    if-ge v14, v11, :cond_23

    .line 1015
    .line 1016
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    move-object v1, v0

    .line 1021
    check-cast v1, Ljava/lang/String;

    .line 1022
    .line 1023
    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 1024
    .line 1025
    if-nez v0, :cond_28

    .line 1026
    .line 1027
    const/4 v2, 0x0

    .line 1028
    goto :goto_1a

    .line 1029
    :cond_28
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 1030
    .line 1031
    move v2, v0

    .line 1032
    :goto_1a
    const/4 v4, 0x0

    .line 1033
    const/4 v15, 0x0

    .line 1034
    move-object/from16 v0, p0

    .line 1035
    .line 1036
    move-object v3, v6

    .line 1037
    move v5, v10

    .line 1038
    move-object/from16 v16, v6

    .line 1039
    .line 1040
    move v6, v15

    .line 1041
    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    const/4 v6, 0x0

    .line 1046
    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1047
    .line 1048
    .line 1049
    move-result v1

    .line 1050
    if-ge v6, v1, :cond_34

    .line 1051
    .line 1052
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v1

    .line 1056
    check-cast v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 1057
    .line 1058
    add-int/lit8 v2, v18, 0x1

    .line 1059
    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1061
    .line 1062
    .line 1063
    iget v3, v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 1064
    .line 1065
    move-object/from16 v4, p1

    .line 1066
    .line 1067
    invoke-virtual {v7, v4, v9, v2, v3}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v3

    .line 1071
    if-eqz v3, :cond_33

    .line 1072
    .line 1073
    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 1074
    .line 1075
    const/4 v3, 0x0

    .line 1076
    :goto_1c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1077
    .line 1078
    .line 1079
    move-result v5

    .line 1080
    if-ge v3, v5, :cond_33

    .line 1081
    .line 1082
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 1083
    .line 1084
    .line 1085
    move-result v5

    .line 1086
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    .line 1087
    .line 1088
    .line 1089
    move-result v15

    .line 1090
    add-int/2addr v15, v3

    .line 1091
    move-object/from16 v17, v0

    .line 1092
    .line 1093
    :goto_1d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    if-ge v15, v0, :cond_2b

    .line 1098
    .line 1099
    invoke-virtual {v1, v15}, Ljava/lang/String;->codePointAt(I)I

    .line 1100
    .line 1101
    .line 1102
    move-result v0

    .line 1103
    move/from16 v18, v2

    .line 1104
    .line 1105
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    .line 1106
    .line 1107
    .line 1108
    move-result v2

    .line 1109
    move-object/from16 v19, v8

    .line 1110
    .line 1111
    const/16 v8, 0x10

    .line 1112
    .line 1113
    if-eq v2, v8, :cond_2a

    .line 1114
    .line 1115
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    .line 1116
    .line 1117
    .line 1118
    move-result v2

    .line 1119
    const/16 v8, 0x1b

    .line 1120
    .line 1121
    if-eq v2, v8, :cond_2a

    .line 1122
    .line 1123
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    .line 1124
    .line 1125
    .line 1126
    move-result v2

    .line 1127
    const/4 v8, 0x6

    .line 1128
    if-eq v2, v8, :cond_2a

    .line 1129
    .line 1130
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    .line 1131
    .line 1132
    .line 1133
    move-result v2

    .line 1134
    const/16 v8, 0x1c

    .line 1135
    .line 1136
    if-eq v2, v8, :cond_2a

    .line 1137
    .line 1138
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    .line 1139
    .line 1140
    .line 1141
    move-result v2

    .line 1142
    const/16 v8, 0x8

    .line 1143
    .line 1144
    if-eq v2, v8, :cond_2a

    .line 1145
    .line 1146
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    .line 1147
    .line 1148
    .line 1149
    move-result v2

    .line 1150
    const/16 v8, 0x13

    .line 1151
    .line 1152
    if-ne v2, v8, :cond_29

    .line 1153
    .line 1154
    goto :goto_1f

    .line 1155
    :cond_29
    :goto_1e
    move v0, v6

    .line 1156
    goto :goto_20

    .line 1157
    :cond_2a
    :goto_1f
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 1158
    .line 1159
    .line 1160
    move-result v2

    .line 1161
    add-int/2addr v15, v2

    .line 1162
    mul-int/lit8 v5, v5, 0x1f

    .line 1163
    .line 1164
    add-int/2addr v5, v0

    .line 1165
    move/from16 v2, v18

    .line 1166
    .line 1167
    move-object/from16 v8, v19

    .line 1168
    .line 1169
    goto :goto_1d

    .line 1170
    :cond_2b
    move/from16 v18, v2

    .line 1171
    .line 1172
    move-object/from16 v19, v8

    .line 1173
    .line 1174
    goto :goto_1e

    .line 1175
    :goto_20
    int-to-long v5, v5

    .line 1176
    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 1177
    .line 1178
    iget-boolean v8, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 1179
    .line 1180
    if-eqz v8, :cond_2f

    .line 1181
    .line 1182
    iget v8, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 1183
    .line 1184
    move/from16 v20, v11

    .line 1185
    .line 1186
    iget-object v11, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 1187
    .line 1188
    move/from16 v21, v14

    .line 1189
    .line 1190
    iget-object v14, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 1191
    .line 1192
    move/from16 v22, v0

    .line 1193
    .line 1194
    move/from16 v23, v10

    .line 1195
    .line 1196
    const/4 v0, 0x0

    .line 1197
    const/4 v10, 0x0

    .line 1198
    :goto_21
    if-ge v10, v8, :cond_2e

    .line 1199
    .line 1200
    move/from16 v24, v8

    .line 1201
    .line 1202
    aget-object v8, v14, v10

    .line 1203
    .line 1204
    move-object/from16 v25, v13

    .line 1205
    .line 1206
    sget-object v13, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 1207
    .line 1208
    if-eq v8, v13, :cond_2d

    .line 1209
    .line 1210
    if-eq v10, v0, :cond_2c

    .line 1211
    .line 1212
    aget-wide v26, v11, v10

    .line 1213
    .line 1214
    aput-wide v26, v11, v0

    .line 1215
    .line 1216
    aput-object v8, v14, v0

    .line 1217
    .line 1218
    const/4 v8, 0x0

    .line 1219
    aput-object v8, v14, v10

    .line 1220
    .line 1221
    goto :goto_22

    .line 1222
    :cond_2c
    const/4 v8, 0x0

    .line 1223
    :goto_22
    add-int/lit8 v0, v0, 0x1

    .line 1224
    .line 1225
    goto :goto_23

    .line 1226
    :cond_2d
    const/4 v8, 0x0

    .line 1227
    :goto_23
    add-int/lit8 v10, v10, 0x1

    .line 1228
    .line 1229
    move/from16 v8, v24

    .line 1230
    .line 1231
    move-object/from16 v13, v25

    .line 1232
    .line 1233
    goto :goto_21

    .line 1234
    :cond_2e
    move-object/from16 v25, v13

    .line 1235
    .line 1236
    const/4 v8, 0x0

    .line 1237
    const/4 v10, 0x0

    .line 1238
    iput-boolean v10, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 1239
    .line 1240
    iput v0, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 1241
    .line 1242
    goto :goto_24

    .line 1243
    :cond_2f
    move/from16 v22, v0

    .line 1244
    .line 1245
    move/from16 v23, v10

    .line 1246
    .line 1247
    move/from16 v20, v11

    .line 1248
    .line 1249
    move-object/from16 v25, v13

    .line 1250
    .line 1251
    move/from16 v21, v14

    .line 1252
    .line 1253
    const/4 v8, 0x0

    .line 1254
    :goto_24
    iget-object v0, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 1255
    .line 1256
    iget v10, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 1257
    .line 1258
    invoke-static {v0, v10, v5, v6}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    if-ltz v0, :cond_30

    .line 1263
    .line 1264
    invoke-virtual {v2, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    check-cast v0, Ljava/lang/String;

    .line 1269
    .line 1270
    const/4 v10, 0x0

    .line 1271
    goto :goto_26

    .line 1272
    :cond_30
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    const/4 v10, 0x0

    .line 1275
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1276
    .line 1277
    .line 1278
    move v11, v3

    .line 1279
    :goto_25
    if-ge v11, v15, :cond_31

    .line 1280
    .line 1281
    invoke-virtual {v1, v11}, Ljava/lang/String;->codePointAt(I)I

    .line 1282
    .line 1283
    .line 1284
    move-result v13

    .line 1285
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    .line 1288
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    .line 1289
    .line 1290
    .line 1291
    move-result v13

    .line 1292
    add-int/2addr v11, v13

    .line 1293
    goto :goto_25

    .line 1294
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    invoke-virtual {v2, v5, v6, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1299
    .line 1300
    .line 1301
    :goto_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1302
    .line 1303
    .line 1304
    move-result v2

    .line 1305
    add-int/2addr v3, v2

    .line 1306
    iget-boolean v2, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 1307
    .line 1308
    if-eqz v2, :cond_32

    .line 1309
    .line 1310
    invoke-static {v0, v12, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1311
    .line 1312
    .line 1313
    move-object/from16 v2, v25

    .line 1314
    .line 1315
    invoke-static {v0, v2, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1316
    .line 1317
    .line 1318
    goto :goto_27

    .line 1319
    :cond_32
    move-object/from16 v2, v25

    .line 1320
    .line 1321
    invoke-static {v0, v2, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1322
    .line 1323
    .line 1324
    invoke-static {v0, v12, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1325
    .line 1326
    .line 1327
    :goto_27
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 1328
    .line 1329
    .line 1330
    move-result v0

    .line 1331
    add-float v0, v0, v23

    .line 1332
    .line 1333
    const/4 v5, 0x0

    .line 1334
    invoke-virtual {v4, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1335
    .line 1336
    .line 1337
    move-object v13, v2

    .line 1338
    move-object/from16 v0, v17

    .line 1339
    .line 1340
    move/from16 v2, v18

    .line 1341
    .line 1342
    move-object/from16 v8, v19

    .line 1343
    .line 1344
    move/from16 v11, v20

    .line 1345
    .line 1346
    move/from16 v14, v21

    .line 1347
    .line 1348
    move/from16 v6, v22

    .line 1349
    .line 1350
    move/from16 v10, v23

    .line 1351
    .line 1352
    goto/16 :goto_1c

    .line 1353
    .line 1354
    :cond_33
    move-object/from16 v17, v0

    .line 1355
    .line 1356
    move/from16 v18, v2

    .line 1357
    .line 1358
    move/from16 v22, v6

    .line 1359
    .line 1360
    move-object/from16 v19, v8

    .line 1361
    .line 1362
    move/from16 v23, v10

    .line 1363
    .line 1364
    move/from16 v20, v11

    .line 1365
    .line 1366
    move-object v2, v13

    .line 1367
    move/from16 v21, v14

    .line 1368
    .line 1369
    const/4 v5, 0x0

    .line 1370
    const/4 v8, 0x0

    .line 1371
    const/4 v10, 0x0

    .line 1372
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1373
    .line 1374
    .line 1375
    add-int/lit8 v6, v22, 0x1

    .line 1376
    .line 1377
    move-object v13, v2

    .line 1378
    move-object/from16 v0, v17

    .line 1379
    .line 1380
    move-object/from16 v8, v19

    .line 1381
    .line 1382
    move/from16 v11, v20

    .line 1383
    .line 1384
    move/from16 v14, v21

    .line 1385
    .line 1386
    move/from16 v10, v23

    .line 1387
    .line 1388
    goto/16 :goto_1b

    .line 1389
    .line 1390
    :cond_34
    move-object/from16 v4, p1

    .line 1391
    .line 1392
    move-object/from16 v19, v8

    .line 1393
    .line 1394
    move/from16 v23, v10

    .line 1395
    .line 1396
    move/from16 v20, v11

    .line 1397
    .line 1398
    move-object v2, v13

    .line 1399
    move/from16 v21, v14

    .line 1400
    .line 1401
    const/4 v5, 0x0

    .line 1402
    const/4 v8, 0x0

    .line 1403
    const/4 v10, 0x0

    .line 1404
    add-int/lit8 v14, v21, 0x1

    .line 1405
    .line 1406
    move-object/from16 v6, v16

    .line 1407
    .line 1408
    move-object/from16 v8, v19

    .line 1409
    .line 1410
    move/from16 v10, v23

    .line 1411
    .line 1412
    goto/16 :goto_19

    .line 1413
    .line 1414
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1415
    .line 1416
    .line 1417
    return-void
.end method

.method public final ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :goto_0
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 12
    .line 13
    new-instance v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iput v3, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 24
    .line 25
    check-cast v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 34
    .line 35
    add-int/lit8 p1, p1, -0x1

    .line 36
    .line 37
    check-cast p0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 44
    .line 45
    return-object p0
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    int-to-float p2, p2

    .line 13
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-float p0, p0

    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 4
    .line 5
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v4, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v4, p2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 15
    .line 16
    mul-float/2addr v4, v2

    .line 17
    iget v5, v0, Landroid/graphics/PointF;->y:F

    .line 18
    .line 19
    add-float/2addr v4, v5

    .line 20
    :goto_0
    int-to-float p3, p3

    .line 21
    iget v5, p2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 22
    .line 23
    mul-float/2addr p3, v5

    .line 24
    mul-float/2addr p3, v2

    .line 25
    add-float/2addr p3, v4

    .line 26
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget p0, v0, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    iget v2, v1, Landroid/graphics/PointF;->y:F

    .line 39
    .line 40
    add-float/2addr p0, v2

    .line 41
    iget v2, p2, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 42
    .line 43
    add-float/2addr p0, v2

    .line 44
    cmpl-float p0, p3, p0

    .line 45
    .line 46
    if-ltz p0, :cond_1

    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :cond_1
    if-nez v0, :cond_2

    .line 51
    .line 52
    move p0, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget p0, v0, Landroid/graphics/PointF;->x:F

    .line 55
    .line 56
    :goto_1
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 60
    .line 61
    :goto_2
    iget-object p2, p2, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    const/4 v0, 0x1

    .line 68
    if-eqz p2, :cond_6

    .line 69
    .line 70
    if-eq p2, v0, :cond_5

    .line 71
    .line 72
    const/4 v1, 0x2

    .line 73
    if-eq p2, v1, :cond_4

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    const/high16 p2, 0x40000000    # 2.0f

    .line 77
    .line 78
    div-float/2addr v3, p2

    .line 79
    add-float/2addr v3, p0

    .line 80
    div-float/2addr p4, p2

    .line 81
    sub-float/2addr v3, p4

    .line 82
    invoke-virtual {p1, v3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    add-float/2addr p0, v3

    .line 87
    sub-float/2addr p0, p4

    .line 88
    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    .line 94
    .line 95
    :goto_3
    return v0
.end method

.method public final splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move v5, v3

    .line 10
    move v7, v5

    .line 11
    move v8, v7

    .line 12
    move v9, v8

    .line 13
    move v11, v9

    .line 14
    move v6, v4

    .line 15
    move v10, v6

    .line 16
    move v12, v10

    .line 17
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v13

    .line 21
    if-ge v5, v13, :cond_7

    .line 22
    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    if-eqz p6, :cond_1

    .line 28
    .line 29
    iget-object v14, v2, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v2, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v13, v15, v14}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v14

    .line 37
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 38
    .line 39
    iget-object v15, v15, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 40
    .line 41
    invoke-virtual {v15, v14}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v14

    .line 45
    check-cast v14, Lcom/airbnb/lottie/model/FontCharacter;

    .line 46
    .line 47
    if-nez v14, :cond_0

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_0
    iget-wide v14, v14, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 52
    .line 53
    double-to-float v14, v14

    .line 54
    mul-float v14, v14, p4

    .line 55
    .line 56
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    mul-float/2addr v15, v14

    .line 61
    add-float v15, v15, p5

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v14, v5, 0x1

    .line 65
    .line 66
    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 71
    .line 72
    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    add-float v15, v14, p5

    .line 77
    .line 78
    :goto_1
    const/16 v14, 0x20

    .line 79
    .line 80
    if-ne v13, v14, :cond_2

    .line 81
    .line 82
    const/4 v9, 0x1

    .line 83
    move v12, v15

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    if-eqz v9, :cond_3

    .line 86
    .line 87
    move v9, v3

    .line 88
    move v11, v5

    .line 89
    move v10, v15

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    add-float/2addr v10, v15

    .line 92
    :goto_2
    add-float/2addr v6, v15

    .line 93
    cmpl-float v16, p2, v4

    .line 94
    .line 95
    if-lez v16, :cond_6

    .line 96
    .line 97
    cmpl-float v16, v6, p2

    .line 98
    .line 99
    if-ltz v16, :cond_6

    .line 100
    .line 101
    if-ne v13, v14, :cond_4

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    if-ne v11, v8, :cond_5

    .line 111
    .line 112
    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    sub-int/2addr v11, v8

    .line 129
    int-to-float v8, v11

    .line 130
    mul-float/2addr v8, v12

    .line 131
    sub-float/2addr v6, v15

    .line 132
    sub-float/2addr v6, v8

    .line 133
    iput-object v10, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 134
    .line 135
    iput v6, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 136
    .line 137
    move v8, v5

    .line 138
    move v11, v8

    .line 139
    move v6, v15

    .line 140
    move v10, v6

    .line 141
    goto :goto_3

    .line 142
    :cond_5
    add-int/lit8 v14, v11, -0x1

    .line 143
    .line 144
    invoke-virtual {v1, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    sub-int/2addr v8, v15

    .line 161
    int-to-float v8, v8

    .line 162
    mul-float/2addr v8, v12

    .line 163
    sub-float/2addr v6, v10

    .line 164
    sub-float/2addr v6, v8

    .line 165
    sub-float/2addr v6, v12

    .line 166
    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 167
    .line 168
    iput v6, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 169
    .line 170
    move v6, v10

    .line 171
    move v8, v11

    .line 172
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_7
    cmpl-float v2, v6, v4

    .line 177
    .line 178
    if-lez v2, :cond_8

    .line 179
    .line 180
    add-int/lit8 v7, v7, 0x1

    .line 181
    .line 182
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iput-object v1, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 191
    .line 192
    iput v6, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 193
    .line 194
    :cond_8
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 195
    .line 196
    check-cast v0, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0
.end method
