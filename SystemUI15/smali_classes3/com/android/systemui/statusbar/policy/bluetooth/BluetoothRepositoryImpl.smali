.class public final Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepository;


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method


# virtual methods
.method public final fetchConnectionStatusInBackground(Ljava/util/Collection;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda1;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl$fetchConnectionStatusInBackground$1;-><init>(Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;Ljava/util/Collection;Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusFetchedCallback;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
