.class public interface abstract Lcom/android/compose/animation/scene/SceneTransitionLayoutState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static isTransitioning$default(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;I)Z
    .locals 1

    and-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-interface {p0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->getCurrentTransition()Lcom/android/compose/animation/scene/TransitionState$Transition;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/compose/animation/scene/TransitionState$Transition;->isTransitioning(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCurrentTransition()Lcom/android/compose/animation/scene/TransitionState$Transition;
    .locals 1

    check-cast p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object p0

    instance-of v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/compose/animation/scene/TransitionState$Transition;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract getTransitions()Lcom/android/compose/animation/scene/SceneTransitions;
.end method
