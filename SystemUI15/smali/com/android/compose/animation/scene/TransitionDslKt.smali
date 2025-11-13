.class public abstract Lcom/android/compose/animation/scene/TransitionDslKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DefaultElementScenePicker:Lcom/android/compose/animation/scene/HighestZIndexScenePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/compose/animation/scene/HighestZIndexScenePicker;->INSTANCE:Lcom/android/compose/animation/scene/HighestZIndexScenePicker;

    sput-object v0, Lcom/android/compose/animation/scene/TransitionDslKt;->DefaultElementScenePicker:Lcom/android/compose/animation/scene/HighestZIndexScenePicker;

    return-void
.end method

.method public static final transitions(Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/SceneTransitions;
    .locals 4

    new-instance v0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;

    invoke-direct {v0}, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/compose/animation/scene/SceneTransitions;

    iget-object v1, v0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;->defaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

    iget-object v2, v0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;->transitionSpecs:Ljava/util/List;

    iget-object v3, v0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;->transitionOverscrollSpecs:Ljava/util/List;

    iget-object v0, v0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;->interruptionHandler:Lcom/android/compose/animation/scene/DefaultInterruptionHandler;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/compose/animation/scene/SceneTransitions;-><init>(Landroidx/compose/animation/core/SpringSpec;Ljava/util/List;Ljava/util/List;Lcom/android/compose/animation/scene/InterruptionHandler;)V

    return-object p0
.end method
