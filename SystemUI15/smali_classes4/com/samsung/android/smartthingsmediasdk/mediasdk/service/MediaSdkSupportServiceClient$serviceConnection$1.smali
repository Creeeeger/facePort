.class public final Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;->this$0:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ComponentName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MediaSdkSupportServiceClient"

    const-string v1, "onNullBinding"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;->this$0:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    sget p1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->emitMediaSdkServiceDisconnectedState()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;->this$0:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    sget v0, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub;->$r8$clinit:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.oneconnect.mediaoutput.IMediaOutputService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub$Proxy;

    invoke-direct {v1, p2}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v1, p1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->mediaSdkSupportService:Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;->this$0:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->_serviceConnectedStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "MediaSdkSupportServiceClient"

    const-string p1, "onServiceConnected"

    const-string p2, "ServiceConnectedEmitted: true | Version: 1.0.1.17 | Build type: release | isDebug: false"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ComponentName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MediaSdkSupportServiceClient"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;->this$0:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    sget p1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->emitMediaSdkServiceDisconnectedState()V

    return-void
.end method
