.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

.field public final mBiometricType:I

.field public final mContext:Landroid/content/Context;

.field public final mFailedAttempts:I

.field public mIsTalkbackUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLcom/android/systemui/widget/SystemUITextView;)V
    .locals 1

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object p6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p6, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedBiometricUnlockAttempts()I

    move-result p6

    iput p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getBiometricType()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricType:I

    const-string p0, "KeyguardBiometricsCountDownTimer( millisInFuture = "

    const-string v0, " , countDownInterval = "

    invoke-static {p0, p2, p3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , mFailedAttempts = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mBiometricType = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardBiometricsCountDownTimer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    const-string v0, "KeyguardBiometricsCountDownTimer"

    const-string v1, "onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mIsTalkbackUpdated:Z

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricType:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/16 v1, 0x100

    if-eq p2, v1, :cond_0

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f110009

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f11000a

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f11000b

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v1, " "

    invoke-static {p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f110014

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mIsTalkbackUpdated:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mIsTalkbackUpdated:Z

    goto :goto_1

    :cond_2
    const-string p0, "KeyguardBiometricsCountDownTimer"

    const-string p1, "onTick ( mBiometricMessageArea is null )"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public final stop()V
    .locals 2

    const-string v0, "KeyguardBiometricsCountDownTimer"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mIsTalkbackUpdated:Z

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
