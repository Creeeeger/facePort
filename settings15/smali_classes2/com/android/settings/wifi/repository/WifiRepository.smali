.class public final Lcom/android/settings/wifi/repository/WifiRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final wifiStateChangedActionFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/settingslib/spaprivileged/framework/common/BroadcastReceiverFlowKt;->broadcastReceiverFlow(Landroid/content/Context;Landroid/content/IntentFilter;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "wifiStateChangedActionFlow"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiRepository;->wifiStateChangedActionFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final wifiStateFlow()Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
    .locals 3

    new-instance v0, Lcom/android/settings/wifi/repository/WifiRepository$wifiStateFlow$$inlined$map$1;

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiRepository;->wifiStateChangedActionFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/repository/WifiRepository$wifiStateFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p0, Lcom/android/settings/wifi/repository/WifiRepository$wifiStateFlow$2;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object p0

    return-object p0
.end method
