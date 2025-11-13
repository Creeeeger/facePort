.class public final Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;
.super Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public result:Landroid/telephony/CallForwardingInfo;

.field public resultFuture:Lcom/google/common/util/concurrent/SettableFuture;


# virtual methods
.method public final process()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->tm:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->subId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand$1;

    invoke-direct {v2, p0}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand$1;-><init>(Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/telephony/TelephonyManager;->getCallForwarding(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
