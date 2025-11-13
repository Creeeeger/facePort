.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "/system/media/audio/ui/Unlock_VA_Mode.ogg"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockStaySoundId:I

    if-nez v4, :cond_0

    const-string v4, "KeyguardViewMediator"

    const-string v5, "failed to load lock stay sound from /system/media/audio/ui/Unlock_VA_Mode.ogg"

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v4, Lcom/android/systemui/LsRune;->KEYGUARD_LOCK_SITUATION_VOLUME:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "stv_lock_screen"

    invoke-virtual {v0, v1, v4}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    const-string/jumbo v1, "stv_unlock_screen"

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockStaySoundId:I

    invoke-virtual {v0, v3, v1}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSounds:Landroid/media/SoundPool;

    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockSoundId:I

    return-void

    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone$1()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout$1(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked$1(J)V

    :goto_0
    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide$1()V

    return-void

    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked$1(ZZ)V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardViewMediator#hideLocked"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "hideLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void

    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardViewMediator"

    const-string v1, "mHideAnimationFinishedRunnable#run"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
