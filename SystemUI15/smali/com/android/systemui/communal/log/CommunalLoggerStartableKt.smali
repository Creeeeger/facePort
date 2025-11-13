.class public abstract Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$isNotOnCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    iget-object p0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;->currentScene:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final access$isOnCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    iget-object p0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;->currentScene:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final access$isSwipingFromCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z
    .locals 2

    instance-of v0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    iget-object v0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v1, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->isInitiatedByUserInput:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final access$isSwipingToCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z
    .locals 2

    instance-of v0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    iget-object v0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v1, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->isInitiatedByUserInput:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
