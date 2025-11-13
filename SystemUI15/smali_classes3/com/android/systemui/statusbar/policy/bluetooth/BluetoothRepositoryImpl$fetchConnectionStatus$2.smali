.class final Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;
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
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->this$0:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->$currentDevices:Ljava/util/Collection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->this$0:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->$currentDevices:Ljava/util/Collection;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;-><init>(Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->this$0:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->$currentDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->$currentDevices:Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v2

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v2, v3

    goto :goto_1

    :cond_3
    if-ge v2, p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatus$2;->$currentDevices:Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    if-ne p1, p0, :cond_7

    goto :goto_4

    :cond_7
    move v0, p1

    :goto_4
    new-instance p0, Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;-><init>(ILjava/util/List;)V

    return-object p0

    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
