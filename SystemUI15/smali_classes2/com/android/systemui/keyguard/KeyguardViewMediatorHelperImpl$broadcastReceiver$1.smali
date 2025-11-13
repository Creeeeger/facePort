.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "penInsert"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACTION_PEN_INSERT intent is received. penInsert="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure$2()Z

    move-result v1

    invoke-static {v0, p2, v1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$canBeDismissedWhenSpenDetached(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/content/Intent;ZZ)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1$onReceive$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1$onReceive$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateFMMLock(IZ)Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFMMLock()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION_FMM_LOCKED is received isFMMLock : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fmmLock:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$notifyRemoteLockRequested(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x44d

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fmmLock:Ljava/lang/Object;

    invoke-virtual {p2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateFMMLock(IZ)Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFMMLock()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION_FMM_UNLOCKED is received isFMMLock : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure$2()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerByRemoteLock(I)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$keyguardDone(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked$2()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateCarrierLock(I)Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCarrierLock()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION_CARRIER_LOCK_SUBSCRIBE is received isCarrierLock : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->carrierLock:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$notifyRemoteLockRequested(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->carrierLock:Ljava/lang/Object;

    invoke-virtual {p2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateCarrierLock(I)Z

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCarrierLock()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_CARRIER_LOCK_CANCEL is received isCarrierLock : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure$2()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$keyguardDone(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked$2()V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Carrier Lock is enabled"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_HOMEHUB:Z

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "pogo_plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pogoPlugged:I

    if-eq v1, p2, :cond_8

    iput p2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pogoPlugged:I

    :cond_8
    iget p2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pogoPlugged:I

    if-eqz p2, :cond_d

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure$2()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$keyguardDone(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.samsung.intent.action.OMC_CHANGED"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "KeyguardViewMediator"

    const-string p1, "Update CscFeatures"

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "updateCscFeature carrier text : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CscFeature_LockScreen_ConfigCarrierTextPolicy"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncarrier security : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CscFeature_LockScreen_ConfigCarrierSecurityPolicy"

    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ncarrier emergency : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_EMERGENCY_POLICY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "CscFeature_LockScreen_ConfigEmergencyCallPolicy"

    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CscRune"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v0, "UseCdmaCardText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    invoke-static {}, Lcom/android/systemui/CscRune;->isDisplayUsimText()Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_EMERGENCY_BUTTON_KOR:Z

    invoke-static {}, Lcom/android/systemui/CscRune;->isDisplayUsimText()Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    invoke-static {}, Lcom/android/systemui/CscRune;->isDisplayUsimText()Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    sget-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v0, "UseSKTSimText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_SKT_USIM_TEXT:Z

    sget-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v0, "UseKTTSimText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_KTT_USIM_TEXT:Z

    sget-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v0, "UseLGTSimText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_LGU_USIM_TEXT:Z

    sget-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->LOCKUI_LGU_USIM_TEXT:Z

    sget-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v0, "UseDCMSimLockText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    :cond_b
    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string v0, "FactoryResetProtectionWarning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    sget-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_VZW_INSTRUCTION:Z

    sget-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string v0, "SupportSimPermanentDisable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    sget-object p1, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string v0, "UseSamsungAccountAuth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/CscRune;->LOCKUI_HELP_TEXT_FOR_CHN:Z

    :cond_c
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_EMERGENCY_POLICY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_EMERGENCY_POLICY:Ljava/lang/String;

    const-string p1, "DisableEmergencyCallWhenOffline"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    sget-object p0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_EMERGENCY_POLICY:Ljava/lang/String;

    const-string p1, "DirectCall"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    :cond_d
    :goto_2
    return-void
.end method
