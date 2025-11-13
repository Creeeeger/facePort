.class final Lcom/android/compose/animation/scene/TransitionSpecImpl$reversed$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/compose/animation/scene/TransitionSpecImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/TransitionSpecImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/TransitionSpecImpl$reversed$1;->this$0:Lcom/android/compose/animation/scene/TransitionSpecImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/android/compose/animation/scene/TransitionSpecImpl$reversed$1;->this$0:Lcom/android/compose/animation/scene/TransitionSpecImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/TransitionSpecImpl;->transformationSpec:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v0, p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->progressSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v1, p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/compose/animation/scene/transformation/Transformation;

    invoke-interface {v3}, Lcom/android/compose/animation/scene/transformation/Transformation;->reversed()Lcom/android/compose/animation/scene/transformation/Transformation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v3, p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->swipeSpec:Landroidx/compose/animation/core/SpringSpec;

    iget-object p0, p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->distance:Lcom/android/compose/animation/scene/UserActionDistance;

    invoke-direct {v1, v0, v3, p0, v2}, Lcom/android/compose/animation/scene/TransformationSpecImpl;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/SpringSpec;Lcom/android/compose/animation/scene/UserActionDistance;Ljava/util/List;)V

    return-object v1
.end method
