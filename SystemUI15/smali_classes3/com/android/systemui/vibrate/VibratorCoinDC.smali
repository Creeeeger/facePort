.class public final Lcom/android/systemui/vibrate/VibratorCoinDC;
.super Lcom/android/systemui/vibrate/VibratorType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/vibrate/VibratorType;-><init>()V

    return-void
.end method


# virtual methods
.method public final playVibration(Lcom/android/systemui/vibrate/VibrationUtil;I)V
    .locals 1

    const/16 p2, 0x64

    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    const/4 v0, -0x1

    invoke-static {p2, v0, p1}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/vibrate/VibratorCoinDC;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public final setVibrator(Landroid/os/Vibrator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/vibrate/VibratorCoinDC;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method
