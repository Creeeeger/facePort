.class public abstract Lcom/android/systemui/power/sound/PowerUiSound;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mChargingType:I

.field public final mContext:Landroid/content/Context;

.field public mIsInCall:Z

.field public mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field public mRingerMode:I

.field public final mSoundType:I

.field public mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mSoundType:I

    return-void
.end method


# virtual methods
.method public final checkCommonCondition()Z
    .locals 8

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    const-string v1, "PowerUiSound"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mSoundType:I

    if-ne v0, v2, :cond_1

    const-string p0, "checkCommonCondition : Knox Custom disabled SOUND_TYPE_CHARGER_CONNECTION"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v4, v0, :cond_3

    const-string p0, "checkCommonCondition : recording so doesn\'t play sound"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    move v0, v3

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mRingerMode:I

    iget-object v5, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "alertoncall_mode"

    const/4 v7, -0x2

    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mIsInCall:Z

    if-nez v6, :cond_5

    if-ne v0, v4, :cond_6

    :cond_5
    if-eqz v5, :cond_7

    iput v2, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mRingerMode:I

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/power/sound/PowerUiSound;->checkCondition()Z

    move-result p0

    return p0

    :cond_7
    const-string p0, "checkCommonCondition : calling and doesn\'t notify during calls"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public abstract checkCondition()Z
.end method

.method public abstract getAudioAttribute()Landroid/media/AudioAttributes;
.end method

.method public getVolume()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final playSound(I)V
    .locals 8

    const-string v0, "PowerUiSound"

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/systemui/power/sound/SoundPathFinder;->getSoundPath(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v3, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/power/sound/PowerUiSound;->getAudioAttribute()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/power/sound/PowerUiSound;->getVolume()F

    move-result v7

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;F)V

    const-string p0, "playSound : type = "

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "playSound : NPE occur"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public abstract playSoundAndVibration()V
.end method

.method public final playVibration(IILandroid/os/VibrationEffect$SemMagnitudeType;)V
    .locals 2

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v0, v1, p3}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p3

    if-eq p2, v1, :cond_0

    invoke-virtual {p3, p2}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mVibrator:Landroid/os/Vibrator;

    const-string p2, "PowerUiSound"

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "playVibration : index = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "playVibration : Charging vibration setting is on but Vibrator is null"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
