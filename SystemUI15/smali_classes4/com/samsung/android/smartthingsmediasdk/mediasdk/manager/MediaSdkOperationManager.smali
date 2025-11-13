.class public final Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final deviceControlOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;

.field public final deviceStatusOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;

.field public final mediaContentOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl;

.field public final mediaOutputDeviceOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl;

.field public final mediaOutputSelectedOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl;Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediapolicy/MediaPolicyOperationImpl;Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceControlOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;

    iput-object p2, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceStatusOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;

    iput-object p3, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaContentOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl;

    iput-object p4, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaOutputSelectedOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;

    iput-object p6, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaOutputDeviceOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl;

    return-void
.end method
