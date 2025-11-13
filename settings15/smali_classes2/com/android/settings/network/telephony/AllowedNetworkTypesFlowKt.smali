.class public abstract Lcom/android/settings/network/telephony/AllowedNetworkTypesFlowKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final allowedNetworkTypesFlow(Landroid/content/Context;I)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/network/telephony/AllowedNetworkTypesFlowKt$allowedNetworkTypesFlow$1;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/AllowedNetworkTypesFlowKt$allowedNetworkTypesFlow$1;-><init>(I)V

    invoke-static {p0, p1, v0}, Lcom/android/settings/network/telephony/TelephonyRepositoryKt;->telephonyCallbackFlow(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
