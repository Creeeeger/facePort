.class public final Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _serviceBindStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _serviceConnectedStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final context:Landroid/content/Context;

.field public mediaSdkSupportService:Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;

.field public final serviceConnection:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->context:Landroid/content/Context;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->_serviceBindStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->_serviceConnectedStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;-><init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;)V

    iput-object p1, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->serviceConnection:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;

    return-void
.end method


# virtual methods
.method public final emitMediaSdkServiceDisconnectedState()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->mediaSdkSupportService:Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->_serviceConnectedStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "MediaSdkSupportServiceClient"

    const-string v0, "emitMediaSdkServiceDisconnectedState"

    const-string v1, "ServiceDisconnectedStateEmitted: true | Version: 1.0.1.17 | Build type: release | isDebug: false"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
