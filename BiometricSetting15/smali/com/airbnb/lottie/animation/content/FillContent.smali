.class public final Lcom/airbnb/lottie/animation/content/FillContent;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public blurMaskFilterRadius:F

.field public final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

.field public colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

.field public final hidden:Z

.field public final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

.field public final paint:Lcom/airbnb/lottie/animation/LPaint;

.field public final path:Landroid/graphics/Path;

.field public final paths:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeFill;)V
    .locals 6

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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v1, Lcom/airbnb/lottie/animation/LPaint;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Lcom/airbnb/lottie/animation/LPaint;

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 27
    .line 28
    iget-object v2, p3, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->name:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean v2, p3, Lcom/airbnb/lottie/model/content/ShapeFill;->hidden:Z

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->hidden:Z

    .line 35
    .line 36
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p1, p1, Lcom/airbnb/lottie/model/content/BlurEffect;->blurriness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-direct {p1, p0, p2, v2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 80
    .line 81
    :cond_1
    const/4 p1, 0x0

    .line 82
    iget-object v2, p3, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 83
    .line 84
    if-eqz v2, :cond_9

    .line 85
    .line 86
    iget-object v3, p3, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 87
    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_2
    iget-object v4, p2, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 93
    .line 94
    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/Layer;->blendMode:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const/4 v5, 0x2

    .line 101
    if-eq v4, v5, :cond_7

    .line 102
    .line 103
    const/4 v5, 0x3

    .line 104
    if-eq v4, v5, :cond_6

    .line 105
    .line 106
    const/4 v5, 0x4

    .line 107
    if-eq v4, v5, :cond_5

    .line 108
    .line 109
    const/4 v5, 0x5

    .line 110
    if-eq v4, v5, :cond_4

    .line 111
    .line 112
    const/16 v5, 0x10

    .line 113
    .line 114
    if-eq v4, v5, :cond_3

    .line 115
    .line 116
    move-object v4, p1

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    sget-object v4, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    sget-object v4, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    sget-object v4, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_6
    sget-object v4, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    sget-object v4, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    .line 131
    .line 132
    :goto_0
    sget v5, Landroidx/core/graphics/PaintCompat;->$r8$clinit:I

    .line 133
    .line 134
    if-eqz v4, :cond_8

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    packed-switch v4, :pswitch_data_0

    .line 141
    .line 142
    .line 143
    goto/16 :goto_1

    .line 144
    .line 145
    :pswitch_0
    sget-object p1, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :pswitch_1
    sget-object p1, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :pswitch_2
    sget-object p1, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :pswitch_3
    sget-object p1, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :pswitch_4
    sget-object p1, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :pswitch_5
    sget-object p1, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :pswitch_6
    sget-object p1, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :pswitch_7
    sget-object p1, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :pswitch_8
    sget-object p1, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :pswitch_9
    sget-object p1, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :pswitch_a
    sget-object p1, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :pswitch_b
    sget-object p1, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :pswitch_c
    sget-object p1, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :pswitch_d
    sget-object p1, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :pswitch_e
    sget-object p1, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :pswitch_f
    sget-object p1, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :pswitch_10
    sget-object p1, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :pswitch_11
    sget-object p1, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :pswitch_12
    sget-object p1, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :pswitch_13
    sget-object p1, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :pswitch_14
    sget-object p1, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :pswitch_15
    sget-object p1, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :pswitch_16
    sget-object p1, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :pswitch_17
    sget-object p1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :pswitch_18
    sget-object p1, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :pswitch_19
    sget-object p1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :pswitch_1a
    sget-object p1, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :pswitch_1b
    sget-object p1, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :pswitch_1c
    sget-object p1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    .line 233
    .line 234
    :cond_8
    :goto_1
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    move-object p3, p1

    .line 247
    check-cast p3, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 248
    .line 249
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 250
    .line 251
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    move-object p3, p1

    .line 262
    check-cast p3, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 263
    .line 264
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 265
    .line 266
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_9
    :goto_2
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 274
    .line 275
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 276
    .line 277
    return-void

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
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
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x4

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-ne p2, v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 35
    .line 36
    if-ne p2, v0, :cond_4

    .line 37
    .line 38
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    if-nez p1, :cond_3

    .line 46
    .line 47
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_3
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 52
    .line 53
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 57
    .line 58
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 62
    .line 63
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->BLUR_RADIUS:Ljava/lang/Float;

    .line 68
    .line 69
    if-ne p2, v0, :cond_6

    .line 70
    .line 71
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 72
    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 80
    .line 81
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 85
    .line 86
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 90
    .line 91
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    const/4 v0, 0x5

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 101
    .line 102
    if-ne p2, v0, :cond_7

    .line 103
    .line 104
    if-eqz p0, :cond_7

    .line 105
    .line 106
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->color:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_OPACITY:Ljava/lang/Float;

    .line 113
    .line 114
    if-ne p2, v0, :cond_8

    .line 115
    .line 116
    if-eqz p0, :cond_8

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DIRECTION:Ljava/lang/Float;

    .line 123
    .line 124
    if-ne p2, v0, :cond_9

    .line 125
    .line 126
    if-eqz p0, :cond_9

    .line 127
    .line 128
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->direction:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DISTANCE:Ljava/lang/Float;

    .line 135
    .line 136
    if-ne p2, v0, :cond_a

    .line 137
    .line 138
    if-eqz p0, :cond_a

    .line 139
    .line 140
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->distance:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_RADIUS:Ljava/lang/Float;

    .line 147
    .line 148
    if-ne p2, v0, :cond_b

    .line 149
    .line 150
    if-eqz p0, :cond_b

    .line 151
    .line 152
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->radius:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 155
    .line 156
    .line 157
    :cond_b
    :goto_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->hidden:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getIntValue(Lcom/airbnb/lottie/value/Keyframe;F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-float p3, p3

    .line 23
    const/high16 v1, 0x437f0000    # 255.0f

    .line 24
    .line 25
    div-float/2addr p3, v1

    .line 26
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    int-to-float v2, v2

    .line 39
    mul-float/2addr p3, v2

    .line 40
    const/high16 v2, 0x42c80000    # 100.0f

    .line 41
    .line 42
    div-float/2addr p3, v2

    .line 43
    mul-float/2addr p3, v1

    .line 44
    float-to-int p3, p3

    .line 45
    sget-object v1, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 46
    .line 47
    const/16 v1, 0xff

    .line 48
    .line 49
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    shl-int/lit8 p3, p3, 0x18

    .line 59
    .line 60
    const v2, 0xffffff

    .line 61
    .line 62
    .line 63
    and-int/2addr v0, v2

    .line 64
    or-int/2addr p3, v0

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Lcom/airbnb/lottie/animation/LPaint;

    .line 66
    .line 67
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 71
    .line 72
    if-eqz p3, :cond_1

    .line 73
    .line 74
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 79
    .line 80
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 84
    .line 85
    if-eqz p3, :cond_5

    .line 86
    .line 87
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    check-cast p3, Ljava/lang/Float;

    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    const/4 v2, 0x0

    .line 98
    cmpl-float v2, p3, v2

    .line 99
    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurMaskFilterRadius:F

    .line 108
    .line 109
    cmpl-float v2, p3, v2

    .line 110
    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 114
    .line 115
    iget v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 116
    .line 117
    cmpl-float v3, v3, p3

    .line 118
    .line 119
    if-nez v3, :cond_3

    .line 120
    .line 121
    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    .line 125
    .line 126
    const/high16 v4, 0x40000000    # 2.0f

    .line 127
    .line 128
    div-float v4, p3, v4

    .line 129
    .line 130
    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 131
    .line 132
    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 133
    .line 134
    .line 135
    iput-object v3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 136
    .line 137
    iput p3, v2, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 138
    .line 139
    move-object v2, v3

    .line 140
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_1
    iput p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurMaskFilterRadius:F

    .line 144
    .line 145
    :cond_5
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 146
    .line 147
    if-eqz p3, :cond_6

    .line 148
    .line 149
    invoke-virtual {p3, v0}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->applyTo(Landroid/graphics/Paint;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 153
    .line 154
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 155
    .line 156
    .line 157
    :goto_2
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 158
    .line 159
    check-cast p3, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    if-ge v1, p3, :cond_7

    .line 166
    .line 167
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 168
    .line 169
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 170
    .line 171
    check-cast v2, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 178
    .line 179
    invoke-interface {v2}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v1, v1, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 190
    .line 191
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    move v0, p3

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 9
    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 21
    .line 22
    check-cast v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 43
    .line 44
    .line 45
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 46
    .line 47
    const/high16 p2, 0x3f800000    # 1.0f

    .line 48
    .line 49
    sub-float/2addr p0, p2

    .line 50
    iget p3, p1, Landroid/graphics/RectF;->top:F

    .line 51
    .line 52
    sub-float/2addr p3, p2

    .line 53
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 54
    .line 55
    add-float/2addr v0, p2

    .line 56
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 57
    .line 58
    add-float/2addr v1, p2

    .line 59
    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onValueChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
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
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 19
    .line 20
    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 21
    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method
