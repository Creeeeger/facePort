.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$execute$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic $deviceId:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$execute$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$execute$1;->$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$execute$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->shadeController:Lcom/android/systemui/shade/ShadeController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceControlOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$execute$1;->$deviceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;->launchRemoteControlPlugIn(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
