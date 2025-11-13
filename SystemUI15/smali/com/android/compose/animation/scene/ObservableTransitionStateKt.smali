.class public abstract Lcom/android/compose/animation/scene/ObservableTransitionStateKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final observableTransitionState(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    new-instance v0, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1;

    invoke-direct {v0, p0}, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
