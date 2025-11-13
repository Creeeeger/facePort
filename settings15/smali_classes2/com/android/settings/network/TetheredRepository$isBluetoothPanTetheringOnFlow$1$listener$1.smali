.class public final Lcom/android/settings/network/TetheredRepository$isBluetoothPanTetheringOnFlow$1$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $connectedProxy:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/TetheredRepository$isBluetoothPanTetheringOnFlow$1$listener$1;->$connectedProxy:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/settings/network/TetheredRepository$isBluetoothPanTetheringOnFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string p1, "proxy"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/TetheredRepository$isBluetoothPanTetheringOnFlow$1$listener$1;->$connectedProxy:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/network/TetheredRepository$isBluetoothPanTetheringOnFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v0, Lcom/android/settings/network/TetheredRepository$isBluetoothPanTetheringOnFlow$1$listener$1$onServiceConnected$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/settings/network/TetheredRepository$isBluetoothPanTetheringOnFlow$1$listener$1$onServiceConnected$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/bluetooth/BluetoothProfile;Lkotlin/coroutines/Continuation;)V

    const/4 p2, 0x2

    invoke-static {p0, p1, v1, v0, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
