.class final Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $isTargetGreater:Z

.field final synthetic $startedWhenOvercrollingTargetScene:Z

.field final synthetic $targetOffset:F

.field final synthetic $targetScene:Lcom/android/compose/animation/scene/SceneKey;

.field final synthetic this$0:Lcom/android/compose/animation/scene/SwipeTransition;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SwipeTransition;ZZFLcom/android/compose/animation/scene/SceneKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iput-boolean p2, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$isTargetGreater:Z

    iput-boolean p3, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$startedWhenOvercrollingTargetScene:Z

    iput p4, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$targetOffset:F

    iput-object p5, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/animation/core/Animatable;

    iget-object v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v0, v0, Lcom/android/compose/animation/scene/SwipeTransition;->bouncingScene:Lcom/android/compose/animation/scene/SceneKey;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$isTargetGreater:Z

    iget-object p1, p1, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$startedWhenOvercrollingTargetScene:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$targetOffset:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$targetOffset:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$startedWhenOvercrollingTargetScene:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$targetOffset:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$targetOffset:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    :goto_0
    iget-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    iput-object v0, p1, Lcom/android/compose/animation/scene/SwipeTransition;->bouncingScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object p1, p1, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition$animateOffset$1$job$1$1;->$targetScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/SwipeTransition;->cancelOffsetAnimation()V

    iget-object v0, p1, Lcom/android/compose/animation/scene/SwipeTransition;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v0, p1, p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
