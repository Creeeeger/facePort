.class public abstract Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;


# instance fields
.field public blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public blurMaskFilterRadius:F

.field public colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final dashPatternAnimations:Ljava/util/List;

.field public final dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final dashPatternValues:[F

.field public final dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

.field public final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

.field public final paint:Lcom/airbnb/lottie/animation/LPaint;

.field public final path:Landroid/graphics/Path;

.field public final pathGroups:Ljava/util/List;

.field public final pm:Landroid/graphics/PathMeasure;

.field public final rect:Landroid/graphics/RectF;

.field public final trimPathPath:Landroid/graphics/Path;

.field public final widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Lcom/airbnb/lottie/animation/LPaint;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurMaskFilterRadius:F

    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 12
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 13
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 15
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 16
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 17
    invoke-virtual {p6}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 18
    invoke-virtual {p7}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p9}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 21
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    check-cast p8, Ljava/util/ArrayList;

    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 22
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    const/4 p1, 0x0

    move p3, p1

    .line 23
    :goto_1
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 24
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-virtual {p8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p5

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 25
    :cond_1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 26
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    move p3, p1

    .line 27
    :goto_2
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 28
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 29
    :cond_2
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz p3, :cond_3

    .line 30
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 31
    :cond_3
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 32
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 33
    :goto_3
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 34
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 35
    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz p1, :cond_5

    .line 36
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 37
    :cond_5
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 38
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;

    move-result-object p1

    .line 39
    iget-object p1, p1, Lcom/airbnb/lottie/model/content/BlurEffect;->blurriness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 40
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 41
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 42
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 43
    :cond_6
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 44
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    :cond_7
    return-void
.end method


# virtual methods
.method public addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    .line 2
    .line 3
    const/4 v0, 0x4

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
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    .line 18
    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 32
    .line 33
    if-ne p2, v0, :cond_4

    .line 34
    .line 35
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    if-nez p1, :cond_3

    .line 43
    .line 44
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_3
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 49
    .line 50
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 59
    .line 60
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->BLUR_RADIUS:Ljava/lang/Float;

    .line 65
    .line 66
    if-ne p2, v0, :cond_6

    .line 67
    .line 68
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 77
    .line 78
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 82
    .line 83
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 87
    .line 88
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    const/4 v0, 0x5

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 98
    .line 99
    if-ne p2, v0, :cond_7

    .line 100
    .line 101
    if-eqz p0, :cond_7

    .line 102
    .line 103
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->color:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_OPACITY:Ljava/lang/Float;

    .line 110
    .line 111
    if-ne p2, v0, :cond_8

    .line 112
    .line 113
    if-eqz p0, :cond_8

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DIRECTION:Ljava/lang/Float;

    .line 120
    .line 121
    if-ne p2, v0, :cond_9

    .line 122
    .line 123
    if-eqz p0, :cond_9

    .line 124
    .line 125
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->direction:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DISTANCE:Ljava/lang/Float;

    .line 132
    .line 133
    if-ne p2, v0, :cond_a

    .line 134
    .line 135
    if-eqz p0, :cond_a

    .line 136
    .line 137
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->distance:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_RADIUS:Ljava/lang/Float;

    .line 144
    .line 145
    if-ne p2, v0, :cond_b

    .line 146
    .line 147
    if-eqz p0, :cond_b

    .line 148
    .line 149
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->radius:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 152
    .line 153
    .line 154
    :cond_b
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    sget-object v5, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Lcom/airbnb/lottie/utils/Utils$1;

    .line 10
    .line 11
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, [F

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    aput v7, v5, v6

    .line 20
    .line 21
    aput v7, v5, v4

    .line 22
    .line 23
    const v8, 0x471212bb

    .line 24
    .line 25
    .line 26
    aput v8, v5, v3

    .line 27
    .line 28
    const v8, 0x471a973c

    .line 29
    .line 30
    .line 31
    const/4 v9, 0x3

    .line 32
    aput v8, v5, v9

    .line 33
    .line 34
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 35
    .line 36
    .line 37
    aget v8, v5, v6

    .line 38
    .line 39
    aget v10, v5, v3

    .line 40
    .line 41
    cmpl-float v8, v8, v10

    .line 42
    .line 43
    if-eqz v8, :cond_1a

    .line 44
    .line 45
    aget v8, v5, v4

    .line 46
    .line 47
    aget v5, v5, v9

    .line 48
    .line 49
    cmpl-float v5, v8, v5

    .line 50
    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    goto/16 :goto_11

    .line 54
    .line 55
    :cond_0
    move/from16 v5, p3

    .line 56
    .line 57
    int-to-float v5, v5

    .line 58
    const/high16 v8, 0x437f0000    # 255.0f

    .line 59
    .line 60
    div-float/2addr v5, v8

    .line 61
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 62
    .line 63
    iget-object v10, v9, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    .line 64
    .line 65
    invoke-interface {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    invoke-virtual {v9, v10, v11}, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;->getIntValue(Lcom/airbnb/lottie/value/Keyframe;F)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    int-to-float v9, v9

    .line 78
    mul-float/2addr v5, v9

    .line 79
    const/high16 v9, 0x42c80000    # 100.0f

    .line 80
    .line 81
    div-float/2addr v5, v9

    .line 82
    mul-float/2addr v5, v8

    .line 83
    float-to-int v5, v5

    .line 84
    sget-object v8, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 85
    .line 86
    const/16 v8, 0xff

    .line 87
    .line 88
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Lcom/airbnb/lottie/animation/LPaint;

    .line 97
    .line 98
    invoke-virtual {v8, v5}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 99
    .line 100
    .line 101
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    mul-float/2addr v10, v5

    .line 112
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    cmpg-float v5, v5, v7

    .line 120
    .line 121
    if-gtz v5, :cond_1

    .line 122
    .line 123
    return-void

    .line 124
    :cond_1
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 125
    .line 126
    check-cast v5, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    const/high16 v10, 0x3f800000    # 1.0f

    .line 133
    .line 134
    if-eqz v5, :cond_2

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    move v11, v6

    .line 142
    :goto_0
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 143
    .line 144
    check-cast v12, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    iget-object v13, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 151
    .line 152
    if-ge v11, v12, :cond_5

    .line 153
    .line 154
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 155
    .line 156
    check-cast v12, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    check-cast v12, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 163
    .line 164
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    check-cast v12, Ljava/lang/Float;

    .line 169
    .line 170
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    aput v12, v13, v11

    .line 175
    .line 176
    rem-int/lit8 v14, v11, 0x2

    .line 177
    .line 178
    if-nez v14, :cond_3

    .line 179
    .line 180
    cmpg-float v12, v12, v10

    .line 181
    .line 182
    if-gez v12, :cond_4

    .line 183
    .line 184
    aput v10, v13, v11

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_3
    const v14, 0x3dcccccd    # 0.1f

    .line 188
    .line 189
    .line 190
    cmpg-float v12, v12, v14

    .line 191
    .line 192
    if-gez v12, :cond_4

    .line 193
    .line 194
    aput v14, v13, v11

    .line 195
    .line 196
    :cond_4
    :goto_1
    aget v12, v13, v11

    .line 197
    .line 198
    mul-float/2addr v12, v5

    .line 199
    aput v12, v13, v11

    .line 200
    .line 201
    add-int/2addr v11, v4

    .line 202
    goto :goto_0

    .line 203
    :cond_5
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 204
    .line 205
    if-nez v3, :cond_6

    .line 206
    .line 207
    move v3, v7

    .line 208
    goto :goto_2

    .line 209
    :cond_6
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Ljava/lang/Float;

    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    mul-float/2addr v3, v5

    .line 220
    :goto_2
    new-instance v5, Landroid/graphics/DashPathEffect;

    .line 221
    .line 222
    invoke-direct {v5, v13, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 226
    .line 227
    .line 228
    :goto_3
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 229
    .line 230
    if-eqz v3, :cond_7

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    check-cast v3, Landroid/graphics/ColorFilter;

    .line 237
    .line 238
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 239
    .line 240
    .line 241
    :cond_7
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 242
    .line 243
    if-eqz v3, :cond_b

    .line 244
    .line 245
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Ljava/lang/Float;

    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    cmpl-float v5, v3, v7

    .line 256
    .line 257
    if-nez v5, :cond_8

    .line 258
    .line 259
    const/4 v5, 0x0

    .line 260
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_8
    iget v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurMaskFilterRadius:F

    .line 265
    .line 266
    cmpl-float v5, v3, v5

    .line 267
    .line 268
    if-eqz v5, :cond_a

    .line 269
    .line 270
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 271
    .line 272
    iget v11, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 273
    .line 274
    cmpl-float v11, v11, v3

    .line 275
    .line 276
    if-nez v11, :cond_9

    .line 277
    .line 278
    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_9
    new-instance v11, Landroid/graphics/BlurMaskFilter;

    .line 282
    .line 283
    const/high16 v12, 0x40000000    # 2.0f

    .line 284
    .line 285
    div-float v12, v3, v12

    .line 286
    .line 287
    sget-object v13, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 288
    .line 289
    invoke-direct {v11, v12, v13}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 290
    .line 291
    .line 292
    iput-object v11, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 293
    .line 294
    iput v3, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 295
    .line 296
    move-object v5, v11

    .line 297
    :goto_4
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 298
    .line 299
    .line 300
    :cond_a
    :goto_5
    iput v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurMaskFilterRadius:F

    .line 301
    .line 302
    :cond_b
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 303
    .line 304
    if-eqz v3, :cond_c

    .line 305
    .line 306
    invoke-virtual {v3, v8}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->applyTo(Landroid/graphics/Paint;)V

    .line 307
    .line 308
    .line 309
    :cond_c
    move v3, v6

    .line 310
    :goto_6
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 311
    .line 312
    check-cast v5, Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-ge v3, v5, :cond_1a

    .line 319
    .line 320
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 321
    .line 322
    check-cast v5, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    check-cast v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 329
    .line 330
    iget-object v11, v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 331
    .line 332
    if-eqz v11, :cond_18

    .line 333
    .line 334
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 335
    .line 336
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 337
    .line 338
    .line 339
    iget-object v11, v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 340
    .line 341
    check-cast v11, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result v11

    .line 347
    sub-int/2addr v11, v4

    .line 348
    :goto_7
    if-ltz v11, :cond_d

    .line 349
    .line 350
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 351
    .line 352
    iget-object v13, v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 353
    .line 354
    check-cast v13, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v13

    .line 360
    check-cast v13, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 361
    .line 362
    invoke-interface {v13}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 363
    .line 364
    .line 365
    move-result-object v13

    .line 366
    invoke-virtual {v12, v13, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 367
    .line 368
    .line 369
    add-int/lit8 v11, v11, -0x1

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_d
    iget-object v11, v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 373
    .line 374
    iget-object v12, v11, Lcom/airbnb/lottie/animation/content/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 375
    .line 376
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    check-cast v12, Ljava/lang/Float;

    .line 381
    .line 382
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    div-float/2addr v12, v9

    .line 387
    iget-object v13, v11, Lcom/airbnb/lottie/animation/content/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 388
    .line 389
    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v13

    .line 393
    check-cast v13, Ljava/lang/Float;

    .line 394
    .line 395
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 396
    .line 397
    .line 398
    move-result v13

    .line 399
    div-float/2addr v13, v9

    .line 400
    iget-object v11, v11, Lcom/airbnb/lottie/animation/content/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 401
    .line 402
    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v11

    .line 406
    check-cast v11, Ljava/lang/Float;

    .line 407
    .line 408
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 409
    .line 410
    .line 411
    move-result v11

    .line 412
    const/high16 v14, 0x43b40000    # 360.0f

    .line 413
    .line 414
    div-float/2addr v11, v14

    .line 415
    const v14, 0x3c23d70a    # 0.01f

    .line 416
    .line 417
    .line 418
    cmpg-float v14, v12, v14

    .line 419
    .line 420
    if-gez v14, :cond_e

    .line 421
    .line 422
    const v14, 0x3f7d70a4    # 0.99f

    .line 423
    .line 424
    .line 425
    cmpl-float v14, v13, v14

    .line 426
    .line 427
    if-lez v14, :cond_e

    .line 428
    .line 429
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 430
    .line 431
    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_e

    .line 435
    .line 436
    :cond_e
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 437
    .line 438
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 439
    .line 440
    invoke-virtual {v14, v15, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 441
    .line 442
    .line 443
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 444
    .line 445
    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    .line 446
    .line 447
    .line 448
    move-result v14

    .line 449
    :goto_8
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 450
    .line 451
    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 452
    .line 453
    .line 454
    move-result v15

    .line 455
    if-eqz v15, :cond_f

    .line 456
    .line 457
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 458
    .line 459
    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->getLength()F

    .line 460
    .line 461
    .line 462
    move-result v15

    .line 463
    add-float/2addr v14, v15

    .line 464
    goto :goto_8

    .line 465
    :cond_f
    mul-float/2addr v11, v14

    .line 466
    mul-float/2addr v12, v14

    .line 467
    add-float/2addr v12, v11

    .line 468
    mul-float/2addr v13, v14

    .line 469
    add-float/2addr v13, v11

    .line 470
    add-float v11, v12, v14

    .line 471
    .line 472
    sub-float/2addr v11, v10

    .line 473
    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    .line 474
    .line 475
    .line 476
    move-result v11

    .line 477
    iget-object v13, v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 478
    .line 479
    check-cast v13, Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 482
    .line 483
    .line 484
    move-result v13

    .line 485
    sub-int/2addr v13, v4

    .line 486
    move v15, v7

    .line 487
    :goto_9
    if-ltz v13, :cond_17

    .line 488
    .line 489
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 490
    .line 491
    iget-object v4, v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 492
    .line 493
    check-cast v4, Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 500
    .line 501
    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    invoke-virtual {v9, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 506
    .line 507
    .line 508
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 509
    .line 510
    invoke-virtual {v4, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 511
    .line 512
    .line 513
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 514
    .line 515
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 516
    .line 517
    invoke-virtual {v4, v9, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 518
    .line 519
    .line 520
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 521
    .line 522
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    cmpl-float v9, v11, v14

    .line 527
    .line 528
    if-lez v9, :cond_11

    .line 529
    .line 530
    sub-float v9, v11, v14

    .line 531
    .line 532
    add-float v16, v15, v4

    .line 533
    .line 534
    cmpg-float v16, v9, v16

    .line 535
    .line 536
    if-gez v16, :cond_11

    .line 537
    .line 538
    cmpg-float v16, v15, v9

    .line 539
    .line 540
    if-gez v16, :cond_11

    .line 541
    .line 542
    cmpl-float v16, v12, v14

    .line 543
    .line 544
    if-lez v16, :cond_10

    .line 545
    .line 546
    sub-float v16, v12, v14

    .line 547
    .line 548
    div-float v16, v16, v4

    .line 549
    .line 550
    move/from16 v6, v16

    .line 551
    .line 552
    goto :goto_a

    .line 553
    :cond_10
    move v6, v7

    .line 554
    :goto_a
    div-float/2addr v9, v4

    .line 555
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    .line 556
    .line 557
    .line 558
    move-result v9

    .line 559
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 560
    .line 561
    invoke-static {v10, v6, v9, v7}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 562
    .line 563
    .line 564
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 565
    .line 566
    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 567
    .line 568
    .line 569
    goto :goto_d

    .line 570
    :cond_11
    add-float v6, v15, v4

    .line 571
    .line 572
    cmpg-float v9, v6, v12

    .line 573
    .line 574
    if-ltz v9, :cond_16

    .line 575
    .line 576
    cmpl-float v9, v15, v11

    .line 577
    .line 578
    if-lez v9, :cond_12

    .line 579
    .line 580
    goto :goto_d

    .line 581
    :cond_12
    cmpg-float v9, v6, v11

    .line 582
    .line 583
    if-gtz v9, :cond_13

    .line 584
    .line 585
    cmpg-float v9, v12, v15

    .line 586
    .line 587
    if-gez v9, :cond_13

    .line 588
    .line 589
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 590
    .line 591
    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 592
    .line 593
    .line 594
    goto :goto_d

    .line 595
    :cond_13
    cmpg-float v9, v12, v15

    .line 596
    .line 597
    if-gez v9, :cond_14

    .line 598
    .line 599
    move v9, v7

    .line 600
    goto :goto_b

    .line 601
    :cond_14
    sub-float v9, v12, v15

    .line 602
    .line 603
    div-float/2addr v9, v4

    .line 604
    :goto_b
    cmpl-float v6, v11, v6

    .line 605
    .line 606
    if-lez v6, :cond_15

    .line 607
    .line 608
    const/high16 v6, 0x3f800000    # 1.0f

    .line 609
    .line 610
    goto :goto_c

    .line 611
    :cond_15
    sub-float v6, v11, v15

    .line 612
    .line 613
    div-float/2addr v6, v4

    .line 614
    :goto_c
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 615
    .line 616
    invoke-static {v10, v9, v6, v7}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 617
    .line 618
    .line 619
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 620
    .line 621
    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 622
    .line 623
    .line 624
    :cond_16
    :goto_d
    add-float/2addr v15, v4

    .line 625
    add-int/lit8 v13, v13, -0x1

    .line 626
    .line 627
    const/4 v4, 0x1

    .line 628
    const/4 v6, 0x0

    .line 629
    const/high16 v9, 0x42c80000    # 100.0f

    .line 630
    .line 631
    const/high16 v10, 0x3f800000    # 1.0f

    .line 632
    .line 633
    goto/16 :goto_9

    .line 634
    .line 635
    :cond_17
    :goto_e
    const/4 v4, 0x1

    .line 636
    goto :goto_10

    .line 637
    :cond_18
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 638
    .line 639
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 640
    .line 641
    .line 642
    iget-object v4, v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 643
    .line 644
    check-cast v4, Ljava/util/ArrayList;

    .line 645
    .line 646
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    const/4 v6, 0x1

    .line 651
    sub-int/2addr v4, v6

    .line 652
    :goto_f
    if-ltz v4, :cond_19

    .line 653
    .line 654
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 655
    .line 656
    iget-object v9, v5, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 657
    .line 658
    check-cast v9, Ljava/util/ArrayList;

    .line 659
    .line 660
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v9

    .line 664
    check-cast v9, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 665
    .line 666
    invoke-interface {v9}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 667
    .line 668
    .line 669
    move-result-object v9

    .line 670
    invoke-virtual {v6, v9, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 671
    .line 672
    .line 673
    add-int/lit8 v4, v4, -0x1

    .line 674
    .line 675
    goto :goto_f

    .line 676
    :cond_19
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 677
    .line 678
    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 679
    .line 680
    .line 681
    goto :goto_e

    .line 682
    :goto_10
    add-int/2addr v3, v4

    .line 683
    const/4 v6, 0x0

    .line 684
    const/high16 v9, 0x42c80000    # 100.0f

    .line 685
    .line 686
    const/high16 v10, 0x3f800000    # 1.0f

    .line 687
    .line 688
    goto/16 :goto_6

    .line 689
    .line 690
    :cond_1a
    :goto_11
    return-void
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

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
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 19
    .line 20
    check-cast v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 27
    .line 28
    move v2, p3

    .line 29
    :goto_1
    iget-object v3, v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 30
    .line 31
    check-cast v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ge v2, v3, :cond_0

    .line 38
    .line 39
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 40
    .line 41
    iget-object v4, v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 42
    .line 43
    check-cast v4, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 50
    .line 51
    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 67
    .line 68
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 78
    .line 79
    iget v0, p3, Landroid/graphics/RectF;->left:F

    .line 80
    .line 81
    const/high16 v1, 0x40000000    # 2.0f

    .line 82
    .line 83
    div-float/2addr p2, v1

    .line 84
    sub-float/2addr v0, p2

    .line 85
    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 86
    .line 87
    sub-float/2addr v1, p2

    .line 88
    iget v2, p3, Landroid/graphics/RectF;->right:F

    .line 89
    .line 90
    add-float/2addr v2, p2

    .line 91
    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    .line 92
    .line 93
    add-float/2addr v3, p2

    .line 94
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 98
    .line 99
    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 100
    .line 101
    .line 102
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 103
    .line 104
    const/high16 p2, 0x3f800000    # 1.0f

    .line 105
    .line 106
    sub-float/2addr p0, p2

    .line 107
    iget p3, p1, Landroid/graphics/RectF;->top:F

    .line 108
    .line 109
    sub-float/2addr p3, p2

    .line 110
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 111
    .line 112
    add-float/2addr v0, p2

    .line 113
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 114
    .line 115
    add-float/2addr v1, p2

    .line 116
    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final onValueChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

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
    .locals 6

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :goto_0
    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 12
    .line 13
    if-ltz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/airbnb/lottie/animation/content/Content;

    .line 20
    .line 21
    instance-of v5, v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 26
    .line 27
    iget-object v5, v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 28
    .line 29
    if-ne v5, v3, :cond_0

    .line 30
    .line 31
    move-object v2, v4

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-int/lit8 p1, p1, -0x1

    .line 45
    .line 46
    :goto_1
    if-ltz p1, :cond_7

    .line 47
    .line 48
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 53
    .line 54
    instance-of v4, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 55
    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    move-object v4, v0

    .line 59
    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 60
    .line 61
    iget-object v5, v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 62
    .line 63
    if-ne v5, v3, :cond_4

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 68
    .line 69
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    new-instance v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 75
    .line 76
    invoke-direct {v0, v4}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    .line 81
    .line 82
    move-object v1, v0

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    instance-of v4, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 85
    .line 86
    if-eqz v4, :cond_6

    .line 87
    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    new-instance v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 91
    .line 92
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-object v4, v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 96
    .line 97
    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 98
    .line 99
    check-cast v4, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_7
    if-eqz v1, :cond_8

    .line 108
    .line 109
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 110
    .line 111
    check-cast p0, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_8
    return-void
.end method
