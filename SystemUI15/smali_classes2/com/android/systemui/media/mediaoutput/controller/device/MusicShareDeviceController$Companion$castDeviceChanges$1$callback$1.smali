.class public final Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;
.super Landroid/media/AudioDeviceCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $this_castDeviceChanges:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/AudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Landroid/media/AudioManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;->$this_castDeviceChanges:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    const-string p1, "MusicShareDeviceController"

    const-string v0, "onAudioDevicesAdded()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;->$this_castDeviceChanges:Landroid/media/AudioManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/AudioManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    const-string p1, "MusicShareDeviceController"

    const-string v0, "onAudioDevicesRemoved()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;->$this_castDeviceChanges:Landroid/media/AudioManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/AudioManager;)Lkotlinx/coroutines/Job;

    return-void
.end method
