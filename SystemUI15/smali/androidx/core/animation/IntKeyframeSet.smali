.class public final Landroidx/core/animation/IntKeyframeSet;
.super Landroidx/core/animation/KeyframeSet;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Keyframes$IntKeyframes;


# direct methods
.method public varargs constructor <init>([Landroidx/core/animation/Keyframe$IntKeyframe;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/animation/KeyframeSet;-><init>([Landroidx/core/animation/Keyframe;)V

    return-void
.end method


# virtual methods
.method public final clone()Landroidx/core/animation/IntKeyframeSet;
    .locals 4

    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Landroidx/core/animation/Keyframe$IntKeyframe;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/Keyframe;

    invoke-virtual {v3}, Landroidx/core/animation/Keyframe;->clone()Landroidx/core/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/core/animation/IntKeyframeSet;

    invoke-direct {p0, v1}, Landroidx/core/animation/IntKeyframeSet;-><init>([Landroidx/core/animation/Keyframe$IntKeyframe;)V

    return-object p0
.end method

.method public final bridge synthetic clone()Landroidx/core/animation/KeyframeSet;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/IntKeyframeSet;->clone()Landroidx/core/animation/IntKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Landroidx/core/animation/Keyframes;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/IntKeyframeSet;->clone()Landroidx/core/animation/IntKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/IntKeyframeSet;->clone()Landroidx/core/animation/IntKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public final getIntValue(F)I
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Keyframe$IntKeyframe;

    iget v2, v0, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    iget v3, v1, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    iget v0, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    iget v4, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    iget-object v1, v1, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    if-nez p0, :cond_1

    sub-int/2addr v3, v2

    int-to-float p0, v3

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr v2, p0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    iget v1, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    iget v3, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Keyframe$IntKeyframe;

    iget v2, v0, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    iget v3, v1, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    iget v0, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    iget v4, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    iget-object v1, v1, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_3
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    if-nez p0, :cond_4

    sub-int/2addr v3, v2

    int-to-float p0, v3

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr v2, p0

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2

    :cond_5
    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    move v1, v2

    :goto_2
    iget v3, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/Keyframe$IntKeyframe;

    iget v4, v3, Landroidx/core/animation/Keyframe;->mFraction:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_8

    iget-object v1, v3, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    iget v2, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    sub-float/2addr p1, v2

    sub-float/2addr v4, v2

    div-float/2addr p1, v4

    iget v0, v0, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    iget v2, v3, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_6
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    if-nez p0, :cond_7

    sub-int/2addr v2, v0

    int-to-float p0, v2

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v0

    goto :goto_3

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_3
    return p0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_2

    :cond_9
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    sub-int/2addr v3, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/Keyframe;

    invoke-virtual {p0}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getValue(F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/core/animation/IntKeyframeSet;->getIntValue(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
