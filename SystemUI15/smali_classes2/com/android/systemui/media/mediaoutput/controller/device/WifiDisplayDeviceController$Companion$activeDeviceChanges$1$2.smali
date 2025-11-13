.class final Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;
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
.field final synthetic $callback:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$callback$1;

.field final synthetic $receiver:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$receiver$1;

.field final synthetic $this_activeDeviceChanges:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroid/content/Context;",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/Pair;Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$receiver$1;Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$callback$1;)V
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
            "Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$receiver$1;",
            "Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$callback$1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;->$this_activeDeviceChanges:Lkotlin/Pair;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;->$receiver:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$receiver$1;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;->$callback:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$callback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "WifiDisplayDeviceController"

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;->$this_activeDeviceChanges:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;->$receiver:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$receiver$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;->$this_activeDeviceChanges:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;->$callback:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$callback$1;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
