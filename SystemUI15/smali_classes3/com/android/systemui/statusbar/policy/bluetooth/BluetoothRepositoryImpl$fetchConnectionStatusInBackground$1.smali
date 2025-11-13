.class final Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;
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
.field final synthetic $callback:Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusFetchedCallback;

.field final synthetic $currentDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;Ljava/util/Collection;Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusFetchedCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusFetchedCallback;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->this$0:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->$currentDevices:Ljava/util/Collection;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->$callback:Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusFetchedCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->this$0:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->$currentDevices:Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->$callback:Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusFetchedCallback;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;-><init>(Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;Ljava/util/Collection;Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusFetchedCallback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->this$0:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->$currentDevices:Ljava/util/Collection;

    iput v2, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;-><init>(Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;->$callback:Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusFetchedCallback;

    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;->connectedDevices:Ljava/util/List;

    iget p1, p1, Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;->maxConnectionState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
