.class public final Lcom/android/settings/wifi/WifiSummaryRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final wifiPickerRepository:Lcom/android/settings/wifi/repository/WifiPickerRepository;

.field public final wifiStatusRepository:Lcom/android/settings/wifi/repository/WifiStatusRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/settings/wifi/repository/WifiStatusRepository;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/repository/WifiStatusRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->isDeviceConfigEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/wifi/repository/WifiPickerRepository;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/repository/WifiPickerRepository;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSummaryRepository;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSummaryRepository;->wifiStatusRepository:Lcom/android/settings/wifi/repository/WifiStatusRepository;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSummaryRepository;->wifiPickerRepository:Lcom/android/settings/wifi/repository/WifiPickerRepository;

    return-void
.end method


# virtual methods
.method public final summaryFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSummaryRepository;->wifiStatusRepository:Lcom/android/settings/wifi/repository/WifiStatusRepository;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSummaryRepository;->wifiPickerRepository:Lcom/android/settings/wifi/repository/WifiPickerRepository;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/wifi/repository/WifiStatusRepository;->wifiStatusTrackerFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1;

    invoke-direct {v2, v1, p0}, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/wifi/WifiSummaryRepository;)V

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/wifi/repository/WifiStatusRepository;->wifiStatusTrackerFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1;

    invoke-direct {v3, v1, p0}, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/wifi/WifiSummaryRepository;)V

    invoke-static {v3, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-virtual {v2}, Lcom/android/settings/wifi/repository/WifiPickerRepository;->connectedWifiEntryFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSummaryRepository$summaryFlow$1;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method
