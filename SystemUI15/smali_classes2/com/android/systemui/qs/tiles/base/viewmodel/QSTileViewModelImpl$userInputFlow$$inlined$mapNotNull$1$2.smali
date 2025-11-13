.class public final Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $user$inlined:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2;->$user$inlined:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2$1;

    iget v1, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2$1;-><init>(Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iget-object v2, p2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->state:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    const/4 v4, 0x0

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileData:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v5, v5, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->config:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    iget-object v6, v4, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    iget-object v7, p2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    invoke-virtual {v7, v6, p1, v2, v5}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->logUserActionPipeline(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->qsTileAnalytics:Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    instance-of v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

    goto :goto_1

    :cond_5
    instance-of v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

    :goto_1
    iget-object v6, v4, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->instanceId:Lcom/android/internal/logging/InstanceId;

    const/4 v7, 0x0

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->metricsSpec:Ljava/lang/String;

    invoke-interface {p2, v2, v7, v4, v6}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    new-instance v4, Lcom/android/systemui/qs/tiles/base/interactor/DataUpdateTrigger$UserInput;

    new-instance p2, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2;->$user$inlined:Landroid/os/UserHandle;

    invoke-direct {p2, v2, p1, v5}, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;-><init>(Landroid/os/UserHandle;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;Ljava/lang/Object;)V

    invoke-direct {v4, p2}, Lcom/android/systemui/qs/tiles/base/interactor/DataUpdateTrigger$UserInput;-><init>(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;)V

    :goto_2
    if-eqz v4, :cond_6

    iput v3, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
