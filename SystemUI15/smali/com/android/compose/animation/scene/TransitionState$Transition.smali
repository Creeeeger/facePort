.class public abstract Lcom/android/compose/animation/scene/TransitionState$Transition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/TransitionState;


# instance fields
.field public fromOverscrollSpec:Lcom/android/compose/animation/scene/OverscrollSpecImpl;

.field public final fromScene:Lcom/android/compose/animation/scene/SceneKey;

.field public interruptionDecay:Landroidx/compose/animation/core/Animatable;

.field public toOverscrollSpec:Lcom/android/compose/animation/scene/OverscrollSpecImpl;

.field public final toScene:Lcom/android/compose/animation/scene/SceneKey;

.field public transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p2, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v0, Lcom/android/compose/animation/scene/TransformationSpec;->Companion:Lcom/android/compose/animation/scene/TransformationSpec$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/compose/animation/scene/TransformationSpec$Companion;->Empty:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iput-object v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract finish()Lkotlinx/coroutines/Job;
.end method

.method public final getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;
    .locals 4

    instance-of v0, p0, Lcom/android/compose/animation/scene/SwipeTransition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v0

    move-object v2, p0

    check-cast v2, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v2, v2, Lcom/android/compose/animation/scene/SwipeTransition;->bouncingScene:Lcom/android/compose/animation/scene/SceneKey;

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->toOverscrollSpec:Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromOverscrollSpec:Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getKey()Lcom/android/compose/animation/scene/TransitionKey;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getProgress()F
.end method

.method public abstract getProgressVelocity()F
.end method

.method public final interruptionProgress$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)F
    .locals 4

    iget-object v0, p1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-boolean v0, v0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->enableInterruptions:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->interruptionDecay:Landroidx/compose/animation/core/Animatable;

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3a83126f    # 0.001f

    invoke-static {v0, v1}, Landroidx/compose/animation/core/AnimatableKt;->Animatable(FF)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    new-instance v1, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x3

    invoke-static {p1, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iput-object v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->interruptionDecay:Landroidx/compose/animation/core/Animatable;

    :cond_1
    iget-object p0, v0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-object p0, p0, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public abstract isInitiatedByUserInput()Z
.end method

.method public final isTransitioning(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isTransitioningBetween(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->isTransitioning(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/android/compose/animation/scene/TransitionState$Transition;->isTransitioning(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract isUserInputOngoing()Z
.end method
