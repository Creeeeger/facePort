.class public abstract Lcom/airbnb/lottie/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# instance fields
.field public final animations:Ljava/util/List;

.field public blurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field public blurMaskFilterRadius:F

.field public final boundsMatrix:Landroid/graphics/Matrix;

.field public final canvasBounds:Landroid/graphics/RectF;

.field public final canvasMatrix:Landroid/graphics/Matrix;

.field public final clearPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final contentPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

.field public final maskBoundsRect:Landroid/graphics/RectF;

.field public final matrix:Landroid/graphics/Matrix;

.field public final matteBoundsRect:Landroid/graphics/RectF;

.field public matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public final mattePaint:Lcom/airbnb/lottie/animation/LPaint;

.field public outlineMasksAndMattes:Z

.field public outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public parentLayers:Ljava/util/List;

.field public final path:Landroid/graphics/Path;

.field public final rect:Landroid/graphics/RectF;

.field public final tempMaskBoundsRect:Landroid/graphics/RectF;

.field public final transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

.field public visible:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
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
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 24
    .line 25
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 32
    .line 33
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 34
    .line 35
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 36
    .line 37
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 41
    .line 42
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 43
    .line 44
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 45
    .line 46
    invoke-direct {v0, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 50
    .line 51
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 57
    .line 58
    new-instance v4, Lcom/airbnb/lottie/animation/LPaint;

    .line 59
    .line 60
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 61
    .line 62
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    .line 66
    .line 67
    invoke-direct {v6, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 74
    .line 75
    new-instance v4, Landroid/graphics/RectF;

    .line 76
    .line 77
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 81
    .line 82
    new-instance v4, Landroid/graphics/RectF;

    .line 83
    .line 84
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 88
    .line 89
    new-instance v4, Landroid/graphics/RectF;

    .line 90
    .line 91
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 95
    .line 96
    new-instance v4, Landroid/graphics/RectF;

    .line 97
    .line 98
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 102
    .line 103
    new-instance v4, Landroid/graphics/RectF;

    .line 104
    .line 105
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 109
    .line 110
    new-instance v4, Landroid/graphics/Matrix;

    .line 111
    .line 112
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 116
    .line 117
    new-instance v4, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 123
    .line 124
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    iput v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 128
    .line 129
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 130
    .line 131
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 132
    .line 133
    sget-object p1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 134
    .line 135
    iget-object v4, p2, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 136
    .line 137
    if-ne v4, p1, :cond_0

    .line 138
    .line 139
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 140
    .line 141
    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 149
    .line 150
    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 154
    .line 155
    .line 156
    :goto_0
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 162
    .line 163
    invoke-direct {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    .line 164
    .line 165
    .line 166
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 167
    .line 168
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    .line 172
    .line 173
    if-eqz p1, :cond_2

    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_2

    .line 180
    .line 181
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 182
    .line 183
    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    .line 184
    .line 185
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 191
    .line 192
    check-cast p1, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_1

    .line 203
    .line 204
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 209
    .line 210
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 215
    .line 216
    iget-object p1, p1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->opacityAnimations:Ljava/util/List;

    .line 217
    .line 218
    check-cast p1, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_2

    .line 229
    .line 230
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 235
    .line 236
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 244
    .line 245
    iget-object p2, p1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    .line 246
    .line 247
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-nez p2, :cond_5

    .line 252
    .line 253
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 254
    .line 255
    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    .line 256
    .line 257
    invoke-direct {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 258
    .line 259
    .line 260
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 261
    .line 262
    iput-boolean v1, p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    .line 263
    .line 264
    new-instance p1, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;

    .line 265
    .line 266
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Ljava/lang/Float;

    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    const/high16 p2, 0x3f800000    # 1.0f

    .line 285
    .line 286
    cmpl-float p1, p1, p2

    .line 287
    .line 288
    if-nez p1, :cond_3

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_3
    const/4 v1, 0x0

    .line 292
    :goto_3
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 293
    .line 294
    if-eq v1, p1, :cond_4

    .line 295
    .line 296
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 297
    .line 298
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 301
    .line 302
    .line 303
    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_5
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 310
    .line 311
    if-eq v1, p1, :cond_6

    .line 312
    .line 313
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 314
    .line 315
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 318
    .line 319
    .line 320
    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public final addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final buildParentLayerListIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 25
    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    iget-boolean v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 9
    .line 10
    if-eqz v1, :cond_20

    .line 11
    .line 12
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 13
    .line 14
    iget-boolean v2, v1, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_10

    .line 19
    .line 20
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 29
    .line 30
    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sub-int/2addr v2, v9

    .line 40
    :goto_0
    if-ltz v2, :cond_1

    .line 41
    .line 42
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 43
    .line 44
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 51
    .line 52
    iget-object v4, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v2, v2, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 65
    .line 66
    iget-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/Integer;

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    :goto_1
    move/from16 v4, p3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    const/16 v3, 0x64

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :goto_2
    int-to-float v4, v4

    .line 89
    const/high16 v5, 0x437f0000    # 255.0f

    .line 90
    .line 91
    div-float/2addr v4, v5

    .line 92
    int-to-float v3, v3

    .line 93
    mul-float/2addr v4, v3

    .line 94
    const/high16 v3, 0x42c80000    # 100.0f

    .line 95
    .line 96
    div-float/2addr v4, v3

    .line 97
    mul-float/2addr v4, v5

    .line 98
    float-to-int v10, v4

    .line 99
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 100
    .line 101
    const/4 v11, 0x0

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    move v3, v9

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    move v3, v11

    .line 107
    :goto_3
    if-nez v3, :cond_4

    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_4

    .line 114
    .line 115
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 125
    .line 126
    invoke-virtual {v0, v7, v1, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 134
    .line 135
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 136
    .line 137
    invoke-virtual {v0, v3, v4, v11}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 138
    .line 139
    .line 140
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 141
    .line 142
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    if-eqz v4, :cond_6

    .line 146
    .line 147
    sget-object v4, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 150
    .line 151
    if-ne v1, v4, :cond_5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 155
    .line 156
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 160
    .line 161
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 162
    .line 163
    invoke-virtual {v1, v4, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 167
    .line 168
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_6

    .line 173
    .line 174
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 175
    .line 176
    .line 177
    :cond_6
    :goto_4
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 187
    .line 188
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 189
    .line 190
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 191
    .line 192
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    iget-object v12, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 200
    .line 201
    const/4 v13, 0x3

    .line 202
    const/4 v14, 0x2

    .line 203
    if-nez v3, :cond_7

    .line 204
    .line 205
    move v2, v5

    .line 206
    goto/16 :goto_9

    .line 207
    .line 208
    :cond_7
    iget-object v3, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 209
    .line 210
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    move v4, v11

    .line 215
    :goto_5
    if-ge v4, v3, :cond_d

    .line 216
    .line 217
    iget-object v6, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    check-cast v6, Lcom/airbnb/lottie/model/content/Mask;

    .line 224
    .line 225
    iget-object v15, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 226
    .line 227
    check-cast v15, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    check-cast v15, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 234
    .line 235
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    check-cast v15, Landroid/graphics/Path;

    .line 240
    .line 241
    if-nez v15, :cond_8

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_8
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 245
    .line 246
    invoke-virtual {v5, v15}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 247
    .line 248
    .line 249
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 250
    .line 251
    invoke-virtual {v5, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 252
    .line 253
    .line 254
    iget-object v5, v6, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_a

    .line 261
    .line 262
    if-eq v5, v9, :cond_9

    .line 263
    .line 264
    if-eq v5, v14, :cond_a

    .line 265
    .line 266
    if-eq v5, v13, :cond_9

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_9
    :goto_6
    const/4 v2, 0x0

    .line 270
    goto :goto_9

    .line 271
    :cond_a
    iget-boolean v5, v6, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    .line 272
    .line 273
    if-eqz v5, :cond_b

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_b
    :goto_7
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 277
    .line 278
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 279
    .line 280
    invoke-virtual {v5, v6, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 281
    .line 282
    .line 283
    if-nez v4, :cond_c

    .line 284
    .line 285
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 286
    .line 287
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 288
    .line 289
    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 290
    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_c
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 294
    .line 295
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 296
    .line 297
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 298
    .line 299
    iget v15, v15, Landroid/graphics/RectF;->left:F

    .line 300
    .line 301
    invoke-static {v6, v15}, Ljava/lang/Math;->min(FF)F

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 306
    .line 307
    iget v15, v15, Landroid/graphics/RectF;->top:F

    .line 308
    .line 309
    iget-object v11, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 310
    .line 311
    iget v11, v11, Landroid/graphics/RectF;->top:F

    .line 312
    .line 313
    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 318
    .line 319
    iget v15, v15, Landroid/graphics/RectF;->right:F

    .line 320
    .line 321
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 322
    .line 323
    iget v13, v13, Landroid/graphics/RectF;->right:F

    .line 324
    .line 325
    invoke-static {v15, v13}, Ljava/lang/Math;->max(FF)F

    .line 326
    .line 327
    .line 328
    move-result v13

    .line 329
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 330
    .line 331
    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    .line 332
    .line 333
    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 334
    .line 335
    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    .line 336
    .line 337
    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    invoke-virtual {v5, v6, v11, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    .line 343
    .line 344
    :goto_8
    add-int/2addr v4, v9

    .line 345
    const/4 v5, 0x0

    .line 346
    const/4 v11, 0x0

    .line 347
    const/4 v13, 0x3

    .line 348
    const/4 v14, 0x2

    .line 349
    goto/16 :goto_5

    .line 350
    .line 351
    :cond_d
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 352
    .line 353
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-nez v2, :cond_9

    .line 358
    .line 359
    const/4 v2, 0x0

    .line 360
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 361
    .line 362
    .line 363
    :goto_9
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 364
    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    int-to-float v3, v3

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    int-to-float v4, v4

    .line 375
    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 379
    .line 380
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 381
    .line 382
    .line 383
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 384
    .line 385
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-nez v1, :cond_e

    .line 390
    .line 391
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 392
    .line 393
    invoke-virtual {v1, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 394
    .line 395
    .line 396
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 397
    .line 398
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 399
    .line 400
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 401
    .line 402
    .line 403
    :cond_e
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 404
    .line 405
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 406
    .line 407
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-nez v1, :cond_f

    .line 412
    .line 413
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 414
    .line 415
    const/4 v2, 0x0

    .line 416
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 417
    .line 418
    .line 419
    :cond_f
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 420
    .line 421
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    const/high16 v11, 0x3f800000    # 1.0f

    .line 426
    .line 427
    cmpl-float v1, v1, v11

    .line 428
    .line 429
    if-ltz v1, :cond_1e

    .line 430
    .line 431
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 432
    .line 433
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    cmpl-float v1, v1, v11

    .line 438
    .line 439
    if-ltz v1, :cond_1e

    .line 440
    .line 441
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 442
    .line 443
    const/16 v14, 0xff

    .line 444
    .line 445
    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 446
    .line 447
    .line 448
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 449
    .line 450
    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 451
    .line 452
    invoke-virtual {v7, v1, v13}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 453
    .line 454
    .line 455
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 456
    .line 457
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 458
    .line 459
    sub-float/2addr v2, v11

    .line 460
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 461
    .line 462
    sub-float/2addr v3, v11

    .line 463
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 464
    .line 465
    add-float/2addr v4, v11

    .line 466
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 467
    .line 468
    add-float v5, v1, v11

    .line 469
    .line 470
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 471
    .line 472
    move-object/from16 v1, p1

    .line 473
    .line 474
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 475
    .line 476
    .line 477
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 478
    .line 479
    invoke-virtual {v0, v7, v1, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    if-eqz v1, :cond_1c

    .line 487
    .line 488
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 489
    .line 490
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 491
    .line 492
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 493
    .line 494
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 495
    .line 496
    .line 497
    const/4 v2, 0x0

    .line 498
    :goto_a
    iget-object v4, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 499
    .line 500
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    if-ge v2, v4, :cond_1b

    .line 505
    .line 506
    iget-object v4, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 507
    .line 508
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    check-cast v4, Lcom/airbnb/lottie/model/content/Mask;

    .line 513
    .line 514
    iget-object v5, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 515
    .line 516
    check-cast v5, Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 523
    .line 524
    iget-object v6, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->opacityAnimations:Ljava/util/List;

    .line 525
    .line 526
    check-cast v6, Ljava/util/ArrayList;

    .line 527
    .line 528
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    check-cast v6, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 533
    .line 534
    iget-object v15, v4, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 535
    .line 536
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 537
    .line 538
    .line 539
    move-result v15

    .line 540
    iget-object v11, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 541
    .line 542
    const v16, 0x40233333    # 2.55f

    .line 543
    .line 544
    .line 545
    iget-boolean v4, v4, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    .line 546
    .line 547
    if-eqz v15, :cond_19

    .line 548
    .line 549
    if-eq v15, v9, :cond_16

    .line 550
    .line 551
    const/4 v14, 0x2

    .line 552
    if-eq v15, v14, :cond_14

    .line 553
    .line 554
    const/4 v14, 0x3

    .line 555
    if-eq v15, v14, :cond_10

    .line 556
    .line 557
    :goto_b
    const/16 v15, 0xff

    .line 558
    .line 559
    goto/16 :goto_f

    .line 560
    .line 561
    :cond_10
    iget-object v4, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 562
    .line 563
    check-cast v4, Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    if-eqz v4, :cond_11

    .line 570
    .line 571
    goto :goto_d

    .line 572
    :cond_11
    const/4 v4, 0x0

    .line 573
    :goto_c
    iget-object v5, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 574
    .line 575
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 576
    .line 577
    .line 578
    move-result v5

    .line 579
    if-ge v4, v5, :cond_13

    .line 580
    .line 581
    iget-object v5, v12, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 582
    .line 583
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    check-cast v5, Lcom/airbnb/lottie/model/content/Mask;

    .line 588
    .line 589
    iget-object v5, v5, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 590
    .line 591
    sget-object v6, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 592
    .line 593
    if-eq v5, v6, :cond_12

    .line 594
    .line 595
    :goto_d
    goto :goto_b

    .line 596
    :cond_12
    add-int/2addr v4, v9

    .line 597
    goto :goto_c

    .line 598
    :cond_13
    const/16 v4, 0xff

    .line 599
    .line 600
    invoke-virtual {v13, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 601
    .line 602
    .line 603
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 604
    .line 605
    invoke-virtual {v7, v4, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 606
    .line 607
    .line 608
    goto :goto_b

    .line 609
    :cond_14
    const/4 v14, 0x3

    .line 610
    if-eqz v4, :cond_15

    .line 611
    .line 612
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 613
    .line 614
    sget-object v15, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 615
    .line 616
    invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 617
    .line 618
    .line 619
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 620
    .line 621
    invoke-virtual {v7, v4, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    check-cast v4, Ljava/lang/Integer;

    .line 629
    .line 630
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    int-to-float v4, v4

    .line 635
    mul-float v4, v4, v16

    .line 636
    .line 637
    float-to-int v4, v4

    .line 638
    invoke-virtual {v11, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    check-cast v4, Landroid/graphics/Path;

    .line 646
    .line 647
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 648
    .line 649
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 650
    .line 651
    .line 652
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 653
    .line 654
    invoke-virtual {v4, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 655
    .line 656
    .line 657
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 658
    .line 659
    invoke-virtual {v7, v4, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 663
    .line 664
    .line 665
    goto :goto_b

    .line 666
    :cond_15
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 667
    .line 668
    sget-object v11, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 669
    .line 670
    invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 671
    .line 672
    .line 673
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v4

    .line 677
    check-cast v4, Landroid/graphics/Path;

    .line 678
    .line 679
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 680
    .line 681
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 682
    .line 683
    .line 684
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 685
    .line 686
    invoke-virtual {v4, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    check-cast v4, Ljava/lang/Integer;

    .line 694
    .line 695
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 696
    .line 697
    .line 698
    move-result v4

    .line 699
    int-to-float v4, v4

    .line 700
    mul-float v4, v4, v16

    .line 701
    .line 702
    float-to-int v4, v4

    .line 703
    invoke-virtual {v13, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 704
    .line 705
    .line 706
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 707
    .line 708
    invoke-virtual {v7, v4, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 712
    .line 713
    .line 714
    goto/16 :goto_b

    .line 715
    .line 716
    :cond_16
    const/4 v14, 0x3

    .line 717
    if-nez v2, :cond_17

    .line 718
    .line 719
    const/high16 v15, -0x1000000

    .line 720
    .line 721
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 722
    .line 723
    .line 724
    const/16 v15, 0xff

    .line 725
    .line 726
    invoke-virtual {v13, v15}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 727
    .line 728
    .line 729
    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 730
    .line 731
    invoke-virtual {v7, v14, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 732
    .line 733
    .line 734
    goto :goto_e

    .line 735
    :cond_17
    const/16 v15, 0xff

    .line 736
    .line 737
    :goto_e
    if-eqz v4, :cond_18

    .line 738
    .line 739
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 740
    .line 741
    sget-object v14, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 742
    .line 743
    invoke-virtual {v7, v4, v11}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 744
    .line 745
    .line 746
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 747
    .line 748
    invoke-virtual {v7, v4, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    check-cast v4, Ljava/lang/Integer;

    .line 756
    .line 757
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 758
    .line 759
    .line 760
    move-result v4

    .line 761
    int-to-float v4, v4

    .line 762
    mul-float v4, v4, v16

    .line 763
    .line 764
    float-to-int v4, v4

    .line 765
    invoke-virtual {v11, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    check-cast v4, Landroid/graphics/Path;

    .line 773
    .line 774
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 775
    .line 776
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 777
    .line 778
    .line 779
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 780
    .line 781
    invoke-virtual {v4, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 782
    .line 783
    .line 784
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 785
    .line 786
    invoke-virtual {v7, v4, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 790
    .line 791
    .line 792
    goto :goto_f

    .line 793
    :cond_18
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    check-cast v4, Landroid/graphics/Path;

    .line 798
    .line 799
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 800
    .line 801
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 802
    .line 803
    .line 804
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 805
    .line 806
    invoke-virtual {v4, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 807
    .line 808
    .line 809
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 810
    .line 811
    invoke-virtual {v7, v4, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 812
    .line 813
    .line 814
    goto :goto_f

    .line 815
    :cond_19
    move v15, v14

    .line 816
    if-eqz v4, :cond_1a

    .line 817
    .line 818
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 819
    .line 820
    sget-object v14, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 821
    .line 822
    invoke-virtual {v7, v4, v13}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 823
    .line 824
    .line 825
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 826
    .line 827
    invoke-virtual {v7, v4, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v4

    .line 834
    check-cast v4, Landroid/graphics/Path;

    .line 835
    .line 836
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 837
    .line 838
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 839
    .line 840
    .line 841
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 842
    .line 843
    invoke-virtual {v4, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    check-cast v4, Ljava/lang/Integer;

    .line 851
    .line 852
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 853
    .line 854
    .line 855
    move-result v4

    .line 856
    int-to-float v4, v4

    .line 857
    mul-float v4, v4, v16

    .line 858
    .line 859
    float-to-int v4, v4

    .line 860
    invoke-virtual {v13, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 861
    .line 862
    .line 863
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 864
    .line 865
    invoke-virtual {v7, v4, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 869
    .line 870
    .line 871
    goto :goto_f

    .line 872
    :cond_1a
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v4

    .line 876
    check-cast v4, Landroid/graphics/Path;

    .line 877
    .line 878
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 879
    .line 880
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 881
    .line 882
    .line 883
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 884
    .line 885
    invoke-virtual {v4, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v4

    .line 892
    check-cast v4, Ljava/lang/Integer;

    .line 893
    .line 894
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 895
    .line 896
    .line 897
    move-result v4

    .line 898
    int-to-float v4, v4

    .line 899
    mul-float v4, v4, v16

    .line 900
    .line 901
    float-to-int v4, v4

    .line 902
    invoke-virtual {v13, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 903
    .line 904
    .line 905
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 906
    .line 907
    invoke-virtual {v7, v4, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 908
    .line 909
    .line 910
    :goto_f
    add-int/2addr v2, v9

    .line 911
    move v14, v15

    .line 912
    const/high16 v11, 0x3f800000    # 1.0f

    .line 913
    .line 914
    goto/16 :goto_a

    .line 915
    .line 916
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 917
    .line 918
    .line 919
    :cond_1c
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 920
    .line 921
    if-eqz v1, :cond_1d

    .line 922
    .line 923
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 924
    .line 925
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 926
    .line 927
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 928
    .line 929
    .line 930
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 931
    .line 932
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 933
    .line 934
    const/high16 v3, 0x3f800000    # 1.0f

    .line 935
    .line 936
    sub-float/2addr v2, v3

    .line 937
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 938
    .line 939
    sub-float/2addr v4, v3

    .line 940
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 941
    .line 942
    add-float/2addr v5, v3

    .line 943
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 944
    .line 945
    add-float v6, v1, v3

    .line 946
    .line 947
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 948
    .line 949
    move-object/from16 v1, p1

    .line 950
    .line 951
    move v3, v4

    .line 952
    move v4, v5

    .line 953
    move v5, v6

    .line 954
    move-object v6, v9

    .line 955
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 956
    .line 957
    .line 958
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 959
    .line 960
    invoke-virtual {v1, v7, v8, v10}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 961
    .line 962
    .line 963
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 964
    .line 965
    .line 966
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 967
    .line 968
    .line 969
    :cond_1e
    iget-boolean v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    .line 970
    .line 971
    if-eqz v1, :cond_1f

    .line 972
    .line 973
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 974
    .line 975
    if-eqz v1, :cond_1f

    .line 976
    .line 977
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 978
    .line 979
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 980
    .line 981
    .line 982
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 983
    .line 984
    const v2, -0x3d7fd

    .line 985
    .line 986
    .line 987
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 988
    .line 989
    .line 990
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 991
    .line 992
    const/high16 v2, 0x40800000    # 4.0f

    .line 993
    .line 994
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 995
    .line 996
    .line 997
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 998
    .line 999
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 1000
    .line 1001
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 1005
    .line 1006
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 1007
    .line 1008
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1009
    .line 1010
    .line 1011
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 1012
    .line 1013
    const v2, 0x50ebebeb

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1017
    .line 1018
    .line 1019
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 1020
    .line 1021
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 1022
    .line 1023
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1024
    .line 1025
    .line 1026
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime()V

    .line 1027
    .line 1028
    .line 1029
    :cond_20
    :goto_10
    return-void
.end method

.method public abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->blurEffect:Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 4
    .line 5
    return-object p0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 13
    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz p1, :cond_1

    .line 28
    .line 29
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 30
    .line 31
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 38
    .line 39
    iget-object p3, p3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->dropShadowEffect:Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final hasMasksOnThisLayer()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final onValueChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final recordRenderTime()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 17
    .line 18
    check-cast v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 34
    .line 35
    check-cast v2, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    iget v2, v1, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    iput v2, v1, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    .line 45
    .line 46
    const v3, 0x7fffffff

    .line 47
    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    div-int/lit8 v2, v2, 0x2

    .line 52
    .line 53
    iput v2, v1, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    .line 54
    .line 55
    :cond_2
    const-string v1, "__container"

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    iget-object p0, v0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Landroidx/collection/ArraySet;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v0, Landroidx/collection/ArraySet$ElementIterator;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/collection/ArraySet$ElementIterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v0}, Landroidx/collection/ArraySet$ElementIterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    throw p0

    .line 89
    :cond_4
    :goto_0
    return-void
.end method

.method public final removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 15
    .line 16
    invoke-direct {v2, p4}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(ILjava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 37
    .line 38
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    .line 39
    .line 40
    invoke-direct {v3, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, v3, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 44
    .line 45
    move-object v0, p3

    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(ILjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(ILjava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v0, p2

    .line 70
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 71
    .line 72
    invoke-virtual {v3, p1, v0, p3, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->matches(ILjava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    const-string v0, "__container"

    .line 85
    .line 86
    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 98
    .line 99
    invoke-direct {v0, p4}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 100
    .line 101
    .line 102
    iget-object p4, v0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(ILjava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p4

    .line 111
    if-eqz p4, :cond_3

    .line 112
    .line 113
    new-instance p4, Lcom/airbnb/lottie/model/KeyPath;

    .line 114
    .line 115
    invoke-direct {p4, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 116
    .line 117
    .line 118
    iput-object p0, p4, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 119
    .line 120
    move-object v2, p3

    .line 121
    check-cast v2, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_3
    move-object p4, v0

    .line 127
    :cond_4
    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(ILjava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(ILjava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    add-int/2addr v0, p2

    .line 138
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 13
    .line 14
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    .line 15
    .line 16
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 29
    .line 30
    .line 31
    :cond_3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 36
    .line 37
    .line 38
    :cond_4
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 43
    .line 44
    .line 45
    :cond_5
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 46
    .line 47
    if-eqz v1, :cond_6

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 50
    .line 51
    .line 52
    :cond_6
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 53
    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 57
    .line 58
    .line 59
    :cond_7
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 60
    .line 61
    if-eqz v0, :cond_8

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 64
    .line 65
    .line 66
    :cond_8
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 68
    .line 69
    if-eqz v1, :cond_9

    .line 70
    .line 71
    move v2, v0

    .line 72
    :goto_0
    iget-object v3, v1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 73
    .line 74
    check-cast v3, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ge v2, v3, :cond_9

    .line 81
    .line 82
    iget-object v3, v1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 83
    .line 84
    check-cast v3, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 91
    .line 92
    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_9
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 99
    .line 100
    if-eqz v1, :cond_a

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 103
    .line 104
    .line 105
    :cond_a
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 106
    .line 107
    if-eqz v1, :cond_b

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 110
    .line 111
    .line 112
    :cond_b
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 113
    .line 114
    check-cast v1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 120
    .line 121
    check-cast v1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-ge v0, v1, :cond_c

    .line 128
    .line 129
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 130
    .line 131
    check-cast v1, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_c
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 146
    .line 147
    check-cast p0, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    return-void
.end method
