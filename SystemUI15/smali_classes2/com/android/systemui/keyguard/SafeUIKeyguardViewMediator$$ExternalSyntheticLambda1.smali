.class public final synthetic Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$1:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;ZZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "SafeUIKeyguardViewMediator"

    iget v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    if-nez v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "exitKeyguardAndFinishSurfaceBehindRemoteAnimation#postAfterTraversal: mPM.isInteractive()="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPendingLock="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ". One of these being false means we re-locked the device during unlock. Do not proceed to finish keyguard exit and unlock."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->finishSurfaceBehindRemoteAnimation(Z)V

    invoke-virtual {v1, p0, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->onKeyguardExitFinished()V

    iget-object v3, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "skip hideKeyguardViewAfterRemoteAnimation dismissFromSwipe="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    const-string v5, " wasShowing="

    invoke-static {v4, v3, v5, v2, v0}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "onKeyguardExitRemoteAnimationFinished#hideKeyguardViewAfterRemoteAnimation"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->hideKeyguardViewAfterRemoteAnimation()V

    :goto_1
    invoke-virtual {v1, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->finishSurfaceBehindRemoteAnimation(Z)V

    iget-object p0, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x15a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;->f$2:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateActivityLockScreenState("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-static {v3, v4, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mActivityTaskManagerService:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, v2, p0}, Landroid/app/IActivityTaskManager;->setLockScreenShown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
