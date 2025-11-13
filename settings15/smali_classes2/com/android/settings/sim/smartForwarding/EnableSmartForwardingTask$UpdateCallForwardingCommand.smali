.class public final Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;
.super Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public phoneNum:Ljava/lang/String;

.field public queryResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

.field public resultFuture:Lcom/google/common/util/concurrent/SettableFuture;


# virtual methods
.method public final onRestore()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRestore: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartForwarding"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;->tm:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;->subId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;->queryResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;->result:Landroid/telephony/CallForwardingInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/telephony/TelephonyManager;->setCallForwarding(Landroid/telephony/CallForwardingInfo;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final process()Z
    .locals 5

    new-instance v0, Landroid/telephony/CallForwardingInfo;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;->phoneNum:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, v1}, Landroid/telephony/CallForwardingInfo;-><init>(ZILjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;->tm:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;->subId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/telephony/TelephonyManager;->setCallForwarding(Landroid/telephony/CallForwardingInfo;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
