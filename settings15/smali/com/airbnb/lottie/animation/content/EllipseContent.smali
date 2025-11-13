.class public final Lcom/airbnb/lottie/animation/content/EllipseContent;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    iget-object v0, p3, Lcom/airbnb/lottie/model/content/CircleShape;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p1, p3, Lcom/airbnb/lottie/model/content/CircleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    iget-object v0, p3, Lcom/airbnb/lottie/model/content/CircleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    iget-boolean v2, v1, Lcom/airbnb/lottie/model/content/CircleShape;->hidden:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iput-boolean v3, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v5

    const v5, 0x3f0d6239    # 0.55228f

    mul-float v13, v4, v5

    mul-float/2addr v5, v2

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed:Z

    const/4 v14, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v15, v2

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v1, v14, v13

    neg-float v12, v4

    sub-float v16, v14, v5

    const/16 v17, 0x0

    move v7, v1

    move v8, v15

    move v9, v12

    move/from16 v10, v16

    move v11, v12

    move/from16 v18, v12

    move/from16 v12, v17

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float/2addr v5, v14

    const/4 v11, 0x0

    move/from16 v7, v18

    move v8, v5

    move v9, v1

    move v10, v2

    move v12, v2

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v1, v13, v14

    const/4 v12, 0x0

    move v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v11, 0x0

    move v7, v4

    move/from16 v8, v16

    move v9, v1

    move v10, v15

    move v12, v15

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v15, v2

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v1, v13, v14

    sub-float v16, v14, v5

    const/4 v12, 0x0

    move v7, v1

    move v8, v15

    move v9, v4

    move/from16 v10, v16

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float/2addr v5, v14

    const/4 v11, 0x0

    move v7, v4

    move v8, v5

    move v9, v1

    move v10, v2

    move v12, v2

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v1, v14, v13

    neg-float v4, v4

    const/4 v12, 0x0

    move v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    const/4 v11, 0x0

    move v7, v4

    move/from16 v8, v16

    move v9, v1

    move v10, v15

    move v12, v15

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    iput-boolean v3, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    iget-object v0, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public final onValueChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p2, 0x0

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->contents:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
