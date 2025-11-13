.class public final Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl;
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

    const-string p0, "MediaOutputDeviceOperationImpl"

    return-object p0
.end method

.method public final startCloudSync()V
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl$startCloudSync$1;->INSTANCE:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl$startCloudSync$1;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public final stopCloudSync()V
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl$stopCloudSync$1;->INSTANCE:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl$stopCloudSync$1;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method
