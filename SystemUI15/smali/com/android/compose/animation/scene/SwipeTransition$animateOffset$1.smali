.class final Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $initialVelocity:F

.field final synthetic $skipAnimation:Z

.field final synthetic $targetOffset:F

.field final synthetic $targetScene:Lcom/android/compose/animation/scene/SceneKey;

.field final synthetic this$0:Lcom/android/compose/animation/scene/SwipeTransition;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SwipeTransition;FLcom/android/compose/animation/scene/SceneKey;Lkotlinx/coroutines/CoroutineScope;ZF)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iput p2, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$targetOffset:F

    iput-object p3, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p4, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-boolean p5, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$skipAnimation:Z

    iput p6, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$initialVelocity:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v0, v0, Lcom/android/compose/animation/scene/SwipeTransition;->dragOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Landroidx/compose/animation/core/AnimatableKt;->Animatable(FF)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iget v1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$targetOffset:F

    iget-object v2, v0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-object v2, v2, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v12, 0x1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v9, v12

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    iget-object v1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v3, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v3, v3, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    invoke-virtual {v1}, Lcom/android/compose/animation/scene/SwipeTransition;->getProgress()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    :goto_1
    move v10, v12

    goto :goto_2

    :cond_1
    move v10, v2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    invoke-virtual {v1}, Lcom/android/compose/animation/scene/SwipeTransition;->getProgress()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v13, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    new-instance v14, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;

    iget-boolean v3, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$skipAnimation:Z

    iget-object v4, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v5, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    iget v6, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$targetOffset:F

    iget v8, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1;->$initialVelocity:F

    const/4 v11, 0x0

    move-object v2, v14

    move-object v7, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1;-><init>(ZLcom/android/compose/animation/scene/SwipeTransition;Lcom/android/compose/animation/scene/SceneKey;FLandroidx/compose/animation/core/Animatable;FZZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x0

    invoke-static {v1, p0, v13, v14, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    new-instance v1, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;

    invoke-direct {v1, v0, p0}, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/Job;)V

    return-object v1
.end method
