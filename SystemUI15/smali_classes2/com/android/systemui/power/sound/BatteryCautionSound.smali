.class public final Lcom/android/systemui/power/sound/BatteryCautionSound;
.super Lcom/android/systemui/power/sound/PowerUiSound;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/sound/PowerUiSound;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final checkCondition()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getAudioAttribute()Landroid/media/AudioAttributes;
    .locals 1

    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->replaceTags(Ljava/util/HashSet;)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final playSoundAndVibration()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/power/sound/PowerUiSound;->checkCommonCondition()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mRingerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playSound(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/power/sound/PowerUiSound;->playVibration(IILandroid/os/VibrationEffect$SemMagnitudeType;)V

    goto :goto_0

    :cond_1
    const-string p0, "BatteryCautionSound"

    if-nez v0, :cond_2

    const-string v0, "RINGER_MODE_SILENT"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "unknown RINGER_MODE"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
