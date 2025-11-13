.class final synthetic Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl$transition$spec$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $builder:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl$transition$spec$1;->$builder:Lkotlin/jvm/functions/Function1;

    const-string/jumbo v4, "transition$transformationSpec$0(Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/TransformationSpecImpl;"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string/jumbo v3, "transformationSpec"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl$transition$spec$1;->$builder:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/android/compose/animation/scene/TransitionBuilderImpl;

    invoke-direct {v0}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v1, v0, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->spec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v2, v0, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->swipeSpec:Landroidx/compose/animation/core/SpringSpec;

    iget-object v3, v0, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->distance:Lcom/android/compose/animation/scene/UserActionDistance;

    iget-object v0, v0, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->transformations:Ljava/util/List;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/compose/animation/scene/TransformationSpecImpl;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/SpringSpec;Lcom/android/compose/animation/scene/UserActionDistance;Ljava/util/List;)V

    return-object p0
.end method
