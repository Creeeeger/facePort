.class public final Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl;
.super Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;-><init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;)V

    return-void
.end method


# virtual methods
.method public final addContentChangeCallback(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion$mediaChanged$1$mediaContentChangeCallback$1;)V
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl$addContentChangeCallback$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl$addContentChangeCallback$1;-><init>(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public final getMediaContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl$getMediaContent$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl$getMediaContent$1;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaContentOperationImpl"

    return-object p0
.end method

.method public final removeContentChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;)V
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl$removeContentChangeCallback$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl$removeContentChangeCallback$1;-><init>(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method
