.class public final Lcom/android/compose/animation/scene/SwipeTransition;
.super Lcom/android/compose/animation/scene/TransitionState$Transition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _currentScene$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final _fromScene:Lcom/android/compose/animation/scene/Scene;

.field public final _toScene:Lcom/android/compose/animation/scene/Scene;

.field public bouncingScene:Lcom/android/compose/animation/scene/SceneKey;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public isFinishing:Z

.field public final isInitiatedByUserInput:Z

.field public final isUpOrLeft:Z

.field public final key:Lcom/android/compose/animation/scene/TransitionKey;

.field public lastDistance:F

.field public final layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

.field public final layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

.field public final offsetAnimation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final overscrollScope:Lcom/android/compose/animation/scene/SwipeTransition$overscrollScope$1;

.field public final userActionDistanceScope:Lcom/android/compose/animation/scene/UserActionDistanceScope;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/UserActionDistanceScope;Landroidx/compose/foundation/gestures/Orientation;Z)V
    .locals 2

    iget-object v0, p5, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v1, p6, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {p0, v0, v1}, Lcom/android/compose/animation/scene/TransitionState$Transition;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)V

    iput-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iput-object p2, p0, Lcom/android/compose/animation/scene/SwipeTransition;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iput-object p3, p0, Lcom/android/compose/animation/scene/SwipeTransition;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/compose/animation/scene/SwipeTransition;->key:Lcom/android/compose/animation/scene/TransitionKey;

    iput-object p5, p0, Lcom/android/compose/animation/scene/SwipeTransition;->_fromScene:Lcom/android/compose/animation/scene/Scene;

    iput-object p6, p0, Lcom/android/compose/animation/scene/SwipeTransition;->_toScene:Lcom/android/compose/animation/scene/Scene;

    iput-object p7, p0, Lcom/android/compose/animation/scene/SwipeTransition;->userActionDistanceScope:Lcom/android/compose/animation/scene/UserActionDistanceScope;

    iput-object p8, p0, Lcom/android/compose/animation/scene/SwipeTransition;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p9, p0, Lcom/android/compose/animation/scene/SwipeTransition;->isUpOrLeft:Z

    sget-object p1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {p5, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/compose/animation/scene/SwipeTransition;->_currentScene$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/compose/animation/scene/SwipeTransition;->isInitiatedByUserInput:Z

    const/4 p2, 0x0

    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    const/4 p2, 0x0

    invoke-static {p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition;->offsetAnimation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Lcom/android/compose/animation/scene/SwipeTransition$overscrollScope$1;

    invoke-direct {p1, p0}, Lcom/android/compose/animation/scene/SwipeTransition$overscrollScope$1;-><init>(Lcom/android/compose/animation/scene/SwipeTransition;)V

    iput-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition;->overscrollScope:Lcom/android/compose/animation/scene/SwipeTransition$overscrollScope$1;

    return-void
.end method


# virtual methods
.method public final animateOffset(Lkotlinx/coroutines/CoroutineScope;FFLcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;
    .locals 9

    iget-object v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p4, v0}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->getProgress()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p4, v0}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :goto_0
    move v7, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move-object v5, p4

    move-object v6, p1

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;-><init>(Lcom/android/compose/animation/scene/SwipeTransition;FLcom/android/compose/animation/scene/SceneKey;Lkotlinx/coroutines/CoroutineScope;ZF)V

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->cancelOffsetAnimation()V

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->offsetAnimation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final cancelOffsetAnimation()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->getOffsetAnimation()Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/compose/animation/scene/SwipeTransition;->offsetAnimation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    iget-object v1, v1, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-object v1, v1, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    iget-object p0, v0, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;->job:Lkotlinx/coroutines/Job;

    invoke-interface {p0, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final distance()F
    .locals 6

    iget v0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->lastDistance:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v0, v0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->distance:Lcom/android/compose/animation/scene/UserActionDistance;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/compose/animation/scene/DefaultSwipeDistance;->INSTANCE:Lcom/android/compose/animation/scene/DefaultSwipeDistance;

    :cond_0
    iget-object v2, p0, Lcom/android/compose/animation/scene/SwipeTransition;->_fromScene:Lcom/android/compose/animation/scene/Scene;

    iget-object v2, v2, Lcom/android/compose/animation/scene/Scene;->targetSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    iget-wide v2, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    iget-object v4, p0, Lcom/android/compose/animation/scene/SwipeTransition;->userActionDistanceScope:Lcom/android/compose/animation/scene/UserActionDistanceScope;

    iget-object v5, p0, Lcom/android/compose/animation/scene/SwipeTransition;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-interface {v0, v4, v2, v3, v5}, Lcom/android/compose/animation/scene/UserActionDistance;->absoluteDistance-JVtK1S4(Lcom/android/compose/animation/scene/UserActionDistanceScope;JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result v0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/compose/animation/scene/SwipeTransition;->isUpOrLeft:Z

    if-eqz v1, :cond_2

    neg-float v0, v0

    :cond_2
    iput v0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->lastDistance:F

    :cond_3
    return v0
.end method

.method public final finish()Lkotlinx/coroutines/Job;
    .locals 4

    iget-boolean v0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->isFinishing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->getOffsetAnimation()Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;->job:Lkotlinx/coroutines/Job;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->isFinishing:Z

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->getOffsetAnimation()Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, v1, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;->job:Lkotlinx/coroutines/Job;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v1

    iget-object v1, v1, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v2, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->distance()F

    move-result v1

    cmpg-float v3, v1, v2

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object v0

    iget-object v0, v0, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v3, p0, Lcom/android/compose/animation/scene/SwipeTransition;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/android/compose/animation/scene/SwipeTransition;->animateOffset(Lkotlinx/coroutines/CoroutineScope;FFLcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->getOffsetAnimation()Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;->job:Lkotlinx/coroutines/Job;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "targetScene != fromScene but distance is unspecified"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;
    .locals 0

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->get_currentScene()Lcom/android/compose/animation/scene/Scene;

    move-result-object p0

    iget-object p0, p0, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    return-object p0
.end method

.method public final getKey()Lcom/android/compose/animation/scene/TransitionKey;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->key:Lcom/android/compose/animation/scene/TransitionKey;

    return-object p0
.end method

.method public final getOffsetAnimation()Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->offsetAnimation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    return-object p0
.end method

.method public final getProgress()F
    .locals 3

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->getOffsetAnimation()Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->distance()F

    move-result p0

    const/4 v1, 0x0

    cmpg-float v2, p0, v1

    if-nez v2, :cond_1

    return v1

    :cond_1
    div-float/2addr v0, p0

    return v0
.end method

.method public final getProgressVelocity()F
    .locals 3

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->getOffsetAnimation()Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->distance()F

    move-result p0

    cmpg-float v2, p0, v1

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v1, v0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    check-cast v1, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v1, v1, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-object v0, v0, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v0, p0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final get_currentScene()Lcom/android/compose/animation/scene/Scene;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->_currentScene$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/Scene;

    return-object p0
.end method

.method public final isInitiatedByUserInput()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->isInitiatedByUserInput:Z

    return p0
.end method

.method public final isUserInputOngoing()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/SwipeTransition;->getOffsetAnimation()Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
