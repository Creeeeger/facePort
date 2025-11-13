.class public final Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

.field public final callWaitingStatus:[Z

.field public final tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;[Z[Landroid/telephony/CallForwardingInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callWaitingStatus:[Z

    iput-object p3, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callWaitingStatus:[Z

    const-string v3, "SmartForwarding"

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    if-eq v1, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Restore call waiting to "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callWaitingStatus:[Z

    aget-boolean v6, v6, v0

    invoke-static {v2, v6, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callWaitingStatus:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v2, v6, v5, v5}, Landroid/telephony/TelephonyManager;->setCallWaitingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

    if-eqz v2, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    if-eq v1, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Restore call forwarding to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;->callForwardingInfo:[Landroid/telephony/CallForwardingInfo;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v5, v5}, Landroid/telephony/TelephonyManager;->setCallForwarding(Landroid/telephony/CallForwardingInfo;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
