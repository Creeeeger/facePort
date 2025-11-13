.class public Landroidx/core/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Keyframes;


# instance fields
.field public mEvaluator:Landroidx/core/animation/TypeEvaluator;

.field public final mFirstKeyframe:Landroidx/core/animation/Keyframe;

.field public final mInterpolator:Landroidx/core/animation/Interpolator;

.field public final mKeyframes:Ljava/util/List;

.field public final mLastKeyframe:Landroidx/core/animation/Keyframe;

.field public final mNumKeyframes:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/animation/Keyframe;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Keyframe;

    iput-object v1, p0, Landroidx/core/animation/KeyframeSet;->mFirstKeyframe:Landroidx/core/animation/Keyframe;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/animation/Keyframe;

    iput-object p1, p0, Landroidx/core/animation/KeyframeSet;->mLastKeyframe:Landroidx/core/animation/Keyframe;

    iget-object p1, p1, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    iput-object p1, p0, Landroidx/core/animation/KeyframeSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/core/animation/Keyframe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/core/animation/Keyframe;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Landroidx/core/animation/KeyframeSet;->mFirstKeyframe:Landroidx/core/animation/Keyframe;

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Landroidx/core/animation/KeyframeSet;->mLastKeyframe:Landroidx/core/animation/Keyframe;

    iget-object p1, p1, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    iput-object p1, p0, Landroidx/core/animation/KeyframeSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public clone()Landroidx/core/animation/KeyframeSet;
    .locals 4

    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/Keyframe;

    invoke-virtual {v3}, Landroidx/core/animation/Keyframe;->clone()Landroidx/core/animation/Keyframe;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/core/animation/KeyframeSet;

    invoke-direct {p0, v1}, Landroidx/core/animation/KeyframeSet;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic clone()Landroidx/core/animation/Keyframes;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/KeyframeSet;->clone()Landroidx/core/animation/KeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/KeyframeSet;->clone()Landroidx/core/animation/KeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mFirstKeyframe:Landroidx/core/animation/Keyframe;

    invoke-virtual {v1}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mLastKeyframe:Landroidx/core/animation/Keyframe;

    invoke-virtual {p0}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, v1, p0}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    const/4 v3, 0x1

    if-gtz v2, :cond_3

    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Keyframe;

    iget-object v1, v0, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_2
    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mFirstKeyframe:Landroidx/core/animation/Keyframe;

    iget v2, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    sub-float/2addr p1, v2

    iget v3, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    sub-float/2addr v3, v2

    div-float/2addr p1, v3

    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    invoke-virtual {v1}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v1, v0}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Keyframe;

    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mLastKeyframe:Landroidx/core/animation/Keyframe;

    iget-object v1, v1, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_4
    iget v1, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    sub-float/2addr p1, v1

    iget-object v2, p0, Landroidx/core/animation/KeyframeSet;->mLastKeyframe:Landroidx/core/animation/Keyframe;

    iget v2, v2, Landroidx/core/animation/Keyframe;->mFraction:F

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    invoke-virtual {v0}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mLastKeyframe:Landroidx/core/animation/Keyframe;

    invoke-virtual {p0}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p1, v0, p0}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mFirstKeyframe:Landroidx/core/animation/Keyframe;

    :goto_0
    iget v1, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v3, v1, :cond_8

    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Keyframe;

    iget v2, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    cmpg-float v4, p1, v2

    if-gez v4, :cond_7

    iget-object v3, v1, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    iget v4, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    sub-float/2addr p1, v4

    sub-float/2addr v2, v4

    div-float/2addr p1, v2

    if-eqz v3, :cond_6

    invoke-interface {v3, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_6
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    invoke-virtual {v0}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    move-object v0, v1

    goto :goto_0

    :cond_8
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mLastKeyframe:Landroidx/core/animation/Keyframe;

    invoke-virtual {p0}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, " "

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/animation/Keyframe;

    invoke-virtual {v2}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
