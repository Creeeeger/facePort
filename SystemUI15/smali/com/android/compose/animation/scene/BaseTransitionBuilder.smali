.class public interface abstract Lcom/android/compose/animation/scene/BaseTransitionBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static translate$default(Lcom/android/compose/animation/scene/BaseTransitionBuilder;Lcom/android/compose/animation/scene/ElementMatcher;Lcom/android/compose/animation/scene/Edge;)V
    .locals 2

    check-cast p0, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;-><init>(Lcom/android/compose/animation/scene/ElementMatcher;Lcom/android/compose/animation/scene/Edge;Z)V

    invoke-virtual {p0, v0}, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->transformation(Lcom/android/compose/animation/scene/transformation/PropertyTransformation;)V

    return-void
.end method
