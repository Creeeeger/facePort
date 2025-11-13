.class public abstract Lcom/android/settingslib/bluetooth/LocalBluetoothManagerExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final getHeadsetAudioModeChanges(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;
    .locals 2

    new-instance v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManagerExtKt$headsetAudioModeChanges$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManagerExtKt$headsetAudioModeChanges$1;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    return-object p0
.end method
