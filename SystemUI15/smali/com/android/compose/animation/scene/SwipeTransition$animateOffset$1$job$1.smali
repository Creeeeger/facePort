.class final Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $animatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable;"
        }
    .end annotation
.end field

.field final synthetic $initialVelocity:F

.field final synthetic $isTargetGreater:Z

.field final synthetic $skipAnimation:Z

.field final synthetic $startedWhenOvercrollingTargetScene:Z

.field final synthetic $targetOffset:F

.field final synthetic $targetScene:Lcom/android/compose/animation/scene/SceneKey;

.field label:I

.field final synthetic this$0:Lcom/android/compose/animation/scene/SwipeTransition;


# direct methods
.method public constructor <init>(ZLcom/android/compose/animation/scene/SwipeTransition;Lcom/android/compose/animation/scene/SceneKey;FLandroidx/compose/animation/core/Animatable;FZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/compose/animation/scene/SwipeTransition;",
            "Lcom/android/compose/animation/scene/SceneKey;",
            "F",
            "Landroidx/compose/animation/core/Animatable;",
            "FZZ",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$skipAnimation:Z

    iput-object p2, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iput-object p3, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    iput p4, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetOffset:F

    iput-object p5, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    iput p6, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$initialVelocity:F

    iput-boolean p7, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$isTargetGreater:Z

    iput-boolean p8, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$startedWhenOvercrollingTargetScene:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    new-instance p1, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;

    iget-boolean v1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$skipAnimation:Z

    iget-object v2, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v3, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    iget v4, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetOffset:F

    iget-object v5, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    iget v6, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$initialVelocity:F

    iget-boolean v7, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$isTargetGreater:Z

    iget-boolean v8, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$startedWhenOvercrollingTargetScene:Z

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;-><init>(ZLcom/android/compose/animation/scene/SwipeTransition;Lcom/android/compose/animation/scene/SceneKey;FLandroidx/compose/animation/core/Animatable;FZZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$skipAnimation:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/SwipeTransition;->cancelOffsetAnimation()V

    iget-object v1, p1, Lcom/android/compose/animation/scene/SwipeTransition;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v1, p1, v0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    iget-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/SwipeTransition;->cancelOffsetAnimation()V

    iget-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget p0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetOffset:F

    iget-object p1, p1, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v1, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v1, v1, Lcom/android/compose/animation/scene/TransformationSpecImpl;->swipeSpec:Landroidx/compose/animation/core/SpringSpec;

    if-nez v1, :cond_3

    iget-object p1, p1, Lcom/android/compose/animation/scene/SwipeTransition;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-interface {p1}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->getTransitions()Lcom/android/compose/animation/scene/SceneTransitions;

    move-result-object p1

    iget-object v1, p1, Lcom/android/compose/animation/scene/SceneTransitions;->defaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

    :cond_3
    move-object v3, v1

    iget-object v1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    iget p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetOffset:F

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    iget p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$initialVelocity:F

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance p1, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;

    iget-object v7, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-boolean v8, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$isTargetGreater:Z

    iget-boolean v9, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$startedWhenOvercrollingTargetScene:Z

    iget v10, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetOffset:F

    iget-object v11, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;-><init>(Lcom/android/compose/animation/scene/SwipeTransition;ZZFLcom/android/compose/animation/scene/SceneKey;)V

    iput v2, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->label:I

    move-object v2, v4

    move-object v4, v5

    move-object v5, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/animation/core/Animatable;->animateTo(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/SwipeTransition;->cancelOffsetAnimation()V

    iget-object v0, p1, Lcom/android/compose/animation/scene/SwipeTransition;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v0, p1, p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_1
    iget-object v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0}, Lcom/android/compose/animation/scene/SwipeTransition;->cancelOffsetAnimation()V

    iget-object v1, v0, Lcom/android/compose/animation/scene/SwipeTransition;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v1, v0, p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    throw p1
.end method
