.class public final Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $this_activeVolumeChanges:Lcom/android/systemui/volume/util/DisplayManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/DisplayManagerWrapper;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/volume/util/DisplayManagerWrapper;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$listener$1;->$this_activeVolumeChanges:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$listener$1;->$this_activeVolumeChanges:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget v0, p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayCurrentVolume:I

    invoke-virtual {p1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getDisplayMaxVolume()I

    move-result p1

    const-string/jumbo v1, "volume = "

    const-string v2, ", volumeMax = "

    const-string v3, "WifiDisplayDeviceController"

    invoke-static {v0, p1, v1, v2, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$listener$1$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$listener$1$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
