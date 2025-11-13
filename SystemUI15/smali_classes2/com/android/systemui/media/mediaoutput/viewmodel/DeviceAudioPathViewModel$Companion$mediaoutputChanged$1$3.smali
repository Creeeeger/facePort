.class final Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$3;
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
.field final synthetic $mediaOutputSelectedCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$mediaOutputSelectedCallback$1;

.field final synthetic $this_mediaoutputChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$mediaOutputSelectedCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$3;->$this_mediaoutputChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$3;->$mediaOutputSelectedCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$mediaOutputSelectedCallback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "DeviceAudioPathViewModel"

    const-string v1, "removeMediaOutputSelectedCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$3;->$this_mediaoutputChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$3;->$mediaOutputSelectedCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$mediaOutputSelectedCallback$1;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaOutputSelectedOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;->removeMediaOutputSelectedCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
