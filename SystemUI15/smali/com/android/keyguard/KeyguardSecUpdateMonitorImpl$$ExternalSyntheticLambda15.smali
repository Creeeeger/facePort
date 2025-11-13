.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerFullyShowingChanged(Z)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerStateChanged(Z)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimulationFailToUnlock(I)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockscreenDisabled:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLockDisabledChanged(Z)V

    return-void

    :pswitch_4
    check-cast p1, Lcom/android/keyguard/SecFaceMsg;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x457

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    :pswitch_5
    check-cast p1, Lcom/android/keyguard/SecFpMsg;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x456

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget p1, p1, Lcom/android/keyguard/SecFpMsg;->type:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/SecFaceMsg;

    if-eqz p1, :cond_0

    iget v3, p1, Lcom/android/keyguard/SecFaceMsg;->type:I

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v3, 0x457

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
