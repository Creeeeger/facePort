.class final Lcom/android/settings/wifi/WifiSummaryRepository$summaryFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
        "wifiStatusSummary",
        "wifiEntry",
        "Lcom/android/wifitrackerlib/WifiEntry;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/wifitrackerlib/WifiEntry;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/settings/wifi/WifiSummaryRepository$summaryFlow$1;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSummaryRepository$summaryFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSummaryRepository$summaryFlow$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSummaryRepository$summaryFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/wifi/WifiSummaryRepository$summaryFlow$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSummaryRepository$summaryFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSummaryRepository$summaryFlow$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/wifitrackerlib/WifiEntry;

    instance-of v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getAlternateSummary()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
