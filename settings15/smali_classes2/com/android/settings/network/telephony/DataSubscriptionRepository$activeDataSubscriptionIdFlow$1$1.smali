.class public final Lcom/android/settings/network/telephony/DataSubscriptionRepository$activeDataSubscriptionIdFlow$1$1;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# instance fields
.field public final synthetic $this_telephonyCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$activeDataSubscriptionIdFlow$1$1;->$this_telephonyCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveDataSubscriptionIdChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$activeDataSubscriptionIdFlow$1$1;->$this_telephonyCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "activeDataSubscriptionIdFlow: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataSubscriptionRepo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
