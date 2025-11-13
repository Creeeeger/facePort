.class public final Lcom/android/systemui/power/sound/ChargingSound;
.super Lcom/android/systemui/power/sound/PowerUiSound;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mChargingSoundVibrationHandler:Lcom/android/systemui/power/sound/ChargingSound$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/sound/PowerUiSound;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/android/systemui/power/sound/ChargingSound$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/power/sound/ChargingSound$1;-><init>(Lcom/android/systemui/power/sound/ChargingSound;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/power/sound/ChargingSound;->mChargingSoundVibrationHandler:Lcom/android/systemui/power/sound/ChargingSound$1;

    return-void
.end method


# virtual methods
.method public final checkCondition()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const-string v0, "Check charging sound condition"

    const-string v1, "ChargingSound"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result p0

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->AUDIO_DISABLE_HEADSET_CHARGING_SOUND:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const-string p0, "Should skip charging sound headset noise model..."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getAudioAttribute()Landroid/media/AudioAttributes;
    .locals 2

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "FAST_TRACK"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->replaceTags(Ljava/util/HashSet;)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->AUDIO_SUPPORT_SITUATION_EXTENSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stv_charger_connection"

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getVolume()F
    .locals 2

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->AUDIO_SUPPORT_SITUATION_EXTENSION:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final playSoundAndVibration()V
    .locals 8

    const-string v0, "ChargingSound"

    const-string v1, "playSoundAndVibration Charging sound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_sounds_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "charging_vibration_enabled"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/power/sound/PowerUiSound;->checkCommonCondition()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/systemui/power/sound/ChargingSound;->mChargingSoundVibrationHandler:Lcom/android/systemui/power/sound/ChargingSound$1;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v6, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setFastAudioOpenMode()V

    iget v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mChargingType:I

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v5, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x64

    int-to-long v6, v2

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    if-eqz v1, :cond_5

    iget p0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mChargingType:I

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0xb4

    int-to-long v0, v0

    invoke-virtual {v5, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void
.end method
