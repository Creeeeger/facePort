.class public final Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settings/wifi/WifiSummaryRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/wifi/WifiSummaryRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2;->this$0:Lcom/android/settings/wifi/WifiSummaryRepository;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2$1;-><init>(Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2;->this$0:Lcom/android/settings/wifi/WifiSummaryRepository;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    const-string v4, "getString(...)"

    if-nez v2, :cond_3

    iget-object p1, p2, Lcom/android/settings/wifi/WifiSummaryRepository;->context:Landroid/content/Context;

    const p2, 0x7f142e1e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-boolean v2, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-nez v2, :cond_4

    iget-object p1, p2, Lcom/android/settings/wifi/WifiSummaryRepository;->context:Landroid/content/Context;

    const p2, 0x7f140d1f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v2, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    :cond_5
    iget-object v5, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p2, Lcom/android/settings/wifi/WifiSummaryRepository;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v2, 0x7f141ca2

    invoke-virtual {p2, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_1
    move-object p1, v2

    :goto_2
    iput v3, v0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSummaryRepository$wifiStatusSummaryFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
