.class public final Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundContext:Lkotlin/coroutines/CoroutineContext;

.field public currentUser:Landroid/os/UserHandle;

.field public final customTileRepository:Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepository;

.field public final defaultsRepository:Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileDefaultsRepository;

.field public final tileScope:Lkotlinx/coroutines/CoroutineScope;

.field public final tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

.field public final tileUpdates:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public updatesJob:Lkotlinx/coroutines/Job;

.field public final userMutex:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileDefaultsRepository;Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepository;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->defaultsRepository:Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileDefaultsRepository;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->customTileRepository:Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepository;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->tileScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default()Lkotlinx/coroutines/sync/MutexImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->userMutex:Lkotlinx/coroutines/sync/MutexImpl;

    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p3, p4, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->tileUpdates:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method


# virtual methods
.method public final initForUser(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;

    iget v1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;-><init>(Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/os/UserHandle;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/os/UserHandle;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepository;

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$3:Ljava/lang/Object;

    check-cast p1, Landroid/os/UserHandle;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/os/UserHandle;

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v6

    move-object v6, p2

    move-object p2, v2

    move-object v2, v10

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v2

    goto/16 :goto_7

    :cond_4
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/os/UserHandle;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$1:Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->userMutex:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$2:Ljava/lang/Object;

    iput v7, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->label:I

    invoke-virtual {p2, v4, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->currentUser:Landroid/os/UserHandle;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_2
    move-exception p1

    :goto_2
    move-object p0, p2

    goto/16 :goto_7

    :cond_7
    :try_start_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->updatesJob:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_8

    invoke-interface {v2, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->defaultsRepository:Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileDefaultsRepository;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    iget-object v7, v7, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;->componentName:Landroid/content/ComponentName;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    check-cast v2, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileDefaultsRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileDefaultsRepositoryImpl;->defaultsRequests:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v8, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileDefaultsRepositoryImpl$DefaultsRequest;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v7, v9}, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileDefaultsRepositoryImpl$DefaultsRequest;-><init>(Landroid/os/UserHandle;Landroid/content/ComponentName;Z)V

    invoke-virtual {v2, v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    new-instance v2, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1;

    invoke-direct {v2, p0, p1, v4}, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1;-><init>(Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->tileScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v7, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->updatesJob:Lkotlinx/coroutines/Job;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->customTileRepository:Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepository;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$4:Ljava/lang/Object;

    iput v6, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->label:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    move-object v6, v2

    check-cast v6, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;->isTileActive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-ne v6, v1, :cond_9

    return-object v1

    :cond_9
    move-object v7, p0

    move-object p0, v2

    move-object v2, p1

    :goto_3
    :try_start_9
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-object v7, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->label:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    check-cast p0, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;

    invoke-virtual {p0, p1, v0, v6}, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;->restoreForTheUserIfNeeded(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-ne p0, v1, :cond_a

    return-object v1

    :cond_a
    move-object p0, p2

    move-object p1, v2

    move-object v2, v7

    :goto_4
    :try_start_b
    iget-object p2, v2, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->customTileRepository:Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepository;

    check-cast p2, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;->tileWithUserState:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v3, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl$getTiles$$inlined$filter$1;

    invoke-direct {v3, p2, p1}, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl$getTiles$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/os/UserHandle;)V

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl$getTiles$$inlined$map$1;

    invoke-direct {p2, v3}, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl$getTiles$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$initForUser$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    move-object v0, v2

    :goto_5
    iput-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->currentUser:Landroid/os/UserHandle;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_3
    move-exception p0

    :goto_6
    move-object p1, p0

    goto/16 :goto_2

    :catchall_4
    move-exception p0

    goto :goto_6

    :catchall_5
    move-exception p0

    goto :goto_6

    :goto_7
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
