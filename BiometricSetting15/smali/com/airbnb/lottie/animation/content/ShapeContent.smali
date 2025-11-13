.class public final Lcom/airbnb/lottie/animation/content/ShapeContent;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public final hidden:Z

.field public isPathValid:Z

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final path:Landroid/graphics/Path;

.field public final shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

.field public final trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapePath;)V
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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 17
    .line 18
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/ShapePath;->name:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->name:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/ShapePath;->hidden:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    .line 25
    .line 26
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 27
    .line 28
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    .line 29
    .line 30
    iget-object p3, p3, Lcom/airbnb/lottie/model/content/ShapePath;->shapePath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 31
    .line 32
    iget-object p3, p3, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 33
    .line 34
    invoke-direct {p1, p3}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->PATH:Landroid/graphics/Path;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/graphics/Path;

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 47
    .line 48
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 58
    .line 59
    .line 60
    iput-boolean v2, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 61
    .line 62
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 63
    .line 64
    return-object p0
.end method

.method public final onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

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
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    move-object v1, p1

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v0, v2, :cond_3

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    .line 17
    .line 18
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 24
    .line 25
    iget-object v3, v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 26
    .line 27
    sget-object v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 28
    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->contents:Ljava/util/List;

    .line 34
    .line 35
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    if-nez p2, :cond_1

    .line 49
    .line 50
    new-instance p2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_1
    check-cast v1, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    .line 56
    .line 57
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    .line 66
    .line 67
    return-void
.end method
