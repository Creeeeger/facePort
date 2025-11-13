.class public abstract Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mediaSdkSupportServiceClient:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->mediaSdkSupportServiceClient:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    return-void
.end method


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public final useSafeMediaSdkSupportService(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->mediaSdkSupportServiceClient:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->mediaSdkSupportService:Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    move-object p2, p1

    goto :goto_2

    :goto_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :cond_1
    :goto_2
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/AbstractMediaSdkManager;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "throwable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "useSafeMediaSdkSupportService.onFailure"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    instance-of p0, p2, Lkotlin/Result$Failure;

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, p2

    :goto_3
    return-object p1
.end method
