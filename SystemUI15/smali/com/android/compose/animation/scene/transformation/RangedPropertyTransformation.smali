.class public final Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/transformation/PropertyTransformation;


# instance fields
.field public final delegate:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

.field public final range:Lcom/android/compose/animation/scene/transformation/TransformationRange;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/TransformationRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/transformation/PropertyTransformation;",
            "Lcom/android/compose/animation/scene/transformation/TransformationRange;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;->delegate:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    iput-object p2, p0, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;->range:Lcom/android/compose/animation/scene/transformation/TransformationRange;

    return-void
.end method


# virtual methods
.method public final getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;->delegate:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    invoke-interface {p0}, Lcom/android/compose/animation/scene/transformation/Transformation;->getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;

    move-result-object p0

    return-object p0
.end method

.method public final getRange()Lcom/android/compose/animation/scene/transformation/TransformationRange;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;->range:Lcom/android/compose/animation/scene/transformation/TransformationRange;

    return-object p0
.end method

.method public final reversed()Lcom/android/compose/animation/scene/transformation/Transformation;
    .locals 7

    new-instance v0, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;

    iget-object v1, p0, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;->delegate:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    invoke-interface {v1}, Lcom/android/compose/animation/scene/transformation/Transformation;->reversed()Lcom/android/compose/animation/scene/transformation/Transformation;

    move-result-object v1

    check-cast v1, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    new-instance v2, Lcom/android/compose/animation/scene/transformation/TransformationRange;

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;->range:Lcom/android/compose/animation/scene/transformation/TransformationRange;

    iget v3, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->end:F

    invoke-static {v3}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result v4

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    sub-float v3, v6, v3

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget p0, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->start:F

    invoke-static {p0}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result v4

    if-eqz v4, :cond_1

    sub-float v5, v6, p0

    :cond_1
    invoke-direct {v2, v3, v5}, Lcom/android/compose/animation/scene/transformation/TransformationRange;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;-><init>(Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/TransformationRange;)V

    return-object v0
.end method

.method public final transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;->delegate:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;->transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
