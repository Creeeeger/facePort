.class final Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;
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
.field final synthetic $device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;-><init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ChangeAudioOutput;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ChangeAudioOutput;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v1}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getFinalControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    iget v2, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->numOfAudioOutputChanges:I

    int-to-long v2, v2

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v4}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    iget v0, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->numOfAudioOutputChanges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->numOfAudioOutputChanges:I

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getFinalControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object v0

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    :cond_0
    sget-object p1, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$PhoneSpeaker;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$PhoneSpeaker;

    goto :goto_1

    :cond_1
    instance-of p1, p0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->isBudsDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ConnectedBuds;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ConnectedBuds;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ConnectedBt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ConnectedBt;

    goto :goto_1

    :cond_4
    instance-of p1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    if-eqz p1, :cond_5

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$DisconnectedBt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$DisconnectedBt;

    goto :goto_1

    :cond_5
    instance-of p1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    if-eqz p1, :cond_6

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$WifiSpeaker;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$WifiSpeaker;

    goto :goto_1

    :cond_6
    instance-of p0, p0, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$GroupWifiSpeaker;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$GroupWifiSpeaker;

    goto :goto_1

    :cond_7
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_8

    invoke-static {p0, v0, v0}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
