.class public final Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl;
.super Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;


# instance fields
.field public final canChangeScene:Lkotlin/jvm/functions/Function1;

.field public final transitions:Lcom/android/compose/animation/scene/SceneTransitions;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneTransitions;Lkotlin/jvm/functions/Function1;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/SceneKey;",
            "Lcom/android/compose/animation/scene/SceneTransitions;",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/util/List<",
            "Lcom/android/compose/animation/scene/transition/link/StateLink;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4, p5}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;-><init>(Lcom/android/compose/animation/scene/SceneKey;Ljava/util/List;Z)V

    iput-object p2, p0, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl;->transitions:Lcom/android/compose/animation/scene/SceneTransitions;

    iput-object p3, p0, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl;->canChangeScene:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneTransitions;Lkotlin/jvm/functions/Function1;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    sget-object p2, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl$1;->INSTANCE:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl$1;

    invoke-static {p2}, Lcom/android/compose/animation/scene/TransitionDslKt;->transitions(Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/SceneTransitions;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    sget-object p3, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl$2;->INSTANCE:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl$2;

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x1

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneTransitions;Lkotlin/jvm/functions/Function1;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final canChangeScene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl;->canChangeScene:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getTransitions()Lcom/android/compose/animation/scene/SceneTransitions;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl;->transitions:Lcom/android/compose/animation/scene/SceneTransitions;

    return-object p0
.end method

.method public final onChangeScene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/SceneKey;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->checkThread$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()V

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/android/compose/animation/scene/AnimateToSceneKt;->animateToScene(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)Lcom/android/compose/animation/scene/OneOffTransition;

    return-void
.end method
