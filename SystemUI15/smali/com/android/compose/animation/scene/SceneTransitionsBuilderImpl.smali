.class public final Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final defaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

.field public final interruptionHandler:Lcom/android/compose/animation/scene/DefaultInterruptionHandler;

.field public final transitionOverscrollSpecs:Ljava/util/List;

.field public final transitionSpecs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/compose/animation/scene/SceneTransitions;->Companion:Lcom/android/compose/animation/scene/SceneTransitions$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/compose/animation/scene/SceneTransitions;->DefaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

    iput-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;->defaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

    sget-object v0, Lcom/android/compose/animation/scene/DefaultInterruptionHandler;->INSTANCE:Lcom/android/compose/animation/scene/DefaultInterruptionHandler;

    iput-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;->interruptionHandler:Lcom/android/compose/animation/scene/DefaultInterruptionHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;->transitionSpecs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;->transitionOverscrollSpecs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final transition(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/TransitionSpecImpl;
    .locals 2

    new-instance v0, Lcom/android/compose/animation/scene/TransitionSpecImpl;

    new-instance v1, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl$transition$spec$1;

    invoke-direct {v1, p4}, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl$transition$spec$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/android/compose/animation/scene/TransitionSpecImpl;-><init>(Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionsBuilderImpl;->transitionSpecs:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
