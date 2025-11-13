.class final Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1;
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
.field final synthetic $this_observableTransitionState:Lcom/android/compose/animation/scene/SceneTransitionLayoutState;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1;->$this_observableTransitionState:Lcom/android/compose/animation/scene/SceneTransitionLayoutState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget-object p0, p0, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1;->$this_observableTransitionState:Lcom/android/compose/animation/scene/SceneTransitionLayoutState;

    check-cast p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object p0

    instance-of v0, p0, Lcom/android/compose/animation/scene/TransitionState$Idle;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    check-cast p0, Lcom/android/compose/animation/scene/TransitionState$Idle;

    iget-object p0, p0, Lcom/android/compose/animation/scene/TransitionState$Idle;->currentScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {v0, p0}, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;-><init>(Lcom/android/compose/animation/scene/SceneKey;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/compose/animation/scene/TransitionState$Transition;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    move-object v1, p0

    check-cast v1, Lcom/android/compose/animation/scene/TransitionState$Transition;

    iget-object v2, v1, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v3, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1$1;

    invoke-direct {v3, p0}, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1$1;-><init>(Lcom/android/compose/animation/scene/TransitionState;)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v4

    new-instance v3, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1$2;

    invoke-direct {v3, p0}, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1$2;-><init>(Lcom/android/compose/animation/scene/TransitionState;)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/compose/animation/scene/TransitionState$Transition;->isInitiatedByUserInput()Z

    move-result v6

    new-instance v3, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1$3;

    invoke-direct {v3, p0}, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1$3;-><init>(Lcom/android/compose/animation/scene/TransitionState;)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v7

    iget-object v3, v1, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;ZLkotlinx/coroutines/flow/Flow;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
