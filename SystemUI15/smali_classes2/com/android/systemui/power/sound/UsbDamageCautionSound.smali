.class public final Lcom/android/systemui/power/sound/UsbDamageCautionSound;
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
    .locals 2

    iget v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mRingerMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mRingerMode:I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getAudioAttribute()Landroid/media/AudioAttributes;
    .locals 1

    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x7

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

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playSound(I)V

    const/16 v0, 0x1770

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/power/sound/PowerUiSound;->playVibration(IILandroid/os/VibrationEffect$SemMagnitudeType;)V

    :cond_0
    return-void
.end method
