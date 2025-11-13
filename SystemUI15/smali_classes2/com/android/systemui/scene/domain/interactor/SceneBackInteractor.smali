.class public final Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _backStack:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final backScene:Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor$special$$inlined$map$1;

.field public final backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logger:Lcom/android/systemui/scene/shared/logger/SceneLogger;

.field public final sceneContainerConfig:Lcom/android/systemui/scene/shared/model/SceneContainerConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scene/shared/logger/SceneLogger;Lcom/android/systemui/scene/shared/model/SceneContainerConfig;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/android/compose/animation/scene/SceneKey;

    sget-object p2, Lcom/android/systemui/scene/data/model/EmptyStack;->INSTANCE:Lcom/android/systemui/scene/data/model/EmptyStack;

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/animation/scene/SceneKey;

    new-instance v3, Lcom/android/systemui/scene/data/model/StackedNodes;

    invoke-direct {v3, v2, p2}, Lcom/android/systemui/scene/data/model/StackedNodes;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/systemui/scene/data/model/SceneStack;)V

    add-int/lit8 v1, v1, 0x1

    move-object p2, v3

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor;->backScene:Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor$special$$inlined$map$1;

    return-void
.end method
