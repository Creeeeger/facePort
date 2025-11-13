.class final Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $receiver:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$receiver$1;

.field final synthetic $this_castDeviceChanges:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$receiver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$2;->$this_castDeviceChanges:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$2;->$callback:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$2;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$2;->$receiver:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$receiver$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "MusicShareDeviceController"

    const-string/jumbo v1, "unregisterAudioDeviceCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$2;->$this_castDeviceChanges:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$2;->$callback:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$callback$1;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$2;->$receiver:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castDeviceChanges$1$receiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
