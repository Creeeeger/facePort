.class public final Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;
.super Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public result:I

.field public resultFuture:Lcom/google/common/util/concurrent/SettableFuture;


# virtual methods
.method public final process()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->tm:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->subId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;I)V

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getCallWaitingStatus(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
