.class public final synthetic Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;

    iget p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mActivityTaskManagerService:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "Error while calling WindowManager"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->f$1:I

    iget-object v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardDismissed(I)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;->f$1:I

    iget-object p0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiSoundsStreamType:I

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v4, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSoundVolume:F

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    monitor-enter v0

    :try_start_1
    iput p0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockSoundStreamId:I

    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
