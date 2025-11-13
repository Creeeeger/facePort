.class final Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;
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

.field final synthetic $layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;",
            "Landroidx/compose/animation/core/Animatable;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->$layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iput-object p2, p0, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;

    iget-object v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->$layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->$layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p1, p1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-interface {p1}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->getTransitions()Lcom/android/compose/animation/scene/SceneTransitions;

    move-result-object p1

    iget-object p1, p1, Lcom/android/compose/animation/scene/SceneTransitions;->defaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

    iget v1, p1, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    new-instance v3, Ljava/lang/Float;

    const v4, 0x3a83126f    # 0.001f

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Landroidx/compose/animation/core/SpringSpec;

    iget p1, p1, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    invoke-direct {v7, p1, v1, v3}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    new-instance v6, Ljava/lang/Float;

    const/4 p1, 0x0

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    iput v2, p0, Lcom/android/compose/animation/scene/TransitionState$Transition$interruptionProgress$create$1;->label:I

    const/4 v9, 0x0

    const/16 v11, 0xc

    const/4 v8, 0x0

    move-object v10, p0

    invoke-static/range {v5 .. v11}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
