.class public final Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$callback$1;
.super Landroid/media/AudioDeviceCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $this_deviceStateChanges:Lkotlin/Pair;


# direct methods
.method public constructor <init>(Lkotlin/Pair;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Landroid/content/Context;",
            "+",
            "Landroid/media/AudioManager;",
            ">;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$callback$1;->$this_deviceStateChanges:Lkotlin/Pair;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$callback$1;->updateListForValidMedia([Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$callback$1;->updateListForValidMedia([Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method public final updateListForValidMedia([Landroid/media/AudioDeviceInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$callback$1;->$this_deviceStateChanges:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    sget-object v4, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->isValidDeviceTypeForMedia(Landroid/media/AudioDeviceInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$callback$1;->$this_deviceStateChanges:Lkotlin/Pair;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$updateDevices$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion$deviceStateChanges$1$updateDevices$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
