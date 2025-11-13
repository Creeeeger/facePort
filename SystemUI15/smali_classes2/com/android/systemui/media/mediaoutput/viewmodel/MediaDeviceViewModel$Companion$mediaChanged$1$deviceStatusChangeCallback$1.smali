.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1;
.super Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCloudDeviceChanged(ILjava/lang/String;)V
    .locals 3

    const-string v0, "onCloudDeviceChanged() - "

    const-string v1, " : "

    const-string v2, "MediaDeviceViewModel"

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1$onCloudDeviceChanged$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1$onCloudDeviceChanged$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p0, p2, p2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onNearbyChanged(ILjava/lang/String;)V
    .locals 3

    const-string v0, "onNearbyChanged() - "

    const-string v1, " : "

    const-string v2, "MediaDeviceViewModel"

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1$onNearbyChanged$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1$onNearbyChanged$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p0, p2, p2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
