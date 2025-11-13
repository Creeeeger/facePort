.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $soundId:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->$soundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSounds:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSoundStreamId:I

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiSoundsStreamType:I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->audioManager:Landroid/media/AudioManager;

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiSoundsStreamType:I

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_LOCK_SITUATION_VOLUME:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    move v4, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->$soundId:I

    iget v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockSoundId:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x7

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v0

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->$soundId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playSound "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSounds:Landroid/media/SoundPool;

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->$soundId:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    iput p0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSoundStreamId:I

    :cond_4
    return-void
.end method
