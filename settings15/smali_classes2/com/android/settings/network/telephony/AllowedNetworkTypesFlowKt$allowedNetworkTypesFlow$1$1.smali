.class public final Lcom/android/settings/network/telephony/AllowedNetworkTypesFlowKt$allowedNetworkTypesFlow$1$1;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;


# instance fields
.field public final synthetic $subId:I

.field public final synthetic $this_telephonyCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/AllowedNetworkTypesFlowKt$allowedNetworkTypesFlow$1$1;->$this_telephonyCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput p2, p0, Lcom/android/settings/network/telephony/AllowedNetworkTypesFlowKt$allowedNetworkTypesFlow$1$1;->$subId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllowedNetworkTypesChanged(IJ)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/AllowedNetworkTypesFlowKt$allowedNetworkTypesFlow$1$1;->$this_telephonyCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/android/settings/network/telephony/AllowedNetworkTypesFlowKt$allowedNetworkTypesFlow$1$1;->$subId:I

    const-string v0, "["

    const-string v1, "] reason: "

    const-string v2, ", allowedNetworkType: "

    invoke-static {v0, v1, p0, p1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AllowedNetworkTypesFlow"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
