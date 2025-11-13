.class public final Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $this_deviceStateChanges:Lkotlin/Pair;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lkotlin/Pair<",
            "+",
            "Landroid/content/Context;",
            "+",
            "Landroid/media/AudioManager;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$receiver$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$receiver$1;->$this_deviceStateChanges:Lkotlin/Pair;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceive() - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BuiltInDeviceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :sswitch_1
    const-string p2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :sswitch_2
    const-string p2, "android.intent.action.MULTISOUND_STATE_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :sswitch_3
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :sswitch_4
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$receiver$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$receiver$1;->$this_deviceStateChanges:Lkotlin/Pair;

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$updateDevices$1;

    invoke-direct {p2, p1, p0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$updateDevices$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, p2, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_1

    :sswitch_5
    const-string p2, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$receiver$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$receiver$1;->$this_deviceStateChanges:Lkotlin/Pair;

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$updateDevices$1;

    invoke-direct {p2, p1, p0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$updateDevices$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, p2, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7539e1b9 -> :sswitch_5
        -0x73abbf83 -> :sswitch_4
        -0x4e6e32e7 -> :sswitch_3
        -0x2fff10fe -> :sswitch_2
        0x1d0d7e43 -> :sswitch_1
        0x727c71d1 -> :sswitch_0
    .end sparse-switch
.end method
