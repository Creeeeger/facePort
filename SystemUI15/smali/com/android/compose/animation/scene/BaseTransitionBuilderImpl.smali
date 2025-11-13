.class public abstract Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/BaseTransitionBuilder;


# instance fields
.field public range:Lcom/android/compose/animation/scene/transformation/TransformationRange;

.field public final transformations:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->transformations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final fade(Lcom/android/compose/animation/scene/ElementMatcher;)V
    .locals 1

    new-instance v0, Lcom/android/compose/animation/scene/transformation/Fade;

    invoke-direct {v0, p1}, Lcom/android/compose/animation/scene/transformation/Fade;-><init>(Lcom/android/compose/animation/scene/ElementMatcher;)V

    invoke-virtual {p0, v0}, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->transformation(Lcom/android/compose/animation/scene/transformation/PropertyTransformation;)V

    return-void
.end method

.method public final transformation(Lcom/android/compose/animation/scene/transformation/PropertyTransformation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->range:Lcom/android/compose/animation/scene/transformation/TransformationRange;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;

    invoke-direct {v1, p1, v0}, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;-><init>(Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/TransformationRange;)V

    move-object p1, v1

    :cond_0
    iget-object p0, p0, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->transformations:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
