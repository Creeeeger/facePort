.class public final Lcom/android/systemui/statusbar/VibratorHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/VibratorHelper;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/os/Vibrator;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/VibratorHelper;-><init>(Landroid/os/Vibrator;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Vibrator;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda2;-><init>(Landroid/os/Vibrator;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final hasVibrator()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSupportDCMotorHapticFeedback()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_DC_MOTOR_HAPTIC_FEEDBACK:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final vibrate(Landroid/os/VibrationEffect;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/VibrationEffect;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final vibrateButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method public final vibrateGesture()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isGestureVibrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->isSupportDCMotorHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_1
    return-void
.end method
