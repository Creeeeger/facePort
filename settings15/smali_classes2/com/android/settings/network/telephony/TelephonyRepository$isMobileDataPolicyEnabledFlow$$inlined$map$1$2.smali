.class public final Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $policy$inlined:I

.field public final synthetic $subId$inlined:I

.field public final synthetic $telephonyManager$inlined:Landroid/telephony/TelephonyManager;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroid/telephony/TelephonyManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;->$telephonyManager$inlined:Landroid/telephony/TelephonyManager;

    iput p3, p0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;->$policy$inlined:I

    iput p4, p0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;->$subId$inlined:I

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2$1;-><init>(Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Unit;

    iget-object p1, p0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;->$telephonyManager$inlined:Landroid/telephony/TelephonyManager;

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;->$policy$inlined:I

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->isMobileDataPolicyEnabled(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;->$subId$inlined:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] isMobileDataPolicyEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TelephonyRepository"

    invoke-static {v4, p1, p2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput v3, v0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
