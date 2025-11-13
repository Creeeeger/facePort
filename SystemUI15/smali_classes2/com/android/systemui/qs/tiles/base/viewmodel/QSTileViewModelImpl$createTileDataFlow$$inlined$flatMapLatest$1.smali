.class public final Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;)V

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iget-object v4, v3, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->userInputs:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v5, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterFalseActions$$inlined$filter$1;

    invoke-direct {v5, v4, v3}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterFalseActions$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;)V

    iget-object v4, v3, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->config:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->policy:Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy;

    instance-of v6, v4, Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy$NoRestrictions;

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    instance-of v6, v4, Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy$Restricted;

    if-eqz v6, :cond_5

    new-instance v6, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1;

    invoke-direct {v6, v5, v4, v3, v1}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;Landroid/os/UserHandle;)V

    move-object v5, v6

    :goto_0
    const-wide/16 v6, 0xc8

    iget-object v4, v3, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-static {v5, v6, v7, v4}, Lcom/android/systemui/util/kotlin/FlowKt;->throttle(Lkotlinx/coroutines/flow/Flow;JLcom/android/systemui/util/time/SystemClock;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1;

    invoke-direct {v5, v4, v3, v1}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;Landroid/os/UserHandle;)V

    new-instance v4, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$2;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$userInputFlow$2;-><init>(Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v7, v5, v4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v7, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->forceUpdates:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v5, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$lambda$5$$inlined$map$1;

    invoke-direct {v5, v4}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$lambda$5$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v4, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$1$updateTriggers$2;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    invoke-direct {v4, v7, v6}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$1$updateTriggers$2;-><init>(Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v7, v5, v4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    filled-new-array {v3, v7}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$1$updateTriggers$3;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$1$updateTriggers$3;-><init>(Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v5, v4, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v7, 0x3

    invoke-static {v4, v7}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v5, v3, v4, v7}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileDataInteractor:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;

    invoke-interface {v4, v1, v3}, Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;->tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$1$1;

    invoke-direct {v4, v6}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v5, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    instance-of v1, v5, Lkotlinx/coroutines/flow/CancellableFlow;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lkotlinx/coroutines/flow/CancellableFlowImpl;

    invoke-direct {v1, v5}, Lkotlinx/coroutines/flow/CancellableFlowImpl;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    move-object v5, v1

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v5, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput v2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
