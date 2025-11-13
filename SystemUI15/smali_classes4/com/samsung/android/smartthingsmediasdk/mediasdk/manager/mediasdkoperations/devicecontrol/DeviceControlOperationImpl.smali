.class public final Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;
.super Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;-><init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;)V

    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DeviceControlOperationImpl"

    return-object p0
.end method

.method public final launchRemoteControlPlugIn(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl$launchRemoteControlPlugIn$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl$launchRemoteControlPlugIn$1;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public final setMute(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl$setMute$1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl$setMute$1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public final togglePlayback(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl$togglePlayback$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl$togglePlayback$1;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public final updateVolume(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl$updateVolume$1;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl$updateVolume$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method
