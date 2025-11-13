.class final Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;
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

.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec;"
        }
    .end annotation
.end field

.field final synthetic $initialVelocity:F

.field final synthetic $layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

.field final synthetic $targetProgress:F

.field final synthetic $targetScene:Lcom/android/compose/animation/scene/SceneKey;

.field final synthetic $transition:Lcom/android/compose/animation/scene/OneOffTransition;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/animation/core/AnimationSpec;FLcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/OneOffTransition;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable;",
            "F",
            "Landroidx/compose/animation/core/AnimationSpec;",
            "F",
            "Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;",
            "Lcom/android/compose/animation/scene/OneOffTransition;",
            "Lcom/android/compose/animation/scene/SceneKey;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    iput p2, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$targetProgress:F

    iput-object p3, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput p4, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$initialVelocity:F

    iput-object p5, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iput-object p6, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$transition:Lcom/android/compose/animation/scene/OneOffTransition;

    iput-object p7, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance p1, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;

    iget-object v1, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    iget v2, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$targetProgress:F

    iget-object v3, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget v4, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$initialVelocity:F

    iget-object v5, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v6, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$transition:Lcom/android/compose/animation/scene/OneOffTransition;

    iget-object v7, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;-><init>(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/animation/core/AnimationSpec;FLcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/OneOffTransition;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    iget p1, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$targetProgress:F

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    iget-object p1, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget v4, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$initialVelocity:F

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v4}, Ljava/lang/Float;-><init>(F)V

    iput v2, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->label:I

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v2, v3

    move-object v3, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v0, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$transition:Lcom/android/compose/animation/scene/OneOffTransition;

    iget-object p0, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p1, v0, p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_1
    iget-object v0, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v1, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$transition:Lcom/android/compose/animation/scene/OneOffTransition;

    iget-object p0, p0, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, v1, p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    throw p1
.end method
