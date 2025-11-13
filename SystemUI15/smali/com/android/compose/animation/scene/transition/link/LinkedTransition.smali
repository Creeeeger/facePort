.class public final Lcom/android/compose/animation/scene/transition/link/LinkedTransition;
.super Lcom/android/compose/animation/scene/TransitionState$Transition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final key:Lcom/android/compose/animation/scene/TransitionKey;

.field public final originalTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/compose/animation/scene/TransitionState$Transition;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->originalTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    iput-object p4, p0, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->key:Lcom/android/compose/animation/scene/TransitionKey;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;-><init>(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    return-void
.end method


# virtual methods
.method public final finish()Lkotlinx/coroutines/Job;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->originalTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->finish()Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;
    .locals 3

    iget-object v0, p0, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->originalTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-interface {v0}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v1

    iget-object v2, v0, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Original currentScene is neither FromScene nor ToScene"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getKey()Lcom/android/compose/animation/scene/TransitionKey;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->key:Lcom/android/compose/animation/scene/TransitionKey;

    return-object p0
.end method

.method public final getProgress()F
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->originalTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result p0

    return p0
.end method

.method public final getProgressVelocity()F
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->originalTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgressVelocity()F

    move-result p0

    return p0
.end method

.method public final isInitiatedByUserInput()Z
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->originalTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->isInitiatedByUserInput()Z

    move-result p0

    return p0
.end method

.method public final isUserInputOngoing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->originalTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->isUserInputOngoing()Z

    move-result p0

    return p0
.end method
