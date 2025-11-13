.class public final Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediapolicy/MediaPolicyOperationImpl;
.super Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediapolicy/MediaPolicyOperationImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediapolicy/MediaPolicyOperationImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;-><init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;)V

    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCenter@MediaPolicyOperationImpl"

    return-object p0
.end method
