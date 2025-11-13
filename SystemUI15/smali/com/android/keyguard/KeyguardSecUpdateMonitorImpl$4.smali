.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "received broadcast "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyguardUpdateMonitor"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_16

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "reason"

    if-eqz v2, :cond_1

    invoke-virtual {p2, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x51a

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :cond_1
    const-string v2, "com.samsung.intent.action.USB_RESTRICTION_STATE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "RestrictionState"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "usb restriction state = "

    invoke-static {p2, p1, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const-string p2, "ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0x51c

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :cond_2
    const-string v2, "com.sec.android.intent.action.BLACK_MEMO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "show"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "screen off memo state changed, state = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", running "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    const-string v2, " -> "

    invoke-static {v0, p1, v2, p2, v7}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x258

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setIsRunningBlackMemo(Z)V

    goto/16 :goto_6

    :cond_4
    const-string v2, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_6
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "globalactions"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 p1, 0x454

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_7
    const-string v2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "KeyguardFingerprint"

    const-string v4, "onReceive : "

    if-eqz v2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iput-boolean v9, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    goto/16 :goto_6

    :cond_8
    const-string v2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    goto/16 :goto_6

    :cond_9
    sget-boolean v1, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v1, :cond_a

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 p2, 0x463

    invoke-virtual {p0, p2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :cond_a
    const-string v1, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT+SVCIFPGM=1,7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    sget-object p2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    move v9, v0

    :cond_c
    const-string v1, "isUnlocked = "

    const-string v2, ", isSecure() = "

    invoke-static {v1, v2, v9}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mKeyguardShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getUserCanSkipBouncer() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getUserCanSkipBouncer(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AT+SVCIFPGM=1,7\r\n+SVCIFPGM:1,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getCredentialTypeForUser(I)I

    move-result v3

    if-ne v3, p1, :cond_e

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isLockscreenDisabled()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "NONE"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_d
    const-string p1, "SWIPE"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_e
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricType:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p2, "/FINGERPRINT"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const/16 p2, 0x100

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "/FACE"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isRemoteLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->RemoteLockString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getRemoteLockType()I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    if-eqz p1, :cond_12

    const-string p1, "/CARRIERLOCK"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAdminLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "/ADMIN"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_14

    const-string p1, ",UNLOCK"

    goto :goto_1

    :cond_14
    const-string p1, ",LOCK"

    :goto_1
    const-string p2, "\r\n"

    invoke-static {v1, p1, p2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "response"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "response: "

    invoke-static {v0, p1, v7}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6

    :cond_15
    const-string p1, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    const-string v0, "kids_home_mode"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsKidsModeRunning:Z

    const-string p1, ", isKidsMode : "

    invoke-static {v4, v5, p1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsKidsModeRunning:Z

    invoke-static {p1, p0, v7}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto/16 :goto_6

    :cond_16
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_17

    return-void

    :cond_17
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x517

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_3

    :cond_18
    const/4 p1, 0x3

    goto :goto_3

    :sswitch_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_3

    :cond_19
    move p1, v1

    goto :goto_3

    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3

    :cond_1a
    move p1, v0

    goto :goto_3

    :sswitch_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_3

    :cond_1b
    move p1, v9

    :goto_3
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x515

    goto :goto_4

    :pswitch_1
    move p1, v7

    goto :goto_4

    :pswitch_2
    const/16 p1, 0x519

    goto :goto_4

    :pswitch_3
    const/16 p1, 0x516

    :goto_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-ne p1, v7, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.intent.extra.REPLACING"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_5

    :cond_1c
    iput v9, v0, Landroid/os/Message;->arg1:I

    :cond_1d
    :goto_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1e
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_3
        0xff13fb5 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
