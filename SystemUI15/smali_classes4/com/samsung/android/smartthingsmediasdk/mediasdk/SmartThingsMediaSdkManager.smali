.class public final Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

.field public final supportServiceClientStateManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/SupportServiceClientStateManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/SupportServiceClientStateManager;Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->supportServiceClientStateManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/SupportServiceClientStateManager;

    iput-object p2, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    return-void
.end method
