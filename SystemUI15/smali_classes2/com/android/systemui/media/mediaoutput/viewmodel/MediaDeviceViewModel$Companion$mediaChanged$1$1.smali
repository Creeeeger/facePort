.class final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;
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
.field final synthetic $deviceStatusChangeCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1;

.field final synthetic $mediaContentChangeCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$mediaContentChangeCallback$1;

.field final synthetic $mediaDeviceControlCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$mediaDeviceControlCallback$1;

.field final synthetic $this_mediaChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$mediaDeviceControlCallback$1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$mediaContentChangeCallback$1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;->$this_mediaChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;->$mediaDeviceControlCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$mediaDeviceControlCallback$1;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;->$mediaContentChangeCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$mediaContentChangeCallback$1;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;->$deviceStatusChangeCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "MediaDeviceViewModel"

    const-string v1, "removeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;->$this_mediaChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceControlOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;->$this_mediaChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;->$mediaContentChangeCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$mediaContentChangeCallback$1;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaContentOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl;->removeContentChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;->$this_mediaChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$1;->$deviceStatusChangeCallback:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$deviceStatusChangeCallback$1;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceStatusOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;->removeDeviceStatusChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
